import 'package:dio/dio.dart';
import 'package:fodaapp/core/networking/api_constant.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  
  // @POST(ApiConstant.login)
  // Future<LoginResponse> login(
  //   @Body() LoginReqeustBody loginRequestBody,
  // );

  // @POST(ApiConstant.signup)
  // Future<SignUpResponse> signup(
  //   @Body() SignUpReqeustBody signUpReqeustBody,
  // );
}