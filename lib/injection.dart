import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/injection.config.dart';

/// @nodoc
final getIt = GetIt.instance;

/// @nodoc
@InjectableInit()
GetIt configureInjection(String env) => getIt.init(environment: env);
