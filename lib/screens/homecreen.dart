import 'package:flutter/material.dart';
import 'package:real_estate/screens/sign_In.dart';
import 'package:real_estate/screens/sign_Up.dart';
import 'package:real_estate/widgets/random_Widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
    backgroundColor: Color.fromARGB(249, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

        

          children: [
            SizedBox(height: 30),
            Container(
              child: Image.asset('assets/3.png'),
              // width: 300,
              // height: 200,
            ),
            Center(
              child: Text(
                "Let's Find Your House",
                style: TextStyle(
                    // backgroundColor: Colors.blueGrey,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Container(
              width: 350,
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.facebook_rounded),
                        Text("Continue With Face Book"),
                      ],
                    )),
              ),
            ),

            // 2nd Button

            const SizedBox(
              height: 10,
            ),

            Container(
              width: 350,
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.apple_rounded),
                          Text("Continue With Apple"),
                        ],
                      ),
                    )),
              ),
            ),

            // 3rd Button

            const SizedBox(
              height: 10,
            ),

            Container(
              width: 350,
              color: Colors.white,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                       
                      Icon(Icons.report_gmailerrorred_rounded),
                        Text("Continue With Google"),
                      ],
                    )),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text("----------------OR----------------"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn_Screen()));
                },
                child: Text("Sign In With Password")),

            const SizedBox(height: 10),

            Text("Don't have an account?  "),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
