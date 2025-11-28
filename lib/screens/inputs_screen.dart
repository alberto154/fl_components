import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Tony',
      'last_name' : 'Stark',
      'email'     : 'tony.stark@gmail.com',
      'password'  : '123456',
      'role'      : 'usuario',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                icon: Icons.account_circle,
                suffixIcon: Icons.person,
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                hintText: 'Apellido',
                labelText: 'Apellido',
                icon: Icons.account_circle_outlined,
                suffixIcon: Icons.person_2_outlined,
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                hintText: 'E-Mail de registro',
                labelText: 'E-Mail',
                icon: Icons.email,
                suffixIcon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                icon: Icons.lock,
                suffixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {

                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no válido');
                    return;
                  }
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

