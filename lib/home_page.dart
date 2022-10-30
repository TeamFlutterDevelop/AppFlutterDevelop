

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle sitio turistico POI"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Text(
                  'Around the world',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  margin: const EdgeInsets.all(20),
                  child: Image.asset('assets/iconequipaje.png'),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Ciudad: Bogota',
                ),
                const Text(
                  'Departamento: Cundinamarca',
                ),
                const Text(
                  'Temperatura: 21°C',
                ),
                const Text(
                    'Descripción: Bogotá Ciudad Capital del país de Colombia',
                ),
                const Text(
                  'Información de interés: Facebook: AroundWorld - Instagram: @World - Twitter: @_ARWorld',
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
