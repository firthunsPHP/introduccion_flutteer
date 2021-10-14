import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {


  @override
  _ContadorPageState createState() => _ContadorPageState();

}


class _ContadorPageState extends State<ContadorPage> {

  TextStyle estilo = new TextStyle(
      fontSize: 25, color: Colors.blue, fontWeight: FontWeight.w600);

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar del Scaffold'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hola Mundo', style: estilo),
            Image.network(
              'https://pbs.twimg.com/profile_images/942986393940385793/Uc6KUS14_400x400.jpg',
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(contador.toString(), style: estilo)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState( (){
      //       setState(() {
      //         contador += 1;
      //       });
      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: _crearBotones(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
      ),
    );
  }

Widget _crearBotones() {
    //3 botones en fila sumar, restar, reset

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize(15),
      children: [

        FloatingActionButton(
            onPressed: _restar,
            child: Icon(Icons.remove),

        ),
        FloatingActionButton(
          onPressed: _sumar,
          child: Icon(Icons.add),

        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Icon(Icons.exposure_zero),

        ),

      ],
    );
}

  void _restar() {
    setState(() => contador-- );
  }
  void _reset() {
    setState(() => contador =0 );
  }
  void _sumar() {
    setState(() => contador++ );
  }
}
