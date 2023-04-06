import 'package:flutter/material.dart';

class PostoPage extends StatefulWidget {
  const PostoPage({super.key});

  @override
  State<PostoPage> createState() => _PostoPageState();
}

class _PostoPageState extends State<PostoPage> {
  final TextEditingController _valueGasonilaController = TextEditingController();
  final TextEditingController _valueAlcoolController = TextEditingController();
  bool abastecerAlcool = false;
  double calculo = 0;

  void _posto() {
    int valueGasolina = int.tryParse(_valueGasonilaController.text) ?? 0;
    int valueAlcool = int.tryParse(_valueAlcoolController.text) ?? 0;
    calculo = valueAlcool / valueGasolina * 100;
    abastecerAlcool = calculo >= 70;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posto'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(100),
          width: 300,
          child: Column(
            children: [
              Image.asset(
                "images/fuel.png",
                width: 300,
              ),
              const SizedBox(height: 10),
              TextField(
                autofocus: true,
                controller: _valueGasonilaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.local_gas_station_rounded),
                  labelText: 'Valor da Gasolina',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _valueAlcoolController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  icon: Icon(Icons.local_gas_station_rounded),
                  labelText: 'Valor do Alcool',
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: 120,
                child: ElevatedButton(
                  onPressed: _posto,
                  child: const Text('Calcular'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Resultado: ' + calculo.toStringAsFixed(2),
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                abastecerAlcool ? 'Alcool' : 'Gasolina',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        )
      ),
    );
  }
}