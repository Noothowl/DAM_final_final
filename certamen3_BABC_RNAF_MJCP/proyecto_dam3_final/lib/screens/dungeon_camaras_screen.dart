import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CamarasScreen extends StatefulWidget {
  CamarasScreen({Key? key}) : super(key: key);

  @override
  State<CamarasScreen> createState() => _CamarasScreenState();

}


class _CamarasScreenState extends State<CamarasScreen> {
  
  int _number=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 28, 68),
        leading: Icon(MdiIcons.eye),
        title: Text('Camaras de reflexion',style: TextStyle(fontFamily:'Warcraft',)),
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
                 image: AssetImage('assets/Camaras.jpg'),
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
            child: Text('La mazmorra final de la misión en cadena, situada dentro de la Ciudadela de la Corona de Hielo, las Cámaras de Reflexión esconden una de las posesiones más preciadas del Rey Exánime, su amada espada, Froustmourne. Nuestros aventureros buscan respuestas en el intento de arruinar los planes del Rey Exánime, buscan la comunión con la espada para encontrar el conocimiento oculto, pero Arthas los detiene abruptamente. ',style: TextStyle(fontSize:20,color: Colors.white,fontFamily: 'Warcraft'),),
          ),
          /*
          Container(
            padding: EdgeInsets.all(10),
            child: Text('The dungeon offers a perspective into how the Lich King torments souls and how he uses them to fuel the scourge war-machine, our adventurers will have to battle groups of undeads defending the forge, ultimately reaching its master, Bronjahm and destroying his craft. '),
          ),
          */
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Icon(MdiIcons.sword, color: Color.fromARGB(255, 255, 56, 56),),
                Text(' Caballero de la muerte ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
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
                Icon(MdiIcons.magicStaff, color: Color.fromARGB(255, 17, 41, 180),),
                Text('  Brujo ', style: TextStyle(fontFamily:'Warcraft',fontSize: 20, color: Color.fromARGB(255, 255, 255, 255))),
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
/*           Column(children: [
            Text('')
          ]), */
          
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text('Posible botin de la mazmorra:', style: TextStyle(fontFamily:'Warcraft',fontSize: 25, color: Colors.white,)),
          ),
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
                
                Image(image: AssetImage('assets/Capa.jpg')),
                Image(image: AssetImage('assets/Guantes.jpg')),
                Image(image: AssetImage('assets/Anillo.jpg')),
                Image(image: AssetImage('assets/Casco.jpg'))
              ],
            ),
            
          ),
/*           Container(
            color: Color(0xFF272A3C),
            width: double.infinity,
            child: 
            Image(image: AssetImage('assets/Camaras.jpg')),
          ), */
          
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
          

/*           OutlinedButton(
            child: Text('Volver'),
            onPressed: (){
              Navigator.pop(context);
            },
          ), */

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