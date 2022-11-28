import 'package:first_app/providers/list_providers.dart';
import 'package:first_app/widgets/item_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  void initState() {
    Provider.of<ListProvider>(context, listen: false).getList();
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Consumer<ListProvider>(
         builder: ((context, ref, child)  {
          return ref.isLoading
            ? const CupertinoActivityIndicator()
            :
             ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.red,
                  thickness: 2, // el5ochn mta3 divideer
                );
              },
              itemCount: ref.list.length,
              itemBuilder: (context, index) {
                return ItemList(
                  post: ref.list[index],
                  onPressed: () {
                    Provider.of<ListProvider>(context ,listen:false).onPressLike(index);
                   
                  },
                   
                );
               
              });
   } ),
    ));
  }
}
