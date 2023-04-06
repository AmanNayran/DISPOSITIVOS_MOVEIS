import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 350, right: 50, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                autofocus: true,
                controller: _nomeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Nome',
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  labelText: 'E-mail',
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          nome: _nomeController.text,
                          email: _emailController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text('Cadastrar'),
                ),
              )
            ]
          ),
        )
      )
    );
  }
}

class ProfilePage extends StatefulWidget {
  final String nome;
  final String email;

  const ProfilePage({required this.nome, required this.email});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/profile.png',
              height: 300
            ),
            SizedBox(height: 20),
            Text(
              'Nome',
            ),
            Text(
              widget.nome,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              'Email',
            ),
            Text(
              widget.email,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context, '/cadastro');
              },
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      )
    );
  }
}