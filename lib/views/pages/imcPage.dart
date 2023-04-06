import 'package:flutter/material.dart';

class imcPage extends StatefulWidget {
  const imcPage({super.key});

  @override
  State<imcPage> createState() => _imcPageState();
}

class _imcPageState extends State<imcPage> {
  final TextEditingController _valuePesoController = TextEditingController();
  final TextEditingController _valueAlturaController = TextEditingController();
  double calculo = 0;

  void imc() {
    double peso = double.tryParse(_valuePesoController.text) ?? 0;
    double altura = double.tryParse(_valueAlturaController.text) ?? 0;

    calculo = peso / (altura * altura);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imc'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              _valuePesoController.text = "";
              _valueAlturaController.text = "";
              calculo = 0;
              setState(() {});
            }, 
            icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(100),
          width: 300,
          child: Column(
            children: [
              Image.network(
                "images/profile.png",
                width: 300,
              ),
              const SizedBox(height: 10),
              TextField(
                autofocus: true,
                controller: _valuePesoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.fitness_center),
                  labelText: 'Peso (Kg)',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _valueAlturaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.height),
                  labelText: 'Altura (cm)',
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: 120,
                child: ElevatedButton(
                  onPressed: imc,
                  child: const Text('Calcular'),
                ),
              ),
              
              const SizedBox(height: 20),
              Text(
                'Seu IMC é ' + calculo.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        )
      ),
    );
  }
}