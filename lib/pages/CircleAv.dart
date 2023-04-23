import 'package:flutter/material.dart';
  
import 'package:cms_final/pages/BirthPicker.dart';
import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/components/components.dart';

class CircleAv extends StatefulWidget {
  const CircleAv({Key? key}) : super(key: key);

  @override
  State<CircleAv> createState() => _CircleAvState();
}

class _CircleAvState extends State<CircleAv> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor:Color(0xff202020),
          leading:IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Entryy()));}
          ),
          // Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
        // backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text(
                'step 1/6',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'choose your avatar',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/g1.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/g2.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/g3.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/g4.png'),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/man1.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/man2.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/man3.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/man4.png'),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),

              SizedBox(
                height: 20.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              Text(
                'or add your own photo',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/avatar.png'),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 30.0,
                //child: Divider(color: Colors.teal.shade100),
              ),
              Column(
                children: [
                  button(text: 'Continue', function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const birth()));}),
                  //  SizedBox(height: 70),
                  /* ElevatedButton(
                    // Padding(padding: EdgeInsets.all(2.0),),
                    child: Text("Continue"),
                    // icon: Icon(Icons.add),
                    //  label: Text("Fill up my information"),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(2.0),
                      fixedSize: Size(250,49 ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      primary: Colors.blue[700],
                      onPrimary: Colors.white,
                      elevation: 10,
                      shape: StadiumBorder(),
                       ),
                       ),*/





                  /*   SizedBox(
                    width: 150.0,
                    height: 40,
                    child: ListTile(
                      title: Center(
                        child: Text(
                          'continue',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      tileColor: Colors.blue,
                    ),
                  ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}