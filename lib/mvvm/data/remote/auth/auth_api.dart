import 'package:dio/dio.dart';
import 'package:fit_life/mvvm/object/entity/auth_response.dart';
import 'package:fit_life/mvvm/object/entity/sign_in_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api.g.dart';

@injectable
@RestApi()
abstract class AuthApi {
  static const String branch = "";
  static const String loginApi = "/auth/login";
  static const String refreshTokenApi = "$branch/auth/refreshToken";
  static const String registerApi = "$branch/auth/register";
  static const String logoutApi = "$branch/auth/logout";
  static const String resetPasswordApi = "/user/forgotPassword";
  static const String googleSignInApi = "/auth/google";
  static const String verifyAccountApi = "/auth/verifyAccount";

  @factoryMethod
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(loginApi)
  Future<HttpResponse<AuthenticateResponse?>> login(
      {@Body() required Map<String, dynamic> body});

  @POST(registerApi)
  Future<HttpResponse<SignInResponse?>> register(
      {@Body() required Map<String, dynamic> body});

  @POST(logoutApi)
  Future<HttpResponse<AuthenticateResponse>> logout();

  @POST(refreshTokenApi)
  Future<HttpResponse<AuthenticateResponse>> refreshToken();

  @POST(resetPasswordApi)
  Future<HttpResponse> resetPassword({
    @Body() required Map<String, dynamic> body,
  });

  @POST(googleSignInApi)
  Future<HttpResponse> googleSignIn({
    @Body() required Map<String, dynamic> body,
  });

  @GET("$verifyAccountApi?token={value}")
  Future<HttpResponse> verifyEmailAccount(@Path('value') String token);
}
