import 'package:injectable/injectable.dart';

mixin Requirements {
  String getBaseUrl();
}

@Singleton(as: Requirements, env: ['dev'])
class DevRequirements implements Requirements {
  @override
  String getBaseUrl() => "https://content.guardianapis.com/";
}

@Singleton(as: Requirements, env: ['prod'])
class ProdRequirements implements Requirements {
  @override
  String getBaseUrl() => "https://content.guardianapis.com/";
}
