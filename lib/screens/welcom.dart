import 'package:flutter/material.dart';
import 'package:newtask8/screens/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/4.jfif")),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                },
                icon: Icon(Icons.arrow_forward,color: Color.fromARGB(255, 46, 23, 101),size: 40,)),
          ],
        ),
      ),
    );
  }
}
