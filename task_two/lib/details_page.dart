import 'package:flutter/material.dart';
import 'data.dart';

class Zoom extends StatefulWidget {
  Zoom({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  _ZoomState createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  int _zoomValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.profile.name),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            children: [
              Container(height: 200, child: Image.asset(widget.profile.image)),
              SizedBox(
                height: 10,
              ),
              Slider(
                activeColor: Colors.black,
                  min: 1,
                  max: 10,
                  divisions: 10,
                  value: _zoomValue.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _zoomValue = newValue.round();
                    });
                  }),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Name:',
                      style: TextStyle(
                        fontSize: 20 + _zoomValue.toDouble(),
                      ),
                    ),
                    Text(
                      widget.profile.name,
                      style: TextStyle(
                          fontSize: 25 + _zoomValue.toDouble(),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lifetime and country:',
                      style: TextStyle(
                        fontSize: 20 + _zoomValue.toDouble(),
                      ),
                    ),
                    Text(
                      widget.profile.info,
                      style: TextStyle(
                          fontSize: 25 + _zoomValue.toDouble(),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Description',
                        style: TextStyle(fontSize: 20 + _zoomValue.toDouble())),
                    Text(widget.profile.description,
                      style: TextStyle(fontSize: 17 + _zoomValue.toDouble())),
                ]),
              ),
            ],
          )),
    );
  }
}