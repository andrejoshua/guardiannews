import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:guardiannews/data/api/news.dart';
import 'package:guardiannews/data/req.dart';
import 'package:guardiannews/domain/model/news.dart';
import 'package:guardiannews/domain/repo/news.dart';
import 'package:guardiannews/domain/usecase/get_news.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'news.mocks.dart';

final GetIt getIt = GetIt.instance;

@GenerateNiceMocks([MockSpec<Requirements>(), MockSpec<NewsRepository>()])
void main() {
  group('News domain unit test', () {
    // Prepare mock repository
    // Given page 1, offset 20, then return a list of news with one item.
    // Given page 101, offset 20, then return exception
    setUpAll(() {
      final repository = MockNewsRepository();
      // Sets up when page 1 is requested, return a list of news with one item.
      when(repository.getNews(page: 1, offset: 20))
          .thenAnswer((_) => Future.value([
                News("Sample headline", "general", "www.google.com",
                    DateTime.now()),
              ]));
      // Sets up when page 101 is requested, return error
      when(repository.getNews(page: 101, offset: 20))
          .thenThrow(Exception("Page over 100"));

      getIt.registerFactory<NewsRepository>(() => repository);
      getIt.registerFactory<GetNewsUseCase>(
          () => GetNewsUseCase(getIt.get<NewsRepository>()));
    });

    test(
        'When page 1, offset 20 is requested, return a list of news with one item.',
        () async {
      final getNews = getIt.get<GetNewsUseCase>();
      final future = getNews.execute(page: 1, offset: 20).then((value) {
        expect(value.length, greaterThanOrEqualTo(1));
      });
      expect(future, completes);
    });

    // When
    test('When page 101, offset 20 is requested, return exception.', () async {
      final getNews = getIt.get<GetNewsUseCase>();

      expect(() => getNews.execute(page: 101, offset: 20),
          throwsA(isA<Exception>()));
    });
  });

  group('News integration test', () {
    // Prepare mock web server
    // Given search endpoint is requested with page equals 1 and page size equals 20, then return a json object from test_resources/search.json
    setUpAll(() async {
      final requirements = MockRequirements();
      when(requirements.getBaseUrl())
          .thenAnswer((_) => "https://content.guardianapis.com");
      getIt.registerSingleton<Requirements>(requirements);

      final options = new BaseOptions(
        baseUrl: requirements.getBaseUrl(),
        contentType: "application/json; charset=utf-8",
        validateStatus: (status) =>
            status != null && (status >= 200 && status < 300),
        receiveTimeout: Duration(milliseconds: 3000),
        connectTimeout: Duration(milliseconds: 5000),
        queryParameters: {
          "api-key": "test",
        },
      );

      final dio = Dio(options);
      final dioAdapter = DioAdapter(dio: dio);

      final file = File('test_resources/search.json');
      final json = jsonDecode(await file.readAsString());

      dioAdapter.onGet(
        "/search",
        (request) => request.reply(200, json as Map<String, dynamic>,
            delay: Duration(milliseconds: 1000)),
        queryParameters: {
          "page-size": 20,
          "page": 1,
        },
      );

      getIt.registerFactory<Dio>(() => dio);
    });

    test(
        'When requesting API with page 1 and offset 20, return status ok, list of results with more than one item, and first title should contain word `war`',
        () async {
      final api = NewsApi();
      final result = await api.getNews(page: 1, offset: 20);

      expect(result, isNotNull);
      expect(result.response.status, "ok");
      expect(result.data.length, greaterThan(0));
      expect(result.data.first.webTitle, contains('war'));
    });
  });
}
