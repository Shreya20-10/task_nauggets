import 'package:flutter/material.dart';
import 'package:taks_nauggets/components/progress_indicator.dart';
import '../components/bottom_navigation_bar.dart';

class MyTransaction extends StatelessWidget {
  const MyTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomBar(),
      appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          actionsIconTheme:
              const IconThemeData(size: 30.0, color: Colors.white, opacity: 10.0),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
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
                const CircleAvatar(
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

          SizedBox(height: 20.0,),

          MyProgress(),

          SizedBox(height: 35.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.green,
                      ),

                      SizedBox(width: 8.0,),

                      Text(
                        "INCOMES",
                      ),
                    ],
                  ),

                  SizedBox(height: 8.0,),

                  Text(
                    "309",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),

              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.green,
                      ),

                      SizedBox(width: 8.0,),

                      Text(
                        "EXPENSES",
                      ),
                    ],
                  ),

                  SizedBox(height: 8.0,),

                  Text(
                    "234",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
            ],
          ),


        ]),
      ),
    );
  }
}
