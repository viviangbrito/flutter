import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cineando',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MovieDetailPage(),
    );
  }
}

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Filme Selecionado'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Ainda Estou Aqui',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Center(
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/pt/5/57/Ainda_Estou_Aqui_2024_poster.jpg',
                  width: 300,
                  height: 450,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Horários de Exibição:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: <Widget>[
                  Chip(
                    label: const Text('14:00'),
                    backgroundColor: Colors.grey[400],
                  ),
                  Chip(
                    label: const Text('16:30'),
                    backgroundColor: Colors.grey[400],
                  ),
                  Chip(
                    label: const Text('19:00'),
                    backgroundColor: Colors.green[300],
                  ),
                  Chip(
                    label: const Text('21:30'),
                    backgroundColor: Colors.green[300],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Sinopse:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Aqui ficará a sinopse que detalha a trama e outros detalhes importantes do filme.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
