import 'package:flutter/material.dart';

continueWith(icon, text) {
  const SizedBox(
    height: 20,
  );

  Center(
    child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [icon, text],
        )),
  );
}

googleIcon() {
  Container(
    height: 20,
    child: Image.asset('assets/googlelogo.jpg'),
  );
}

txtfield(reqdText, {reqdsuffix}) {
  return Container(
    height: 50,
    width: 500,
    child: TextField(
      decoration: InputDecoration(
          labelText: reqdText,
          suffix: reqdsuffix,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ),
  );
}

// class txtfield extends StatelessWidget {
//   const txtfield({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container()
//   }
// }

galleryView(imageURL) {
  return Container(
    height: 100,
    width: 100,
    margin: EdgeInsets.all(10),
    child: Image.network(
        imageURL),
  );
}

class BNavBar extends StatefulWidget {
  const BNavBar({super.key});

  @override
  State<BNavBar> createState() => _BNavBarState();
}

class _BNavBarState extends State<BNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      iconSize: 20.0,
      backgroundColor: Colors.black38,
      // unselectedItemColor: secondaryColor(),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'BookMark'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
      ],
    );
  }
}

tabBar() {
  return TabBar(
      labelColor: Colors.blueAccent,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      //unselectedLabelStyle: TextStyle(color: secondaryColor()),
      labelPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      labelStyle: TextStyle(
          fontFamily: 'Mulish', fontSize: 16, fontWeight: FontWeight.bold),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color:Colors.grey),
      tabs: [
        Tab(child: Text('House')),
        Tab(child: Text('Apartement')),
        Tab(child: Text('Plots')),
        Tab(child: Text('Residential')),
        Tab(
          child: Text('Commercial'),
        )
      ]);
}
