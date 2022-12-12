import 'package:flutter/material.dart';
import 'package:proyecto_dam1_pre_alfa/provider/provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MonturasPage extends StatefulWidget {
  MonturasPage({Key? key}) : super(key: key);

  @override
  State<MonturasPage> createState() => _MonturasPageState();

}


class _MonturasPageState extends State<MonturasPage> {
  Provider monturas = new Provider();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Text(
              'Listado de Monturas',
              style: TextStyle(fontFamily:'Warcraft',fontSize: 20),
            ),
          ),
          Expanded(
            child: FutureBuilder<dynamic>(
                future: monturas.getMonturas(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    //no han llegado datos de monedas
                    return Center(
                      child: Container(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Cargando datos",style: TextStyle(fontFamily:'Warcraft'),),
                            LinearProgressIndicator(),
                          ],
                        ),
                      ),
                    );
                  } else {
                    //llegaron datos de moneda
                    //return Text('datos ok');
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: Icon(MdiIcons.horseVariant),
                            title: Text(snapshot.data[index]['nombre'],style: TextStyle(fontFamily:'Warcraft'),),
                            subtitle: Text(snapshot.data[index]['ubicacion'],style: TextStyle(fontFamily:'Warcraft'),),
                            trailing: Text(snapshot.data[index]['nivel'].toString(),style: TextStyle(fontFamily:'Warcraft'),),
                          );
                        }));
                  }
                }),
          ),
        ],
      ),
    );
  }
}