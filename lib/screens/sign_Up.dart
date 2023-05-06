import 'package:flutter/material.dart';
import 'package:real_estate/screens/sign_In.dart';
import 'package:real_estate/widgets/random_Widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: Text("Fill your profile"),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,

                children: [
              SizedBox(height: 30),
              Center(
                child: Stack(
                  children:[ Container(
                    child: Image.network('data:image/png;base64,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'),
                    width:200,
                     height: 150,
                  ),
                  Positioned(
                    top: 110,
                    left: 120 ,
                    child: Container(
                      child: Image.network('data:image/png;base64,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'),
                    //  child: IconButton(onPressed: (){}, icon: Icon(Icons.mode_edit_rounded)),
                       width: 35,
                       height: 35,),
                  )
                  ]
                ),),
                SizedBox(height: 10),

                txtfield("Name"),
                SizedBox(height: 10),
                txtfield('Nickname'),
                SizedBox(height: 10),
                txtfield('Date of Births', reqdsuffix: Icon(Icons.calendar_month_outlined)),
                SizedBox(height: 10),
                
                txtfield('Gender', reqdsuffix: Icon(Icons.arrow_drop_down)),
                                SizedBox(height: 20),
txtfield('Email', reqdsuffix: Icon(Icons.email_outlined)),
                SizedBox(height: 10),
txtfield('Password', reqdsuffix: Icon(Icons.lock)),

                Container(child: ElevatedButton( onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn_Screen()));
                },
                child: Text("Continue")),
                
                height: 30,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(500)
                ),)



            ])));
  }
}
