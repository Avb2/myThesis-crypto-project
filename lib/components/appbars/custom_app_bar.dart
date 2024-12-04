import 'dart:js_interop';

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  CustomAppBarState createState() => CustomAppBarState();
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}



class CustomAppBarState extends State<CustomAppBar> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 1,
      leading: IconButton.outlined(
          onPressed: (){
            if (ModalRoute.of(context)!.settings.name != "/home") {
              Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> route) => false);
            } 
          },
          icon: Icon(Icons.home)
          ),
      title: Title(color: Colors.blue, child: Text("myThesis")),
      actions: [
       OutlinedButton(
        child: Text("Create Thesis"),
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Create Thesis'),
               content: Column(
                children: [
                  TextField(
                   
                    
                  ),

                  OutlinedButton(onPressed: 
                  (){
                  ScaffoldMessenger.of(context)
                  .hideCurrentSnackBar();
                  }, 
                  child: Text("Enter")
                  )
                ],
               )
               )
            );
        }
        ),
       IconButton.outlined(
        onPressed: (){
          if (ModalRoute.of(context)!.settings.name != "/profile"){
            Navigator.pushNamedAndRemoveUntil(context, "/profile", (Route<dynamic> route) => false, arguments: {"credPoints": 121});
          }
        }, 
        icon: Icon(Icons.person)
        ),
        IconButton.outlined(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton.outlined(onPressed: (){}, icon: Icon(Icons.logout))
      ],
    );
  }
  
}