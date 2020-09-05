import 'package:flutter/material.dart'; //framework para que nos de un amano el id
void main(){

  runApp(MyApp()); //metodo es tambien un widget
}
class MyApp extends StatelessWidget{     //definimos clase may app y extendemos a presentaciones estaticas de nuestra aplicacion
  @override
  Widget build(BuildContext context) { //el metodo buil retorna un widget
   return MaterialApp(
     title: "Practica 2",
     theme: ThemeData(
       primarySwatch: Colors.blue, //paleta de colores
      visualDensity: VisualDensity.adaptivePlatformDensity
     ),
     home: Scaffold(
       body: Container(
         padding: EdgeInsets.all(50),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           //mainAxisSize: MainAxisSize.max,


            children: <Widget>[
              Text(
                  "Contact us",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "E-mail: ",
                style: TextStyle(
                  fontSize:   25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Celular: ",
                style: TextStyle(
                  fontSize:   25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Mensaje: ",
                style: TextStyle(
                  fontSize:   25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                maxLines: (9),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Se la copia de ti mismo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:   20,

                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Suscribete a nuestra revista",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:   20,

                    ),
                  ),
                ],
              ),

         RaisedButton(
           onPressed: () {},
           padding: EdgeInsets.only(
             top: 16,
             bottom: 16,
           ),

           child: const Text('Fin',
             style: TextStyle(fontSize: 29,color:Colors.white, fontWeight: FontWeight.bold)),
           color: Colors.orange,

         ),

              Text('(*) Requerimiento obligatorio',
                style: TextStyle(fontSize: 17,
                fontWeight: FontWeight.bold,
                ),

              ),
            ],
         ),
       )
     ),
   );
  }

}
