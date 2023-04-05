import 'package:flutter/material.dart';
import 'package:taks_nauggets/components/card.dart';
import 'package:taks_nauggets/screens/transactions.dart';

import '../components/bottom_navigation_bar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actionsIconTheme:
              IconThemeData(size: 30.0, color: Colors.white, opacity: 10.0),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  size: 26.0,
                ),
              ),
            ),
          ]),

      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/images/profile.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      "Tommy Berns",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    Row(
                      children: [
                        Text(
                          "Los Angeles",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //SizedBox(height: 5.0,),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Row(
              children: [
                Text(
                  "Balance",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  "\$567,57",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/images/add.png",
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    //backgroundImage:AssetImage("assets/images/search.png",) ,
                    child: Image.asset(
                      "assets/images/search.png",
                      height: 25.0,
                      width: 25.0,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    // backgroundImage:Image.asset("assets/images/graph.png",) ,

                    child: Image.asset(
                      "assets/images/graph.png",
                      height: 25.0,
                      width: 25.0,
                    ),
                  ),
                ),
              ],
            ),
          ),

          MyCard(),

          SizedBox(
            height: 15.0,
          ),

          new ListTile(
            title: new Text(
              "My cards",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            trailing: new Icon(Icons.arrow_forward_ios),
            contentPadding: EdgeInsets.only(left: 20.0, right: 20.0),
            onTap: () {},
          ),

          Divider(
            indent: 20.0,
            endIndent: 20.0,
          ),

          new ListTile(
            title: new Text(
              "Transactions",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            trailing: new Icon(Icons.arrow_forward_ios),
            contentPadding: EdgeInsets.only(left: 20.0, right: 20.0),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyTransaction()));
            },
          ),

          Divider(
            indent: 20.0,
            endIndent: 20.0,
          ),
        ]),
      ),
      //bottomNavigationBar: BottomBar(),
    );
  }
}
