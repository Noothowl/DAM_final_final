import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeons_screen.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();

}


class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 64, 122),
        title: Text('Login'),
      ),
      backgroundColor: Colors.black,
      body: Column(   
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 50),
             width: 300.0,
             height: 300.0,
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: AssetImage('assets/gato.jpg'),
                 fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
               border: Border.all(
                 color: Colors.grey,
                 width: 4.0,
               ),
             ),
           ),

           Container(
            margin: EdgeInsets.only(top: 50),
            color: Color.fromARGB(255, 0, 0, 0),
            child: Center(
              child: GestureDetector(
                onTap:(){
                  Navigator.pop(context);
                },
              child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(4,4),
                      ),
                    ]
                  ),
                  child: Center(
                    child: Text("Volver",style: TextStyle(color: Colors.purple,)),
                  ),
                ),
              ),
            ),
          ),
        ],
        
      ),
     
    );
  }




}