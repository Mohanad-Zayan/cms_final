import 'package:cms_final/components/components.dart';
import 'package:cms_final/pages/BirthPicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GenderPicker extends StatefulWidget {
  const GenderPicker({Key? key}) : super(key: key);
  @override
  State<GenderPicker> createState() => _GenderPickerState();
}
class _GenderPickerState extends State<GenderPicker> {
  List<IconData> icons = [
    Icons.male,
    Icons.female,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor:Color(0xff121212),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const birth())); },
          ),


        //  centerTitle: true,
        ),
        body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(height: 10,),
         // padding: const EdgeInsets.all(14.0),
      Text(
        'step 3/6',
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 20,
        ),
      ),
             SizedBox(height: 40,),
             
             AlignedGridView.count(
                 shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                itemCount: icons.length,
                 itemBuilder: (_, i) => Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff252525)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff121212),
                      child: Icon(icons[i], color: const Color(0xffBDBDBD), size: 50.0),
                    ),
                  ),
                )
            ),
     SizedBox(height: 200,),
    button(text: 'Continue', function:  () {showDialog(
        context: context,
        builder: (BuildContext context) {
        return AlertDialog(
        title: new Text("Message"),
        content: new Text("You are ready to start"),
        actions: <Widget>[
        new TextButton (
        child: new Text("OK"),
        onPressed: () {
        Navigator.of(context).pop();
        //Navigator.push(context, MaterialPageRoute(builder: (context) => const Entry()));
        },
        ),
        ],
        );
        },
        );
        },)] ,//Column
        ),), //Center
    );
  }
}