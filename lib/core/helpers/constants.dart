import 'package:fodaapp/features/Login/data/models/login_response_body.dart';

bool isLoggedIn = false;
late LoginResponseBody loginResponseBodySaved;

class SharedPrefKeys {
  static const String userToken = 'userToken';
}
