import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {});
  }

    void decrementar(){
    contador--;
    setState(() {});
  }

    void reset(){
    contador=0;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {

    const tamano30 = TextStyle( fontSize: 25 );
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Contador', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        
        elevation: 20,
      ),
      backgroundColor: Colors.white,
      body: Center(
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Número de clics', style: tamano30),
                  Text('$contador', style: tamano30),
                ],
              ) 
              //Text('Hola mundo desde HomeScreen'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CustomFloatingActionButton(incrementarFn: incrementar, decrementarFn: decrementar, resetearFn: reset)
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetearFn;

  const CustomFloatingActionButton({
    Key? key, required this.incrementarFn, required this.decrementarFn, required this.resetearFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon( Icons.remove),
          //child: Text("Añadir"),
          onPressed: () => decrementarFn()
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Text("0"),
          //child: Text("Añadir"),
          onPressed: () => resetearFn()
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon( Icons.add),
          //child: Text("Añadir"),
          onPressed: () => incrementarFn()
        ),
      ],
    );
  }
}