


import 'package:flutter/material.dart';

import 'headerdrawer.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container =null;
    } else if (currentPage == DrawerSections.contacts) {
      container = null;
    } else if (currentPage == DrawerSections.events) {
      container = null;
    } else if (currentPage == DrawerSections.notes) {
      container = null;
    } else if (currentPage == DrawerSections.settings) {
      container = null;
    } else if (currentPage == DrawerSections.notifications) {
      container = null;
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = null;
    } else if (currentPage == DrawerSections.send_feedback) {
      container = null;
    }

    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: const Text("Card"),
      ),
      
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
               MyHeaderDrawer(),
              MyDrawerList(),



            ],
          ),
        ),
      ),

  body: SafeArea(
child:ListView(

  children: [
        Container(
        
                  width: deviceSize.width,
        height: deviceSize.height/2,
                  child: Card(
                  child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  child:Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     
                        Container(
                          width: 200,
        height: 200 ,
                          child: Card(
                            
                            child: ListTile(
                              
                              title: Center(child: Text("card 1")),
                            ),
                            elevation: 8,
                            shadowColor: Colors.blue,
                            margin: EdgeInsets.all(20),
                          ),
                        ),
//SizedBox(width: 40,),
                        Container(
                          width: 200,
        height: 200 ,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text("card 2")),
                            ),
                            elevation: 8,
                            shadowColor: Colors.blue,
                            margin: EdgeInsets.all(20),
                          ),
                        ),
//SizedBox(width: 40,),
                        Container(
                          width: 200,
        height: 200 ,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text("card 3")),
                            ),
                            elevation: 8,
                            shadowColor: Colors.blue,
                            margin: EdgeInsets.all(20),
                          ),
                        ),

                           Container(
                          width: 200,
        height:200 ,
                          child: Card(
                            child: ListTile(
                              title: Center(child: Text("card 4")),
                            ),
                            elevation: 8,
                            shadowColor: Colors.blue,
                            margin: EdgeInsets.all(20),
                          ),
                        ),
                        
        //                  Container(
        //                   width: deviceSize.width/4,
        // height: deviceSize.height/2 ,
        //                   child: Card(
        //                     child: ListTile(
        //                       title: Center(child: Text("card 5")),
        //                     ),
        //                     elevation: 8,
        //                     shadowColor: Colors.blue,
        //                     margin: EdgeInsets.all(20),
        //                   ),
        //                 ),






                   ],

                   
                  ),),
                  elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(20), 
              ),
        ),



              Container(
                 width: deviceSize.width,
        height: deviceSize.height / 2,
                  child: Card(
                    child: ListTile(
                      title: Text("colum 2"),
                    ),
                    elevation: 8,
                    shadowColor: Colors.orange,
                    margin: EdgeInsets.all(20),
                  ),
              ),
  ],
)
      )  );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
