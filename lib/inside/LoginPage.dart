import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(  // logo
              padding: EdgeInsets.only(top: 100),
              height: 300,
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/image/Logo.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 50.0,),
            Container( // field
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: ('Phone Number')
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container( // Button
              padding: const EdgeInsets.all(25) ,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text("Submit", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
               fontSize: 16,
                ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
