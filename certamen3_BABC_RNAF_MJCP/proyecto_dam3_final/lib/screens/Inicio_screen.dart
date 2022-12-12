import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/about.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeons_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/monturas_screen.dart';
//'C1 DAM020-2022-2'
class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 13, 28, 68),
          /* title: Column(
            children: [
              Text('C1 DAM020-2022-2', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              Text('Benjamin Bravo' , style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
            ],
          ), */
          leading: Icon(MdiIcons.swordCross, color: Color.fromARGB(255, 255, 255, 255),),
          elevation: 0,
          actions: [
          PopupMenuButton(
              onSelected: (opcion) {
                switch (opcion) {
                  case 'about':
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AboutPage()),);
                    break;
                  case 'logout':
                    Navigator.pop(context);
                    break;
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Acerca de....'),
                      value: 'about',
                    ),
                    PopupMenuItem(
                      child: Text('Salir'),
                      value: 'logout',
                    ),
                  ])
        ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'Mazmorras',
            ),
            Tab(
              text: 'Monturas',
            )
          ]),
        ),
        body: TabBarView(children: [
          
          DungeonsScreen(),
          MonturasPage(),
        ]),
        
      ),
    );
  }
}