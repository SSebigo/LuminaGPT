// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i3;
import 'package:lumina_gpt/application/home/home_bloc.dart' as _i8;
import 'package:lumina_gpt/domain/sessions/i_sessions_repository.dart' as _i4;
import 'package:lumina_gpt/domain/settings/i_settings_repository.dart' as _i6;
import 'package:lumina_gpt/infrastructure/core/isar_injectable_module.dart'
    as _i9;
import 'package:lumina_gpt/infrastructure/sessions/sessions_repository.dart'
    as _i5;
import 'package:lumina_gpt/infrastructure/settings/settings_repository.dart'
    as _i7;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final iIsarInjectableModule = _$IIsarInjectableModule();
    await gh.lazySingletonAsync<_i3.Isar>(
      () => iIsarInjectableModule.isar,
      registerFor: {
        _dev,
        _prod,
      },
      preResolve: true,
    );
    gh.lazySingleton<_i4.ISessionsRepository>(
      () => _i5.SessionsRepository(gh<_i3.Isar>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i6.ISettingsRepository>(
      () => _i7.SettingsRepository(gh<_i3.Isar>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i8.HomeBloc>(
      () => _i8.HomeBloc(
        gh<_i6.ISettingsRepository>(),
        gh<_i4.ISessionsRepository>(),
      ),
      registerFor: {
        _dev,
        _prod,
      },
    );
    return this;
  }
}

class _$IIsarInjectableModule extends _i9.IIsarInjectableModule {}
