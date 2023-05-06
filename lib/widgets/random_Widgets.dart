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

galleryView(imageurl) {
  return Container(
    height: 200,
    width: 200,
    child: Image.network(imageurl),
  );
}
