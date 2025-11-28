import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    print("HOla mundo");
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alerta!!'),
        content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Este es el contenido de la alerta'),
          SizedBox(height: 20,),
          FlutterLogo(size: 100,),
        ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cerrar'))
        ],
      ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
            ),
          onPressed: () => displayDialog(context),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}