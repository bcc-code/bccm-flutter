const apiEnvUrls = <String, String>{
  EnvironmentOverride.dev: 'https://api.dev.brunstad.tv/query',
  EnvironmentOverride.sta: 'https://api.sta.brunstad.tv/query',
  EnvironmentOverride.prod: 'https://ce65-2001-4641-399e-0-29b3-3851-f661-1bdc.ngrok-free.app/query',
};

class EnvironmentOverride {
  EnvironmentOverride._();
  static const dev = 'dev';
  static const sta = 'sta';
  static const prod = 'prod';
}
