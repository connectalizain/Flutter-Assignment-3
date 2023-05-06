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
    ListView(
scrollDirection: Axis.horizontal,
children: [
  galleryView('https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  galleryView('https://plus.unsplash.com/premium_photo-1679466735992-0186056c06cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG9tZSUyMGludGVyaW9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
, galleryView('https://images.unsplash.com/photo-1578503439976-f0c1f7daf1cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
, galleryView('https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  galleryView('https://plus.unsplash.com/premium_photo-1679466735992-0186056c06cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG9tZSUyMGludGVyaW9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
, galleryView('https://images.unsplash.com/photo-1578503439976-f0c1f7daf1cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
, galleryView('https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  galleryView('https://plus.unsplash.com/premium_photo-1679466735992-0186056c06cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG9tZSUyMGludGVyaW9yfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
, galleryView('https://images.unsplash.com/photo-1578503439976-f0c1f7daf1cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvbWUlMjBpbnRlcmlvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')


]

,
    )
    
    

                  
              
              
              
                ]),
              ),
            )));
  }
}
