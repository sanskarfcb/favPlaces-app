//import 'package:uuid/data.dart';
import 'package:uuid/uuid.dart';

const uuid =Uuid();
class place{

  place({required this.title}): id = uuid.v4();
  final String id;
  final String title;
}