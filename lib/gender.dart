import 'package:flutter/material.dart';
import 'package:flexify/age.dart';
import 'package:flexify/name.dart';
class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              ' Tell us about Yourself',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20555C),
              ),
            ),
            SizedBox(
              height: 35, // <-- SEE HERE
            ),
            Text(
              '   Choose your gender',
              style: TextStyle(
                fontSize: 15,

                color: Color(0xFF20555C),
              ),
            ),
            SizedBox(
              height: 55, // <-- SEE HERE
            ),
            CircleAvatar(
              backgroundColor: Color(0xCFE4A5EA),
              radius: 70,
              child: GestureDetector(
                onTap: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.female, size: 60, color: Colors.white,),
                    SizedBox(
                      height: 15, // <-- SEE HERE
                    ),
                    Text(
                      'Female',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),],
                ),
              ),

            ),
            SizedBox(height:30),
            CircleAvatar(
              backgroundColor: Color(0x8A54ADFF),
              radius: 70,
              child: GestureDetector(
                onTap: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.male, size: 60, color: Colors.white,),
                    SizedBox(
                      height: 15, // <-- SEE HERE
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),],
                ),
              ),

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF0BBDF5),
                ),
                child: GestureDetector(
                  onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Name(),),),
                  child: Text(
                    '   Back   ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF0BBDF5),
                  ),
                  child: GestureDetector(
                    onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Age(),),),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:150),],
            ),

          ],),
      ),
    );
  }
}
