import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text('Hello, Soosan!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Today, April 29',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),
          SizedBox(
            height: height*0.01,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: height*0.01,
          ),
          Container(
            height:height*0.05,

            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black26,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                suffixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.email_outlined),
                ),
                labelText: 'What pose do you want to try? ',
              ),
            ),
          ),
          SizedBox(
            height: height*0.015,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Recommended exercises: ',
              style: TextStyle(
                fontSize: 28,

                color: Colors.black,
              ),),),
            Row(
              children: [],
            ),



        ],
      )

    );
  }
}
