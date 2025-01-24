// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sqflite/sqflite.dart' as _i779;

import '../../data/datasources/local/player_local_datasource.dart' as _i1072;
import '../../data/datasources/remote/player_remote_datasource.dart' as _i580;
import '../../data/repositories/player_repository_impl.dart' as _i370;
import '../../domain/repositories/player_repository.dart' as _i857;
import '../../presentation/bloc/performance_bloc/performance_bloc.dart'
    as _i688;
import '../../presentation/bloc/player_bloc/player_bloc.dart' as _i808;
import '../error/error_handler.dart' as _i308;
import '../network/network_info.dart' as _i932;
import '../services/image_uploader.dart' as _i947;
import 'app_module.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i779.Database>(
      () => appModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i308.ErrorHandler>(() => _i308.ErrorHandler());
    gh.lazySingleton<_i1072.PlayerLocalDataSource>(
        () => _i1072.PlayerLocalDataSource());
    gh.lazySingleton<_i974.FirebaseFirestore>(() => appModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(() => appModule.storage);
    gh.lazySingleton<_i895.Connectivity>(() => appModule.connectivity);
    gh.factory<_i947.ImageUploader>(
        () => _i947.ImageUploader(gh<_i457.FirebaseStorage>()));
    gh.lazySingleton<_i932.NetworkInfo>(
        () => _i932.NetworkInfoImpl(gh<_i895.Connectivity>()));
    gh.lazySingleton<_i580.PlayerRemoteDataSource>(
        () => _i580.PlayerRemoteDataSource(
              gh<_i974.FirebaseFirestore>(),
              gh<_i457.FirebaseStorage>(),
            ));
    gh.lazySingleton<_i857.PlayerRepository>(() => _i370.PlayerRepositoryImpl(
          gh<_i1072.PlayerLocalDataSource>(),
          gh<_i580.PlayerRemoteDataSource>(),
          gh<_i895.Connectivity>(),
        ));
    gh.factory<_i808.PlayerBloc>(() => _i808.PlayerBloc(
          gh<_i857.PlayerRepository>(),
          gh<_i932.NetworkInfo>(),
          gh<_i947.ImageUploader>(),
        ));
    gh.factory<_i688.PerformanceBloc>(() => _i688.PerformanceBloc(
          gh<_i857.PlayerRepository>(),
          gh<_i932.NetworkInfo>(),
          gh<_i947.ImageUploader>(),
        ));
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
