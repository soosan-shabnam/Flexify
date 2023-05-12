import 'package:flutter/material.dart';
import 'package:flexify/info.dart';
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
          SizedBox(height:height*0.03,),
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
            height: height*0.005,
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
          SizedBox(height: height*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
              height:height*0.15,
              width:width*0.35,

              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x4D0BBDF5),
              ),
              child: GestureDetector(
                onTap: null,
                child: Image.asset('assets/planck.PNG'),
              ),
            ),
              SizedBox(
                width: width*0.07,
              ),
              Container(
                height:height*0.15,
                width:width*0.35,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0x4D0BBDF5),
                ),
                child: GestureDetector(
                  onTap: null,
                  child:  Image.asset('assets/shoulder_curl.PNG'),
                ),
              ),
              SizedBox(height:height*0.05,),],
          ),
          SizedBox(height:height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(
              height:height*0.15,
              width:width*0.35,

              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x4D0BBDF5),
              ),
              child: GestureDetector(
                onTap: null,
                child: Image.asset('assets/squat.PNG'),
              ),
            ),
              SizedBox(
                width: width*0.07,
              ),
              Container(
                height:height*0.15,
                width:width*0.35,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0x4D0BBDF5),
                ),
                child: GestureDetector(
                  onTap: null,
                  child:  Image.asset('assets/yoga.PNG'),
                ),
              ),
              SizedBox(height:height*0.05,),],
          ),
          SizedBox(height:height*0.1),


          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                height:height*0.08,
                width:width*0.2,

                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: null,
                  child: Image.asset('assets/homepage_icon.PNG'),
                ),
              ),
                SizedBox(
                  width: width*0.15,
                ),
                Container(
                  height:height*0.08,
                  width:width*0.2,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: GestureDetector(
                    onTap: null,
                    child:  Image.asset('assets/calorie_icon.PNG'),
                  ),
                ),

                SizedBox(
                  width: width*0.15,
                ),
                Container(
                  height:height*0.08,
                  width:width*0.2,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: GestureDetector(
                    onTap: () =>  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Information(),),),
                    child:  Image.asset('assets/personal_icon.PNG'),
                  ),
                ),
                ],
            ),
          ),





        ],
      )

    );
  }
}
