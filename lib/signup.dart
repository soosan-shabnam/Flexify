import 'package:flutter/material.dart';
import 'package:flexify/name.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool pass_visible=false;
  @override
  void initState() {
    super.initState();
    pass_visible = true;
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              SizedBox(
                height:height*0.055
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0BBDF5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25, //
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x730BBDF5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.email_outlined),
                    ),
                    labelText: '   Enter your email address    ',
                  ),
                ),
              ),
              SizedBox(
                height: 3, //
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: pass_visible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x730BBDF5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.lock_open_rounded),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(pass_visible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          pass_visible = !pass_visible;
                        });
                      },
                    ),
                    labelText: '    Enter your password     ',
                  ),
                ),
              ),
              SizedBox(
                height: 3, //
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  obscureText: pass_visible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x730BBDF5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.lock_open_rounded),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(pass_visible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          pass_visible = !pass_visible;
                        });
                      },
                    ),
                    labelText: '    Confirm your password     ',
                  ),
                ),
              ),
              SizedBox(
                height: 55, // <-- SEE HERE
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color:Color(0x730BBDF5),
                ),
                child: GestureDetector(
                  onTap: () =>  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Name(),),),
                  child: Text(
                    '  Continue  ',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45, // <-- SEE HERE
              ),
              Image.asset('assets/halflogo.png'),
            ],
          ),
        )
    );
  }
}