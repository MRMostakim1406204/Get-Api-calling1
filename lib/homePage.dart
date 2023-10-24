import 'package:flutter/material.dart';
import 'package:get_api_calling_using_flutter_provider/provider/usur_provider.dart';
import 'package:get_api_calling_using_flutter_provider/provider/usur_provider.dart';
import 'package:get_api_calling_using_flutter_provider/provider/usur_provider.dart';
import 'package:get_api_calling_using_flutter_provider/provider/usur_provider.dart';
import 'package:provider/provider.dart';

import 'provider/usur_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UsurProvider>().fetchPost();
  }

  @override
  Widget build(BuildContext context) {

   final usurProvider = Provider.of<UsurProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Api Calling"),
        centerTitle: true,
      ),
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context,itemIndex){
          return ListTile(
            leading: Text(usurProvider.allUserList[itemIndex].id.toString()),
            title: Text(usurProvider.allUserList[itemIndex].name.toString()),
            subtitle: Text(usurProvider.allUserList[itemIndex].email.toString()),
          );
        },
        itemCount: usurProvider.allUserList.length,)),
    );
  }
}