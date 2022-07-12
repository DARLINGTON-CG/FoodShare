import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'application/theme/theme_service.dart';
import 'firebase_options.dart';
import 'injector.dart';
import 'presentation/core/app_widget.dart';

//{
//   "type": "service_account",
//   "project_id": "foodshare-cc295",
//   "private_key_id": "252e52131a4a3befb791788bebaaabbbb981d10d",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCh+pd2fVQmKSOs\nvibVXb3hC8Qmxz5WsJfvfTa3gKfl809T/a69g/MqKD8BhfpKhi+MnXJ42SotsMrC\nRvdnmaAdKaqs5ZwQSF3vNDrFSEDo5mUQYGbORs0e8Ll15eFMlfg3BWnVkcS75CN3\nTpvfEfWxkyaHfapU07rjmAY1qlcxAObfvYsK+4EqIihrlCbHGofpLxqhEAROW6JX\n4oH1aiJc3qB9YuVpd6+U++chk+HMVKvFqhZELMMmb/S5fEeo8g0optuqqAwBCjkt\neJPnrpWZ/dWmmDEcrWyGN/bXFfBHhFujCGIqTDGcXfWppcbXzqDgjE+hiQHIBCUX\nXofbjIg7AgMBAAECggEACh4KZuLGJkoMieYoq8wap5tiCaAJU0Xdf559E/Iryo+r\nhU4Do5/ByQDRiqlRLGV8Q9azxzudSFRSHddr7aMpXpjzKbB/0n6Kq33CK/9q2oFF\nj8PNuBWxCz0zAFu2+l8lrV4fsbDUrn29/15AGytWgtxznCPrxzegZUXiIWj94Dga\nQ1UTkVQ1t+Vtrw5ohbfr4lF/kWOE8ZEmyEvUdmdnK8pbBdmWEErxfmhi1LOr0Khm\nK9Po4nvnYUDhhPIXx9ox9hmRBiL6wjZt0Jd8QUA66+E80DOX/nR/0xP2DI1+WKyb\nxLCQlaylhMu9hxPRqwEmd0PGusrgsbA4Nm7bK/Cs5QKBgQDLsX7bONoPTEtoHc9f\n0lHfFTWQpySE1/LxqDKJPkVeS0P2QGQWmkcv4at1oAjD6q7/KC4zSTIbX48ojpjK\nKAjJRDGdOaSy1oxYPtaA5wkRUkWEZekIkACgVe26KOy07VzZHujUqe0oyzcSprod\nYt8MPFlo05GFWJGb7RvMSQIHbwKBgQDLktj5hylKVfcsFtq5IJhnpfQ692G0nVVA\nDu0OHr8a/BbgojTgo+mgCsAHH4PEdml98o/itKMMRBAvNSNL2geTnDGB4EyuTLg5\nnChicUdaz3r8lG27Ms7dCa+ifdkAbkNfye0hO6CX+HDhZZWIEosdau4UI/Mz+xG7\nn7P7l83F9QKBgAhHpshyfyqwB0CsNYnHmtxemFbQ9IMR5CY+mA9MILW8iX6xD2B7\n1Pj1S2r0nmaYW5SzpW0gRJEoSUF0ynEtP24u/3VMqo06e2n64+1JduzlUz4Whmp6\nsAvUcl1m3HheTa/lucErRyCpYgu4C0i2hCqTKW9BamDpQMH92WtsbFCxAoGAAtxg\ncjlFCkdk/tifYESl/6bkZMO/OsOPRCQxjqY990odpDCDX7jN+rLL+g2mU2d6mguD\nnCL/u5dlRtSPV2yL+LYUOAgH69cmK6EXLDL9VrhduRj45c2T/KU7M6RjHU9vYPQ8\ngeANpLUYGQLNdCkWjWZITD4pF8zqdeGLrPh4KtUCgYBHSIL8/ZubVHttJQO90wwg\n9pUxY+aK+TWZZJkH1xxnr7eTfrv4fr8P5yauy6qsr75+pbhL5H5EJ4h7HB0ggCyq\nFfSw2rvP1jjyJO7/lD1t3bJ4JyGYdelhBPRxH0foqltycM7X1ge3JU4CE9p4xBBI\nVCCfCYYxTBiNReQ10tpREg==\n-----END PRIVATE KEY-----\n",
//   "client_email": "firebase-adminsdk-wufx8@foodshare-cc295.iam.gserviceaccount.com",
//   "client_id": "109100839717444622306",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-wufx8%40foodshare-cc295.iam.gserviceaccount.com"
// }
//


//7e43eac17c0263b61b4d7ad602522e8f0ef87a3df34e38fcfb66824517c2c7ad94a438966d375f62 --- Secret Key
//Acess key -- 1C84808930BC89DD6DF1

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  FirebaseMessaging.instance;
 
}

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  await Get.putAsync(() => ThemeService().init());

   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const AppWidget());
}
