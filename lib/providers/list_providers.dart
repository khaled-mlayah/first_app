
 // ignore_for_file: avoid_print
 
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
 import 'package:first_app/models/post.dart';
import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier{
 List<Post> list =[];
 bool isLoading = false;
 Future getList()async{
  isLoading = true;
  var url =
  Uri.parse('https://api-app-a161b-default-rtdb.firebaseio.com/posts.json');
   var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    List<Post> post =[];
     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
     jsonResponse.forEach((Key , value)  {
     Post element =Post.fromJson(value);
     post.add(element);
  });  
  isLoading = false;
  list =post;
    
   
  } else {
    isLoading = false;
    print('Request failed with status: ${response.statusCode}.');
  }
  notifyListeners();
}
onPressLike(int index){
  list[index].isLiked =!list[index].isLiked!;
  notifyListeners();
}
 }

