import 'package:flutter/material.dart';
class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Align(
            alignment: Alignment.topLeft,
            child: Text('Hello, Soosan',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
          ),
          SizedBox(
            height: height*0.03,
          ),
          Image.asset('assets/profilepic.png'),
          SizedBox(
            height: height*0.01,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text('Name',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),),
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

          Align(
            alignment: Alignment.topLeft,
            child: Text('Gender',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),),
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

          Align(
            alignment: Alignment.topLeft,
            child: Text('Height',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),),
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

          Align(
            alignment: Alignment.topLeft,
            child: Text('Weight',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),),
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


        ],
      )
    );
  }
}
