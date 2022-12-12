import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proyecto_dam1_pre_alfa/screens/Inicio_screen.dart';
import 'package:proyecto_dam1_pre_alfa/screens/login2.dart';
import 'package:proyecto_dam1_pre_alfa/provider/provider.dart';
import 'package:proyecto_dam1_pre_alfa/screens/dungeons_screen.dart';

class LoginPage extends StatefulWidget {
  //const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  final GlobalKey<ScaffoldState> _botonkey = new GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

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
             width: 400.0,
             height: 400.0,
             decoration: BoxDecoration(
               color: const Color(0xff7c94b6),
               image: DecorationImage(
                 image: AssetImage('assets/icecrown.jpg'),
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
            margin: EdgeInsets.all(40),
            key: formKey,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                campoEmail(),
                espacion(),
                campoPassword(),
                //botonLogin(),
                botonXD(),   
              ],
            ),
           ),
/*          Form(                 
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.all(20)),
                campoEmail(),
                espacion(),
                campoPassword(),
                //botonLogin(),
                botonXD(),
              ],
            )
          ), */
        ],
      ),
    );
  }

  TextFormField campoEmail() {
    return TextFormField(
      controller: emailCtrl,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12), isDense: true,
        fillColor: Colors.white,
        filled: true,
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.lightBlue),
        border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(5.0),
            ),
          ),
        ),
      keyboardType: TextInputType.emailAddress,
    );
  }
  Container espacion(){
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [

        ],
      ),
    );
  }

  TextFormField campoPassword() {
    return TextFormField(
      controller: passwordCtrl,
      
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        fillColor: Colors.white,
        filled: true,
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.lightBlue),
        border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(5.0),
            ),
          ),
        ),
      obscureText: true,
    );
  }

 

  Container botonLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Iniciar Sesión'),
        onPressed: () {
          // MedicamentosProvider provider = MedicamentosProvider();
          //como el objeto se utiliza una sola vez -->
          Provider()
              .login(emailCtrl.text.trim(), passwordCtrl.text.trim())
              .then((loginOk) {
            if (loginOk) {
              //generar una ruta
              MaterialPageRoute route =
                  MaterialPageRoute(builder: (context) => InicioScreen());
              Navigator.pushReplacement(context, route);
            } else {
              //mostra login fallido
            }
          });
        },
      ),
    );
  }

  Container botonXD() {
    return          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: GestureDetector(
                onTap:(){if(emailCtrl.text.isEmpty || passwordCtrl.text.isEmpty){
            showDialog(context: context, 
            builder: (context)=>AlertDialog(
              title: Text('Error'),
              content: Text('Ingrese datos de Ingreso'),
              actions: [
                TextButton(onPressed: ()=>Navigator.pop(context), child: Text('OK'))
              ],
            ));

          }else{
            Navigator.push(context,MaterialPageRoute(builder: (context) => InicioScreen()),);
        };},
              child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 39, 103, 176),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(4,4),
                      ),
                    ]
                  ),
                  child: Center(
                    child: Text("Ingresar",style: TextStyle(color: Color.fromARGB(255, 39, 71, 176),)),
                  ),
                ),
              ),
            ),
          );   
  }

//Navigator.push(context,MaterialPageRoute(builder: (context) => InicioScreen()),);

     
  
}

