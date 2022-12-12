import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/provider/provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_page.dart';

class Login2 extends StatefulWidget {
  //const MedicamentosPage({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        elevation: 0,
        actions: [
          PopupMenuButton(
              onSelected: (opcion) {
                switch (opcion) {
                  case 'about':
                    print('about');
                    break;
                  case 'logout':
                    logout();
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
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.blue,
            child: Row(children: [
              Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              FutureBuilder(
                  future: getNombreUsuario(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (!snapshot.hasData) {
                      return Text('...');
                    }
                    return Text(
                      snapshot.data.toString(),
                      style: TextStyle(color: Colors.white),
                    );
                  }),
            ]),
          ),
          Expanded(
              child: FutureBuilder(
            future: Provider().getMonturas(),
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.separated(
                separatorBuilder: (_, __) => Divider(),
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var medicamento = snapshot.data[index];
                  return ListTile(
                    leading: Icon(MdiIcons.pill),
                    title: Text(medicamento['nombre']),
                    trailing: Chip(
                      label: Text('stock'),
                      avatar: CircleAvatar(
                        child: Text(medicamento['stock'].toString()),
                        backgroundColor: medicamento['stock'] < 10
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }

  //método para obtener el nombre del usuario y mostrarlo en la página
  Future<String> getNombreUsuario() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString('user_name') ?? '';
  }

  //método para logout
  void logout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('access_token');
    sp.remove('user_email');
    sp.remove('user_name');
    MaterialPageRoute route =
        MaterialPageRoute(builder: (context) => LoginPage());
    Navigator.pushReplacement(context, route);
  }
}