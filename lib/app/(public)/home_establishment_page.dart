import 'package:flutter/material.dart';

import 'package:ijato/app/components/appbar_home.dart';
import 'package:ijato/app/components/avatar.dart';
import 'package:ijato/app/components/button_secondary.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:routefly/routefly.dart';

class HomeEstablishmentPage extends StatelessWidget {
  const HomeEstablishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _HomeEstablishmentPage(),
      ),
    );
  }
}

class _HomeEstablishmentPage extends StatelessWidget {
  const _HomeEstablishmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 175, child: AppbarHome()),
        SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 100, height: 100, child: LogoImage()),
                    SizedBox(width: 100, height: 100, child: AvatarImage())
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  "Meu estabelecimento:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 28),
                ButtonSecondary(
                  onPressedFunc: () {
                    Routefly.navigate('/login');
                  },
                  iconButtonSecondary: Icons.account_box,
                  buttonSecondaryName: 'Editar Perfil',
                  color: Colors.blue,
                ),
                const SizedBox(height: 25),
                ButtonSecondary(
                  onPressedFunc: () {
                    Routefly.navigate('/login');
                  },
                  iconButtonSecondary: Icons.monetization_on_sharp,
                  buttonSecondaryName: 'Financeiro',
                  color: Colors.green,
                ),
                const SizedBox(height: 25),
                ButtonSecondary(
                  onPressedFunc: () {
                    Routefly.navigate('/login');
                  },
                  iconButtonSecondary: Icons.schedule,
                  buttonSecondaryName: 'Agendamentos',
                  color: Colors.red,
                ),
                const SizedBox(height: 25),
                ButtonSecondary(
                  onPressedFunc: () {
                    Routefly.navigate('/login');
                  },
                  iconButtonSecondary: Icons.construction,
                  buttonSecondaryName: 'Serviços',
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
