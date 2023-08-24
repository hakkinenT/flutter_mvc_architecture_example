import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mvc_architecture_example/utils/input_formatter/date_formatter.dart';
import 'package:flutter_mvc_architecture_example/utils/input_formatter/phone_number_formatter.dart';
import 'package:flutter_mvc_architecture_example/view/widgets/customs/custom_elevated_button.dart';
import 'package:flutter_mvc_architecture_example/view/widgets/customs/custom_text_form_field.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Usuário'),
      ),
      body: const _RegisterUserBody(
        children: [
          _NameInput(),
          SizedBox(
            height: 18,
          ),
          _BirthDateInput(),
          SizedBox(
            height: 18,
          ),
          _PhoneInput(),
          SizedBox(
            height: 18,
          ),
          _EmailInput(),
          SizedBox(
            height: 18,
          ),
          _RegisterButton()
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(hintText: "John Doe", labelText: "Nome");
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
        hintText: "john@gmail.com", labelText: "Email");
  }
}

class _BirthDateInput extends StatelessWidget {
  const _BirthDateInput();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "01/01/1971",
      labelText: "Data de Nascimento",
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        DateFormatter(),
      ],
    );
  }
}

class _PhoneInput extends StatelessWidget {
  const _PhoneInput();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "(79) 9 9999-9999",
      labelText: "Telefone",
      inputFormatters: [
        LengthLimitingTextInputFormatter(16),
        PhoneNumberFormatter(phoneType: PhoneType.cellphone),
      ],
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
        onPressed: () {}, child: const Text("Cadastrar Usuário"));
  }
}

class _RegisterUserBody extends StatelessWidget {
  const _RegisterUserBody({
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
