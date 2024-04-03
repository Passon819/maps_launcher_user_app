import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

//ทดลอง map_launcher

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Maps Launcher Demo',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => MapsLauncher.launchQuery(
                    'มหาวิทยาลัยเชียงใหม่ chaimai'), //1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA
                child: Text('LAUNCH QUERY'),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => MapsLauncher.launchCoordinates(
                    18.8082921, 98.9546936, 'Google Headquarters are here'),
                child: Text('LAUNCH COORDINATES'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
