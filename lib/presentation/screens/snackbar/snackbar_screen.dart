import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('que onda'),
      action: SnackBarAction(label: 'NICE!', onPressed: (){}),
      duration: const Duration(seconds: 2),
      
      );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('When we first landed on the moon, the astronauts noted there was print on the moon that said “Chuck Norris was here.”. Chuck refers to himself in the fourth person. When Chuck Norris was born he drove his mom home from the hospital. Chuck Norris once won an underwater breathing contest. With a fish. Chuck Norris once shattered the space-time continuum. He felt so bad, he put it back together.'),
        actions: [
          TextButton(
            onPressed: ()=> context.pop(),
            child: const Text('Cancelar')
            ),
            FilledButton(
            onPressed: ()=>context.pop(),
            child: const Text('Aceptar')
            )
        ],
      ),);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),

      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('When Christopher Columbus discovered America, he was greeted by Chuck Norris.')
                  ]
                  );
              }, child: const Text('Licencias usadas')
              ),
            
             FilledButton.tonal(
              onPressed: () => openDialog(context),
               child: const Text('Mostrar dialogo')
              ),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.remove_red_eye_outlined),
         label: const Text('Mostrar Snackbar'),
         onPressed: () => showCustomSnackbar(context)
         ),
         
    );
  }
}
