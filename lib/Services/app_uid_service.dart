import 'package:uuid/uuid.dart';

class AppUidService{
  final _uid = const Uuid();

  String timeUid(){
    return _uid.v1();
  }
}