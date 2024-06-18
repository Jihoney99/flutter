import 'package:get_it/get_it.dart';
import 'package:prac_02/Config/dataConfigProvider.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<DataConfigure>(() => DataConfigure());
}
