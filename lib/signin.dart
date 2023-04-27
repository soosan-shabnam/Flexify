import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool password_visible = false;
  @override
  void initState() {
    super.initState();
    password_visible = true;
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFDFDFD),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0BBDF5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height*0.15, //
            ),
            Container(

              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0x730BBDF5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                  ),
                  prefixIcon: Align(
                    widthFactor: 1,
                    heightFactor: 1,
                    child: Icon(Icons.email_outlined),
                  ),
                  labelText: 'Enter your email address ',
                ),
              ),
            ),
            SizedBox(
              height: height*0.05, //
            ),
            TextFormField(
              obscureText: password_visible,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0x730BBDF5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.lock_open_rounded),
                ),
                suffixIcon: IconButton(
                  icon: Icon(password_visible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      password_visible = !password_visible;
                    });
                  },
                ),
                labelText: 'Enter your password ',
              ),
            ),
            SizedBox(
              height: height*0.15, // <-- SEE HERE
            ),
            Container(

              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x730BBDF5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15,
                    offset: Offset(2,3),
                    spreadRadius: 0.1,
                    blurStyle: BlurStyle.normal,
                  )
                ]
              ),
              child: GestureDetector(
                onTap: null,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height*0.085, // <-- SEE HERE
            ),
            Image.asset('assets/halflogo.png'),
          ],
        ),
      ),);
  }
}