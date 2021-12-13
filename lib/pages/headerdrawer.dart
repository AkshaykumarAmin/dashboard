import 'package:flutter/material.dart';
class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
           decoration: const BoxDecoration(
             shape: BoxShape.circle,
             image: DecorationImage(
                image:NetworkImage("https://png.pngtree.com/png-vector/20190710/ourmid/pngtree-user-vector-avatar-png-image_1541962.jpg")
              
             ),
           ),
          //         child: CircleAvatar(
          //   backgroundImage: NetworkImage(
          //       ""),
          //   radius: 100,
          // ),


          ),
          Text(
            "Akshaykumar_Amin",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "https://github.com/AkshaykumarAmin",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}