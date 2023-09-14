class AppApi {
  static const String mirrorSizeBaseUrl = 'https://api.mysize.mirrorsize.com/api/';
  static const String initializeUserEndPoint = 'ms_initialize_user';
  static const String measurementProccessEndPoint = 'ms_measurement_proces';
  static const String appBackEndUrl = 'https://appbackend.appgain.io/';
  static const String canCanAccountId = '63187ffbd47c59001284c5b0/';
  static const String canCanSubDomain = 'cancan';
  static const String customProductEndPoint = '/classes/CustomProducts';
  static const String getMaterialEndPoint = '/classes/Material';
  static const String getPrefrencesEndPoint = '/classes/Prefrences';
  static const String getBodyMeasurementEndPoint = '/classes/BodyMeasurement';
  static const String customProductBaseUrl = '$appBackEndUrl$canCanAccountId$canCanSubDomain$customProductEndPoint';
  static const String getMaterialBaseUrl = '$appBackEndUrl$canCanAccountId$canCanSubDomain$getMaterialEndPoint';
  static const String getPrefrencesBaseUrl = '$appBackEndUrl$canCanAccountId$canCanSubDomain$getPrefrencesEndPoint';
  static const String getBodyMeasurementBaseUrl = '$appBackEndUrl$canCanAccountId$canCanSubDomain$getBodyMeasurementEndPoint';
  static const String xParseMasterKey = 'X-Parse-Master-Key';
  static const String xParseMasterKeyValue = 'MASTER-5d311f042e931aebac9b75bc1ca284e9cb7c997fb1df47209e31dc4079df8eb2';
  static const String xParseAppIdKey = 'X-Parse-Application-Id';
  static const String xParseAppIdValue = 'cancan';
  static const String uploadBodyMeasurementBaseUrl = '$appBackEndUrl$canCanAccountId$canCanSubDomain$getBodyMeasurementEndPoint';
  static const String uploadBodyMeasurementToMirrorSizeBaseUrl = 'https://api.mysize.mirrorsize.com/api/ms_getRecommendation';

}
