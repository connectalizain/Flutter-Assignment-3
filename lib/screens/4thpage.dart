import 'package:flutter/material.dart';
import 'package:real_estate/widgets/random_Widgets.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white38,
          title: Text("Details",
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black
          ),),
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios))],
        ),
        body: SingleChildScrollView(
            child: Center(
              child: Container(
                width: 500,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
              
                    children: [
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      // height: 400,
                      // width: 500,
                      
                      child: Image.network('https://assets.architecturaldesigns.com/plan_assets/338666500/large/95010RW_Photos_01_1654531970.jpg'),
                    ),
                  ),
                    ListTile(tileColor: Colors.white,
                        title: Text('CRAFTSMAN HOUSE'
                          , style: TextStyle(fontWeight: FontWeight.w700,
                          fontSize: 20),
                                    ),
                        
                        subtitle: Text('520 N Beaudary Ave, Los Angeles',
                        style: TextStyle(fontWeight: FontWeight.bold),),
                     
                        trailing: Icon(Icons.bookmark),
                       ),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Icon(Icons.bed),
                       Text('4 Beds'),Icon(Icons.bathtub_outlined), Text('4 Baths'),
                       Icon(Icons.garage_outlined),
                       Text('1 Garage') ],
                       ),
                  SizedBox(height: 30,),
                   ListTile( leading: CircleAvatar(
                    radius: 40,
      backgroundImage:  NetworkImage(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
          // : NetworkImage(imageUrl),
    ),
    title: Text('Rebecca Tetha'),
    subtitle: Text('Owner Craftsman House'),
   trailing: Icon(Icons.phone),

    ),
    Center(
      child: Text('Completely redone in 2021,4 bedrooms, 4 bathsrooms, 1 garage, amazing curb appeal and certan area water vies. Tons of built in and extra features',
      style: TextStyle(fontWeight:FontWeight.w300 ,
      color: Colors.grey),
      ),
    ),
    SizedBox(height: 20),
    Text('Gallery',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),)
,
  Row(children: [SingleChildScrollView(
    scrollDirection: Axis.horizontal,
  
  ),
  galleryView('https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=600'),
    galleryView('https://images.pexels.com/photos/2724748/pexels-photo-2724748.jpeg?auto=compress&cs=tinysrgb&w=600'),
      galleryView('https://images.pexels.com/photos/439227/pexels-photo-439227.jpeg?auto=compress&cs=tinysrgb&w=600'),
            galleryView('https://images.pexels.com/photos/271816/pexels-photo-271816.jpeg?auto=compress&cs=tinysrgb&w=600'),



  ],)
    

,Text('Price',style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15
    )),
ListTile(
  title: Text('5900000 USD',
  style: TextStyle(fontWeight: FontWeight.bold,
  fontSize: 20),),
  trailing:Container(
  width: 80,
  color: Color.fromARGB(255, 58, 133, 171),
  child: Center(
    child: Text('Buy Now',
    style: TextStyle(fontWeight: FontWeight.w600,
    // fontSize: 20
    ),),
  ),),
)

    
     ]),
              ),
            )));
  }
}
