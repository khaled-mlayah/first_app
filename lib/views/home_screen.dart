import 'package:first_app/models/post.dart';
import 'package:first_app/widgets/item_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> list = [];
  @override
  void initState() {
    super.initState();
    list = [
      Post(
          title: "Post 1",
          description: "#post#1#description",
          image:
              "https://images.pexels.com/photos/1684149/pexels-photo-1684149.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          isLiked: false,
          avatarImage: "assets/avatar.jpg",
          name: "Name1"

          ),
      Post(
          title: "Post 2",
          description: "#post#2#description",
          image:
              "https://images.pexels.com/photos/296121/pexels-photo-296121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isLiked: false,
          avatarImage: "assets/avatar.jpg",
          name: "Name1"
          ),
      Post(
          title: "Post 3",
          description: "#post#3#description",
          image:
              "https://images.pexels.com/photos/6929348/pexels-photo-6929348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isLiked: false,
          avatarImage: "assets/avatar.jpg",
          name: "Name1"
          ),
      Post(
          title: "Post 4",
          description: "#post#4#description",
          image:
              "https://images.pexels.com/photos/3782139/pexels-photo-3782139.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          isLiked: false,
          avatarImage: "assets/avatar.jpg",
          name: "Name1"
          ),
      Post(
        title: "Post 5",
        description: "#post#5#description",
        avatarImage: "assets/avatar.jpg",
          name: "Name5"
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.red,
                  thickness: 2, // el5ochn mta3 divideer
                );
              },
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ItemList(
                  post: list[index],
                  onPressed: () {
                    list[index].isLiked = !list[index].isLiked!;
                    setState(() {
                      list = list;
                    });
                  },
                );
              })),
    );
  }
}
