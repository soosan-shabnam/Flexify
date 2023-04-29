import 'package:flutter/material.dart';
class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              '  How active are you?',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 25, // <-- SEE HERE
            ),
            Text(
              '    Choose your regular activity level            ',
              style: TextStyle(
                fontSize: 15,

                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 85, // <-- SEE HERE
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x4D0BBDF5),
              ),

              child: GestureDetector(
                onTap: null,
                child: Center(
                  child: Text(
                    'Beginner',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25, //
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x4D0BBDF5),
              ),

              child: GestureDetector(
                onTap: null,
                child: Center(
                  child: Text(
                    'Intermediate',

                    style: TextStyle(

                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25, //
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0x4D0BBDF5),
              ),

              child: GestureDetector(
                onTap: null,
                child: Center(
                  child: Text(
                    'Advanced',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF0BBDF5),
                ),
                child: GestureDetector(
                  onTap: null,
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
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF0BBDF5),
                  ),
                  child: GestureDetector(
                    onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => Activity(),),),
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

          ],
        )
    );
  }
}