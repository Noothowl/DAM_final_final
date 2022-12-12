import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FosoScreen extends StatefulWidget {
  FosoScreen({Key? key}) : super(key: key);

  @override
  State<FosoScreen> createState() => _FosoScreenState();

}


class _FosoScreenState extends State<FosoScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 28, 68),
        leading: Icon(MdiIcons.eye),
        title: Text('Foso de Saron',style: TextStyle(fontFamily:'Warcraft',)),
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
                 image: AssetImage('assets/Foso.jpg'),
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
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 77, 86, 100))
            ),
            child: Text('Foso de saron se encuentra en la poderosa ciudadela de Icecrown al igual que The Forge of Souls, siendo parte de la misión en cadena tiene dos entradas, una fuera de las tres mazmorras y otra al final de Forja de almas. ',style: TextStyle(fontSize:20,fontFamily:'Warcraft',color: Colors.white),),
          ),
           Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 77, 86, 100))
            ),
            child: Text('El Foso de Saron es literalmente una mina que alimenta la máquina de guerra del Rey Exánime, con prisioneros humanos y no muertos trabajando día y noche para satisfacer sus necesidades. ',style: TextStyle(fontSize:20,fontFamily:'Warcraft',color: Colors.white),),
          ),
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
                Icon(MdiIcons.axeBattle, color: Color.fromARGB(255, 255, 56, 56),),
                Text(' Guerrero ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
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
                Icon(MdiIcons.knife, color: Color.fromARGB(255, 212, 255, 56),),
                Text(' Picaro ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
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
                Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 255, 255, 255),),
                Text(' Sacerdote ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
          ),
          Column(children: [
            Text('')
          ]),
          Column(children: [
            Text('Posible botin de la mazmorra:', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Colors.red)),
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
                
                Image(image: AssetImage('assets/Martillo.jpg')),
                Image(image: AssetImage('assets/Daga.jpg')),
                Image(image: AssetImage('assets/Botas.jpg')),
                Image(image: AssetImage('assets/Rifle.jpg'))
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