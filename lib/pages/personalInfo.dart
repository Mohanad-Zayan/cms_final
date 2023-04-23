import 'package:cms_final/pages/Entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);
  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}
class _PersonalInfoState extends State<PersonalInfo> {
  List<IconData> icons = [
    Icons.book,
    Icons.description,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color(0xff121212),
      appBar: AppBar( backgroundColor:Color(0xff202020),
        leading:IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Entry()));}
        ),
        // Icon(Icons.arrow_back_ios,color: Colors.white,),

          title: Text(
            'Personal Information',
            style: TextStyle(color:Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: AlignedGridView.count(
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
            ) //Column
        ) //Center
    );
  }
}