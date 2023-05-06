import 'package:flutter/material.dart';
import 'package:real_estate/screens/sign_Up.dart';

class SignIn_Screen extends StatelessWidget {
  const SignIn_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 30),
                Center(
                  child: Container(
                    child: Image.asset('assets/3.png'),
                    // width: 300,
                    // height: 200,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),

// Email

                SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(

                      labelText: "Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.horizontal() )
                    ) ,
                  ),
                ),

// Password
                SizedBox(height: 15),

                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()))
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_box_outline_blank_outlined),
                    Text("Remember ME")
                  ],
                ),

                SizedBox(height: 10),

                ElevatedButton(onPressed: () {}, child: Text("Sign In")),

                SizedBox(height: 20),
                TextButton(
                    onPressed: () {}, child: Text("Forgot the Password")),
                SizedBox(height: 10),
                Text("Or continue with"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.network(
                            'data:image/png;base64,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')),
                    Container(
                        height:40,
                        width: 40,
                        child: Image.network(
                            'data:image/png;base64,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')),
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.network(
                            'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAAAdVBMVEX///8AAAC/v7/09PSioqLS0tIwMDD6+vrl5eV7e3vx8fF4eHjLy8tQUFBGRkarq6vY2NiOjo7e3t6EhIS3t7cXFxcMDAyampo+Pj5hYWHb29uwsLDs7OwgICCgoKBXV1dsbGwsLCyJiYm8vLxlZWU3NzckJCSrYnspAAAE5klEQVR4nO2d13KrQAyGg4MDbsENN1xTzvs/4okhTgyIErMrrTT67pmR/lkWrcry9KQoiqIoiqIoimKTPbUBTJj724Pn7ajNYMB04WX0qS1xnuTi3RhT2+I4vneHilVHz8sxpbbHYYaTvFZeSG2Ruyy9ItQWucuopFVMbZKzvJa08rbUNrnKS1krb01tlKNAWunHEKb4GdT9vZoFqNWA2iwneQe10pMhxBDW6oXaLicBgoYrS2q7XKQcuKesqO1yElgrr0dtl4usYa1eqe1ykoqFpfl3gCOslU9tl5PEoFYTarOcpA8vLGqz3GQAaqUZUhBQKz3ngISQVhphwUSqVXvKeXetFVZSTvrNqU1yl1VBqteA2iKHKWilcXsdOalOQ2pz3OZeKq3lNPAj1ZsG7Y0cPO8wWUT6CUwJ5j1/NjiPZlH/ue0zu2gwyYqum8nAH7d+jjXD5SCfgBkljVt4fw2UL0aJdMEisGizWdekQPtAQH8LwCI8y7GZV7vtvfjgOpnOqh/J1pfMnS08Nfh9ei88sV9fGh5JH5P3yQxqVtUv59/kQuiDPTQQ0tofKmqm0EI5ToNgvGitVIqopMTHn1x/gAW1h8YIi2kEC2yonTTE2L5UX8QiDtwJilZfCIhRoYS6HVbsc4QV/XtW+KR2tiMVtWVLnKnd7URFr6M1WJ8V/xZadmZG7W8X3lClilmfqaeoWp2p3e3GAVMr1ttVZfueHZgfpQNMrbhXzODRG9UKAnNhse9HakqeG4T/uCaeVidqVzuDeIBmn2yoGuqyAP85sWc0rQTkk/1mLw0hoON7i6WVgIWF9y1kH2JhJkipPTUA2pYlobhqvQJ9g3myIQVLKwlvIZpYEr6Fcyyx3qg9NUCv2U0z8D/qIJbsJezvaLks1sWvb1q1RJpAQpsRmljUjprgrGK1By3nQO2oCdDE4p9RRhRLwkU+aOdoCffoo23wEoJStNAhofbUAPDFOxaQkPtDO+5IuIgTrxBG7akB0FI0EnZ4vGbSEbWr3cEr3kt4D/HEKo4KM+SCJpaAkgVaCC+hMQQvdhBwgzDO8GoG+9YQ1Gkwamc7gzmJcqZ2titoeYcr3MMHvMnoK8wvWNmjisV98B5XrJh35QIt/ydBLcxIK4VzoQd12jCF87kHrRz2A+PhMLQraH555dtUgy+W5x2pnX6Upiv+rBAzrSTiVS3y8Dz8EInFM2WDOX5/B7XbjwH+5MQ6XCv6GwqxuDYwU2zxfG9nIxCL7/09qFf3ZFC73AF0rThPPiHesZLBOWWKnajh3VSDvLQ4ZwCxlxbvhYXa9cB7x0pB1IrzpzADMYyndtUA5b8VWoJp3i8HVnGa76nwnor/2JuGa7qhAMp11Px39wyMLGBM7aQxEBqQJEwefmO9LMa4Gl3C9qmHf8vyPZavauNbtwexGj8ImA3LYzGQ51r9qsHaD8MEjO+UsBZtse6QrMJS56SQY04RK7GpuM39hoWMPN+iaiPGG2skRe4lDP/jSbRWLQoY23XS6+92/V4yazxRSrhMspa6nPw2KRT+Qr/ujwWcO99bsr9UKAX3Nz5HFbnDE/vCVyuAc2J8rHF9B00v8mwdfYBh/qu4mjX+kamXH5z6FL9b3RMsv3fvw0fScrRynow+r+fLf9uI+TDmIwRhyLuRQ1EURVEURTHCf8eYSCcC+BLCAAAAAElFTkSuQmCC'))
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Don't have an account?",
                  style: TextStyle(color: Colors.grey),),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("Sign Up"))   
                  ],
                )
              ]),
        ));
  }
}
