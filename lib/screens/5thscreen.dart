import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:real_estate/widgets/random_Widgets.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//  appBar: AppBar(
//           backgroundColor: Colors.white38,
//         ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 15,),
                  ListTile(
                    subtitle: Text('Location'),
                    title: Text('Los Angeles, CA'),
                    trailing: CircleAvatar(
                      radius: 40,
                backgroundImage:  NetworkImage(
                'data:image/jpeg;base64,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'),
            // : NetworkImage(imageUrl),
              ),
                  ),
                  SizedBox(height: 10,),
                  Text('Discover Best Suitable Property',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30),),


                  BNavBar()
                
                ],
                
                
                
                
                ),
          ))


    );
  }
}
