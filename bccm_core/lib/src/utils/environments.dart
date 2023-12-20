const apiEnvUrls = <String, String>{
  EnvironmentOverride.dev: 'https://api.dev.brunstad.tv/query',
  EnvironmentOverride.sta: 'https://api.sta.brunstad.tv/query',
  EnvironmentOverride.prod: 'https://api.brunstad.tv/query',
};

class EnvironmentOverride {
  EnvironmentOverride._();
  static const dev = 'dev';
  static const sta = 'sta';
  static const prod = 'prod';
}
