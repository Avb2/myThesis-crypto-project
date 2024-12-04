


import 'package:flutter/material.dart';
import 'package:thesis_desktop_app/components/tabs/community_thesis_tab.dart';

import '../tabs/explore_community_tab.dart';



class HomeNavBar extends StatefulWidget implements PreferredSizeWidget {
  TabController tabController;

  HomeNavBar(this.tabController);

  @override
  HomeNavBarState createState() => HomeNavBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight  * 2);

}



class HomeNavBarState extends State<HomeNavBar>{


  @override
  Widget build(BuildContext context) {



    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      elevation: 1,
      bottom: TabBar(
        controller: widget.tabController,
        tabs: [
          ThesisTab(),
          ExploreTab()
        ]
        ),
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
                    Navigator.pop(context);
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