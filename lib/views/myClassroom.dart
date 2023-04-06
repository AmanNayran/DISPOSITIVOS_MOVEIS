import 'package:flutter/material.dart';

class MyClassroomPage extends StatefulWidget {
  const MyClassroomPage({super.key});

  @override
  State<MyClassroomPage> createState() => _MyClassroomPageState();
}

class _MyClassroomPageState extends State<MyClassroomPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 70, left: 70),
          child: Column(
            children: [
              const Text(
                'Atividades de Sala', 
                textAlign: TextAlign.center, 
                style: TextStyle(fontSize: 40, color: Colors.teal,),
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/posto');
                    }, 
                    child: Text('Posto')
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/cadastro');
                    }, 
                    child: Text('Perfil')
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/layout');
                    }, 
                    child: Text('Layout')
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/imc');
                    }, 
                    child: Text('Imc')
                  ),
                ]
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/tabBar');
                    }, 
                    child: Text('TabBar')
                  ),
                ]
              ),
            ],
          )
        ),
      ),
    );
  }
}
