import 'package:flutter/material.dart';

class MyProgress extends StatelessWidget {
  const MyProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: CircularProgressIndicator(
            value: 0.75,
            color: Colors.grey.shade400,
            backgroundColor: Colors.grey.shade100,
          ),
        ),
        Positioned(
          left: 25.0,
          top: 25.0,
          child: SizedBox(
            height: 150,
            width: 150,
            child: CircularProgressIndicator(
              value: 0.6,
              color: Colors.grey.shade400,
              backgroundColor: Colors.grey.shade100,
            ),
          ),
        ),
        Positioned(
          left: 140.0,
          top: 10.0,
          child: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.grey.shade100,
            child: CircleAvatar(
              radius: 23.0,
              backgroundColor: Colors.white,
              child: Image.asset(
                "assets/images/chart.png",
                height: 21.0,
                width: 21.0,
              ),
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          left: 55.0,
          child: Column(
            children: [
              Text(
                "Balance",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0),
              ),
              SizedBox(
                height: 10.0,
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
      ],
    );
  }
}
