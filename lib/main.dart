import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  home:Home()));
class Home extends StatelessWidget {
var orientation,size,height,width;
 
  @override
  Widget build(BuildContext context) {
     
    // getting the size of the window
    orientation=MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
 
    return Scaffold(
      appBar: AppBar(
        title: Text("Geeks For Geeks"),
        backgroundColor: Colors.green,
      ),
      body: orientation==Orientation.portrait?Container(  
       width: width/2,
       height:height/2,
       color: Colors.blue,
      ):Container(  
         width: width/3,
       height:height/3,
       color: Colors.red,
      ),
    );
  }
}