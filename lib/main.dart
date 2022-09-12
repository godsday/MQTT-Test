


import 'package:flutter/material.dart';
import 'package:mqtttest/view/home_screen.dart';
import 'package:provider/provider.dart';

import 'mqtt/state/mqtt_appstate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

    
  @override
  Widget build(BuildContext context) {
    /*
    final MQTTManager manager = MQTTManager(host:'test.mosquitto.org',topic:'flutter/amp/cool',identifier:'ios');
    manager.initializeMQTTClient();

     */

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            
          //
            
            
            
            
            
            
            
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<MQTTAppState>(
          create: (_) => MQTTAppState(),
          child: MQTTView(),
        ));
  }
}


/*
Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child:Column(
            children: <Widget>[
              Center(
                child: RaisedButton(
                  child: Text("Connect"),
                  onPressed: manager.connect ,
                ),
              )
            ],
          ) ,
        ),
      )
 */