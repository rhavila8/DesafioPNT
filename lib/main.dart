import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'terceira_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

// AGORA É STATEFULWIDGET
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // CONTROLA O TEXTO
  bool _showWelcomeText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),

      // MENU LATERAL
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            // PÁGINA INICIAL
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Página Inicial'),
              onTap: () {

                // ALTERA O ESTADO
                setState(() {
                  _showWelcomeText = true;
                });

                Navigator.pop(context);
              },
            ),

            // SEGUNDA TELA
            ListTile(
              leading: const Icon(Icons.arrow_forward),
              title: const Text('Segunda Tela'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
            ),

            // TERCEIRA TELA
            ListTile(
              leading: const Icon(Icons.arrow_forward),
              title: const Text('Terceira Tela'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TerceiraScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      // CORPO DA TELA
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // TEXTO CONDICIONAL
            if (_showWelcomeText)
              const Text(
                'Bem-vindo à Tela Inicial!',
                style: TextStyle(fontSize: 24),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              child: const Text('Ir para a Segunda Tela'),
            ),
          ],
        ),
      ),
    );
  }
}