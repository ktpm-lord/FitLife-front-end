// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../clean_architectures/domain/usecase/setting/setting_usecase.dart'
    as _i19;
import '../../mvvm/data/remote/auth/auth_api.dart' as _i24;
import '../../mvvm/data/remote/plan/plan_api.dart' as _i15;
import '../../mvvm/repo/auth_repositories.dart' as _i3;
import '../../mvvm/repo/plan_repositories.dart' as _i17;
import '../../mvvm/repo/repo_impl/auth_repositories_impl.dart' as _i4;
import '../../mvvm/repo/repo_impl/plan_repositories_impl.dart' as _i18;
import '../../mvvm/ui/auth/view_model/sign_in/sign_in_view_model.dart' as _i20;
import '../../mvvm/ui/auth/view_model/sign_up/sign_up_view_model.dart' as _i21;
import '../../mvvm/ui/calendar/view_model/calendar_view_model.dart' as _i5;
import '../../mvvm/ui/chat_bot/view_model/chat_bot_view_model.dart' as _i6;
import '../../mvvm/ui/dashboard/view_model/dashboard_view_model.dart' as _i8;
import '../../mvvm/ui/execise_detail/view_model/exercise_detail_view_model.dart'
    as _i10;
import '../../mvvm/ui/fit_overview/view_model/fit_overview_view_model.dart'
    as _i11;
import '../../mvvm/ui/notification/view_model/notification_view_model.dart'
    as _i13;
import '../../mvvm/ui/overview/view_model/overview_view_model.dart' as _i14;
import '../../mvvm/ui/plan_overview/view_model/plan_overview_view_model.dart'
    as _i16;
import '../../mvvm/ui/splash/view_model/splash_view_model.dart' as _i22;
import '../../mvvm/ui/wo_trac/view_model/wo_trac_view_model.dart' as _i23;
import '../components/layout/setting_layout/controller/setting_bloc.dart'
    as _i25;
import '../services/cloundinary_service.dart' as _i7;
import '../services/image_pic_service.dart' as _i12;
import 'modules/data_source_module.dart' as _i26;

const String _prod = 'prod';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataSourceModule = _$DataSourceModule();
  gh.factory<_i3.AuthRepositories>(() => _i4.AuthRepositoriesImpl());
  gh.factory<_i5.CalendarViewModel>(() => _i5.CalendarViewModel());
  gh.factory<_i6.ChatBotViewModel>(() => _i6.ChatBotViewModel());
  gh.factory<_i7.CloundinaryService>(() => _i7.CloundinaryService());
  gh.factory<_i8.DashboardViewModel>(() => _i8.DashboardViewModel(gh<int>()));
  gh.factory<_i9.Dio>(
    () => dataSourceModule.dioProd(),
    registerFor: {_prod},
  );
  gh.factory<_i10.ExerciseDetailViewModel>(
      () => _i10.ExerciseDetailViewModel());
  gh.factory<_i11.FitOverViewViewModel>(() => _i11.FitOverViewViewModel());
  gh.factory<_i12.ImagePicService>(() => _i12.ImagePicService());
  gh.factory<_i13.NotificationViewModel>(
      () => _i13.NotificationViewModel(gh<_i13.NotificationState>()));
  gh.factory<_i14.OverviewViewModel>(() => _i14.OverviewViewModel());
  gh.factory<_i15.PlanApi>(() => _i15.PlanApi(gh<_i9.Dio>()));
  gh.factory<_i16.PlanOverViewViewModel>(() => _i16.PlanOverViewViewModel());
  gh.factory<_i17.PlanRepositories>(
      () => _i18.PlanRepositoriesImpl(gh<_i15.PlanApi>()));
  gh.factory<_i19.SettingUseCase>(() => _i19.SettingUseCase());
  gh.factory<_i20.SignInViewModel>(() => _i20.SignInViewModel());
  gh.factory<_i21.SignUpViewModel>(() => _i21.SignUpViewModel());
  gh.factory<_i22.SplashViewModel>(() => _i22.SplashViewModel());
  gh.factory<_i23.WooTrackViewModel>(() => _i23.WooTrackViewModel());
  gh.factory<_i24.AuthApi>(() => _i24.AuthApi(gh<_i9.Dio>()));
  gh.factory<_i25.SettingBloc>(
      () => _i25.SettingBloc(gh<_i19.SettingUseCase>()));
  return getIt;
}

class _$DataSourceModule extends _i26.DataSourceModule {}
