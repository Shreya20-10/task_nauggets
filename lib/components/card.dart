import 'package:flutter/material.dart';
import 'package:taks_nauggets/screens/my_profile.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 180,
        width: 280,
        //margin: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.green.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(200.0,8.0,8.0,8.0),
              child: Container(
                height: 30.0,
                width: 55.0,
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0,8.0,8.0,8.0),
                  child: Text(
                    "CARD",
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              ),
            ),
            // Stack(
            //   children: [
            //     Positioned(
            //         top: 10.0,
            //         right: 10.0,
            //         child: Container(
            //           height: 15.0,
            //           width: 30.0,
            //           decoration:   BoxDecoration(
            //             color: Colors.green.shade900,
            //             borderRadius: BorderRadius.circular(5.0),
            //           ),
            //           child: Text(
            //             "CARD",
            //             style: TextStyle(color: Colors.white,fontSize: 10.0),
            //           ),
            //         )
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 15.0),
              child: Text(
                "3567 55437 9080 5600",
                style: TextStyle(color: Colors.white, fontSize: 22.0,fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 150.0),
              child: Text(
                "Card number",
                style: TextStyle(color: Colors.white, fontSize: 17.0),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 80.0),
              child: Text(
                "Tommy Berns     05/20",
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 90.0),
              child: Text("card holder              valid",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
