const apiEnvUrls = <String, String>{
  EnvironmentOverride.dev: 'https://api.dev.brunstad.tv/query',
  EnvironmentOverride.sta: 'https://api.sta.brunstad.tv/query',
  EnvironmentOverride.prod: 'https://e27d-85-112-141-130.ngrok-free.app/query',
};

class EnvironmentOverride {
  EnvironmentOverride._();
  static const dev = 'dev';
  static const sta = 'sta';
  static const prod = 'prod';
}
