import 'package:injectable/injectable.dart';

mixin Requirements {
  String getBaseUrl();
}

@LazySingleton(as: Requirements, env: ['dev'])
class DevRequirements implements Requirements {
  @override
  String getBaseUrl() => "https://content.guardianapis.com/";
}

@LazySingleton(as: Requirements, env: ['prod'])
class ProdRequirements implements Requirements {
  @override
  String getBaseUrl() => "https://content.guardianapis.com/";
}
