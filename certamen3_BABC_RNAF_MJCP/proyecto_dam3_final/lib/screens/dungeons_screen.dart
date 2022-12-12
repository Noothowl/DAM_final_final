import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_camaras_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_forja_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_foso_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeon_prueba_screen.dart';


class DungeonsScreen extends StatelessWidget {
  const DungeonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*       appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Dungeons",style: TextStyle(fontFamily:'Warcraft',)),
        leading: Icon(Icons.list),
      ), */
/*        body: ListView(
        
        children: [
            /*Divider(
            thickness: 1.5,
            ),
            */
          ListTile(
            leading: Icon(MdiIcons.hexagonSlice6, color: Color(0xff20bc9c)
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Forja de almas"),
            subtitle: Text("Progresion LvL 65-70"),
            onTap: (){
              _navegarTo(context, 'Forja');
            },
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.circleSlice8, color: Color(0xff20bc9c)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Foso de Saron"),
            subtitle: Text("Progresion LvL 70-75"),
            
            onTap: (){
              print("Printing project settings");
              _navegarTo(context, 'Foso');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.triangle, color: Color(0xff20bc9c)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Camaras de reflexion"),
            subtitle: Text("Progresion LvL 75-80"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'camaras');
            },
            
          ),
          Divider(
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(MdiIcons.cube, color: Color(0xff20bc9c)),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Prueba del Campeon"),
            subtitle: Text("Progresion LvL 80+"),
            
            onTap: (){
              print("Printing project users");
              _navegarTo(context, 'campeon');
            },
            
          ),
          Divider(
            thickness: 1.5,
          )
        ],
      ),  */
      backgroundColor: Color.fromARGB(255, 10, 10, 30),
       body: ListView(
        
        children: [
            /*Divider(
            thickness: 1.5,
            ),
            */
          Container(
             decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/Forja.jpg"),fit: BoxFit.cover,
              ),
            ),
            child:
            ListTile(
              leading: Icon(MdiIcons.circleSlice8, color: Color(0xff20bc9c)),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text("Forja de Almas",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              subtitle: Text("Progresion Nivel 80",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              
              onTap: (){
                print("Printing project settings");
                _navegarTo(context, 'Forja');
              },
              
            ), 
          ),
          Divider(
            color: Colors.black,
            thickness: 1.5,
          ),
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/Foso.jpg"),fit: BoxFit.cover,
              ),
            ),
            child:
            ListTile(
              leading: Icon(MdiIcons.circleSlice8, color: Color(0xff20bc9c)),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text("Foso de Saron",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              subtitle: Text("Progresion Nivel 80",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              
              onTap: (){
                print("Printing project settings");
                _navegarTo(context, 'Foso');
              },
              
            ), 
          ),
           Divider(
            color: Colors.black,
            thickness: 1.5,
          ), 
          Container(
             decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/Camaras.jpg"),fit: BoxFit.cover,
              ),
            ),
            child:
            ListTile(
              leading: Icon(MdiIcons.circleSlice8, color: Color(0xff20bc9c)),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text("Camaras de Reflexion",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              subtitle: Text("Progresion Nivel 80",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              
              onTap: (){
                print("Printing project settings");
                _navegarTo(context, 'camaras');
              },
              
            ), 
          ),
          Divider(
            color: Colors.black,
            thickness: 1.5,
          ),
          Container(
             decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/torneo.jpg"),fit: BoxFit.cover,
              ),
            ),
            child:
            ListTile(
              leading: Icon(MdiIcons.circleSlice8, color: Color(0xff20bc9c)),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text("Prueba del Campeon",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              subtitle: Text("Progresion Nivel 77-80",style: TextStyle(fontFamily:'Warcraft',color: Colors.white)),
              
              onTap: (){
                print("Printing project settings");
                _navegarTo(context, 'campeon');
              },
              
            ), 
          ),
          Divider(
            color: Colors.black,
            thickness: 1.5,
          )
        ],
      ),


    );
  }

  void _navegarTo(BuildContext context, String screen){
    final route = MaterialPageRoute(builder: (context){
      switch (screen){
        case 'Forja':
          return ForjaScreen();

        case 'Foso': 
          return FosoScreen();

        case 'camaras':
          return CamarasScreen(); 

        default:
          return PruebaScreen();
      }
    });
    Navigator.push(context, route);
  }


}

