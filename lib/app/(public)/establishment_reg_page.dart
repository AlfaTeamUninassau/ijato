import 'package:flutter/material.dart';

import 'package:ijato/app/components/background_image.dart';
import 'package:ijato/app/components/check_box.dart';
import 'package:ijato/app/components/logo.dart';
import 'package:ijato/app/components/button_primary.dart';
import 'package:ijato/app/components/text_field.dart';
import 'package:ijato/app/components/underlined_text.dart';

class EstablishmentReg extends StatelessWidget {
  const EstablishmentReg({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _EstablishmentReg(),
      ),
    );
  }
}

class _EstablishmentReg extends StatelessWidget {
  const _EstablishmentReg();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const BackgroundImage(),
        SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  const LogoImage(),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "nome"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "sobrenome"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "e-mail"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "telefone"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "senha"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "confirmar senha"),
                  const SizedBox(height: 15),
                  const Text(
                    "Estabelecimento",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "CEP"),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width / 1.5,
                        child: const TextFieldPrimary(textFieldName: "rua"),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        width: size.width / 5,
                        child: const TextFieldPrimary(textFieldName: "N°"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "nome"),
                  const SizedBox(height: 15),
                  const TextFieldPrimary(textFieldName: "CPF/CNPJ"),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CheckBox(),
                      UnderlinedText(
                        underlinedText: "Li e aceito os termos",
                        nextState: "#",
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const ButtonPrimary(
                    color: Colors.blue,
                    buttonPrimaryName: "cadastrar",
                    nextState: "/home_establishment",
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ja possui um",
                        style: TextStyle(color: Colors.white70),
                      ),
                      UnderlinedText(
                        underlinedText: "login?",
                        nextState: "/login",
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
