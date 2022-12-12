import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PruebaScreen extends StatefulWidget {
  PruebaScreen({Key? key}) : super(key: key);

  @override
  State<PruebaScreen> createState() => _PruebaScreenState();

}


class _PruebaScreenState extends State<PruebaScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 28, 68),
        leading: Icon(MdiIcons.eye),
        title: Text('Prueba del campeon',style: TextStyle(fontFamily:'Warcraft',)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
             width: 400.0,
             height: 100.0,
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: AssetImage('assets/torneo.jpg'),
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
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 77, 86, 100))
            ),
            child: Text('La Prueba del Campeón es una mazmorra ubicada en Corona de Hielo en los terrenos de la Cruzada Argenta, una instancia que forma parte del evento del Torneo Argenta, a menudo llamado El Coliseo. La mazmorra es parte de la iniciativa de la Cruzada Argenta para encontrar a los campeones más poderosos en preparación para la lucha contra el Rey Exánime. ',style: TextStyle(fontSize:20,color: Colors.white,fontFamily: 'Warcraft'),),
          ),

          /*
          Container(
            padding: EdgeInsets.all(10),
            child: Text('The dungeon offers a perspective into how the Lich King torments souls and how he uses them to fuel the scourge war-machine, our adventurers will have to battle groups of undeads defending the forge, ultimately reaching its master, Bronjahm and destroying his craft. '),
          ),
          */
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(
                  child: Text("Clases recomendadas: ", style: TextStyle(fontFamily:'Warcraft',fontSize: 32, color: Colors.blue),),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:50,right: 50), 
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [           
                Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 48, 202, 34),),
                Text('  Druida ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 249, 250, 246)))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:50,right: 50), 
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [           
                Icon(MdiIcons.sword, color: Colors.deepOrange,),
                Text('  Guerrero ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 249, 250, 246)))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:50,right: 50), 
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [           
              Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 23, 69, 168),),
              Text('  Chaman ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Colors.white)),
            ],
            ),
          ),
          Column(children: [
            Text('Posible botin de la mazmorra:', style: TextStyle(fontFamily:'Warcraft',fontSize: 25, color: Colors.red)),
          ]),
          Container(
            padding: EdgeInsets.all(5),
            //alignment: Alignment.center,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
            child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Image(image: AssetImage('assets/Hacha.jpg')),
                Image(image: AssetImage('assets/Cinturon.jpg')),
                Image(image: AssetImage('assets/Abalorio.jpg')),
                Image(image: AssetImage('assets/Perneras.jpg'))
              ],
            ),
            
          ),

          OutlinedButton(
            child: Icon(MdiIcons.star),
            
            onPressed: (){
              setState(() {
                _number = _number +1;
              });
            },
          ),
          Container(
            child: 
            Text("Valoraciones: $_number",style: TextStyle(fontFamily:'Warcraft',color: Colors.white, fontWeight: FontWeight.w300),),
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