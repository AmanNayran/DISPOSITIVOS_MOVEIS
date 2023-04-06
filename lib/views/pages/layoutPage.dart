import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página de Testes"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 30, left: 30),
          child: Column(
            children: [
              const Text(
                'Layout', 
                textAlign: TextAlign.center, 
                style: TextStyle(fontSize: 40, color: Colors.teal,),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal[100],
                      height: 200,
                    ),
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    child: Container(
                      color: Colors.teal[900],
                      height: 200,
                    )
                  )
                ]
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal[500],
                      height: 200,
                    )
                  ),
                ]
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.teal[100],
                      height: 200,
                    ),
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    child: Container(
                      color: Colors.teal[900],
                      height: 200,
                    )
                  ),

                  SizedBox(width: 20),

                  Expanded(
                    child: Container(
                      color: Colors.teal[100],
                      height: 200,
                    ),
                  ),
                ]
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dangerous_outlined),
            label: 'Testing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dangerous_outlined),
            label: 'Testing',
          ),
          
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        unselectedItemColor: Colors.teal[300],
        selectedItemColor: Colors.teal[800],
      ),
    );
  }
}