import 'package:app/Services/app_uid_service.dart';
import 'package:get_it/get_it.dart';

final GetIt injector = GetIt.instance;

class AppServiceRegister{
  static void injectServices(){
    print('injectServices()');
    injector.registerSingleton<AppUidService>(AppUidService());
  }
}