import 'package:flutter/material.dart';
import 'package:flexify/signin.dart';
import 'package:flexify/signup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: MyHome()
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFFFDFDFD),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Align(
                alignment:Alignment.topLeft ,
                child: Container(
                  child: Text('Flexify',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFE897E),
                    ),),
                ),
              ),

              SizedBox(
                height: height*0.002,
              ),

              Align(
                alignment: Alignment.topLeft ,
                child: Container(
                  child: Text('Maximixe your Fitness Mojo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),),
                ),
              ),

              SizedBox(
                height: height*0.1, // <-- SEE HERE
              ),
              Image.asset('assets/logo.png', fit: BoxFit.contain),


              SizedBox(
                height: height*0.15, // <-- SEE HERE
              ),

              Container(
                height: height*0.075,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF0BBDF5),
                ),
                child: GestureDetector(
                  onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn(),),),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: height*0.025, // <-- SEE HERE
              ),

              Container(
                height: height*0.075,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF0BBDF5),
                ),
                child: GestureDetector(
                  onTap: () =>  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp(),),),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),



            ],
          ),
        )

    );
  }
}


