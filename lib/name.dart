import 'package:flutter/material.dart';
import 'package:flexify/gender.dart';
class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'What is your name?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20555C),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelText: '                  ',
                ),
              ),
            ),
            GestureDetector(
                onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Gender(),),),
                child: Image.asset('assets/arrow.png'),
              ),
            SizedBox(
              height: 65,
            ),
            Image.asset('assets/halflogo.png'),


          ],

        )
    );
  }
}