// ignore_for_file: sort_child_properties_last

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}

class MyAppstate extends State {
  //  String imagepath='camera\flutter_captureimage\assets\téléchargement.png';
     dynamic  _image ;
  
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: Column(children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:  _image == null ? null : FileImage(_image),
                    radius: 140,

                  ),
                  GestureDetector (
                    onTap: pickImage,
                  child:
                   Icon(Icons.camera_alt,
                   size: 43,
                   
                   
                   )),
                ],
              )

          ],
          
          mainAxisAlignment: MainAxisAlignment.center,
          ),
          
        ),
        
      ),
      


    );
    
    

}
    void pickImage() async {
  var image = await ImagePicker().pickImage(source: ImageSource.camera);
  var img = File(image!.path) ;
    setState(() {
      _image = img  ;
    }
    
    
    );
  }

}





