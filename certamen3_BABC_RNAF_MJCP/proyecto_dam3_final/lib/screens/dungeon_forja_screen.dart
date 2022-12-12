import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ForjaScreen extends StatefulWidget {
  ForjaScreen({Key? key}) : super(key: key);

  @override
  State<ForjaScreen> createState() => _ForjaScreenState();

}


class _ForjaScreenState extends State<ForjaScreen> {
  
  int _number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 28, 68),
        leading: Icon(MdiIcons.eye),
        title: Text('Forja de almas',style: TextStyle(fontFamily:'Warcraft',)),
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
                 image: AssetImage('assets/Forja.jpg'),
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
            child: Text('La forja de almas se encuentra en la poderosa ciudadela de corona de hielo, una de las tres mazmorras disponibles dentro de la ciudadela además de la incursión, y nos ofrece una misión en cadena que ayudará a los ejércitos de Azeroth. ',style: TextStyle(fontSize:20,fontFamily:'Warcraft',color: Colors.white),),          
           ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 77, 86, 100))
            ),
            child: Text('La mazmorra ofrece una perspectiva de cómo el Rey Exánime atormenta las almas y cómo las usa para alimentar la máquina de guerra flageladora, nuestros aventureros tendrán que luchar contra grupos de muertos vivientes que defienden la forja. ',style: TextStyle(fontSize:20,fontFamily:'Warcraft',color: Colors.white),),         
           ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Tab(
                  child: Text("Clases recomendadas: ", style: TextStyle(fontFamily:'Warcraft',fontSize: 24, color: Colors.blue),),
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
                Icon(MdiIcons.hammer, color: Color.fromARGB(255, 243, 199, 3),),
                Text('  Paladin ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 249, 250, 246)))
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
                Icon(MdiIcons.magicStaff, color: Colors.deepOrange,),
                Text('  Mago ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 249, 250, 246)))
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
              Icon(MdiIcons.bowArrow, color: Color.fromARGB(255, 23, 168, 59),),
              Text('  Druida ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Colors.white)),
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
                
                Image(image: AssetImage('assets/maza_sol.jpg')),
                Image(image: AssetImage('assets/Hombrera.jpg')),
                Image(image: AssetImage('assets/Brazal.jpg')),
                Image(image: AssetImage('assets/Tunica.jpg'))
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
            Text("Valoraciones: $_number",style: TextStyle(fontFamily:'Warcraft',color: Colors.white),),
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
