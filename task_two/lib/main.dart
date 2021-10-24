import 'package:flutter/material.dart';
import 'data.dart';
import 'details_page.dart';

void main()  => runApp(ProfileApp());


class ProfileApp extends StatelessWidget {
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: MyHomePage(title: 'Be Inspired'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
       ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: Profile.samples.length,
            itemBuilder: (BuildContext context, int index){ // unnamed function
              return GestureDetector(
                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Zoom(profile: Profile.samples[index]);
                }));},
                  child: profileCard(Profile.samples[index]));
            }),
      ),
    );
  }
}

Widget profileCard(Profile profile){
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
      Expanded(
      child:Image(image: AssetImage(profile.image))),
              Spacer(flex: 1,),
              Text(profile.info,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          Text(profile.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          Text(profile.description,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),),
        ],
      ),
    ),
  );
}