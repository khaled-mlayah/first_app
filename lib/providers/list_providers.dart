 

 import 'package:first_app/models/post.dart';
import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier{
 List<Post> list =[];
 bool isLoading = false;
}
