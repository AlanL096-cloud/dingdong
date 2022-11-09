import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/card_container.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 252, 252, 1),

      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          CardContainer(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Crear cuenta nueva',
                  style: TextStyle(
                      color: Color.fromRGBO(253, 0, 251, 1), fontSize: 30),
                ),
                Container(
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 10,
                  width: double.infinity,
                  color: Color.fromRGBO(253, 0, 251, 1),
                ),

                SizedBox(
                  height: 10,
                ),
                _LoginForm(),

                // ChangeNotifierProvider(
                //     create: (_) => LoginFormProvider(), child: _LoginForm()),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Iniciar Sesión',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        // key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Container(
              // padding: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              // height: 50,
              width: double.infinity,
              child: Text(
                'Nombre:',
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 223, 235),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(0, 252, 252, 1),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(253, 0, 251, 1),
                    width: 2.0,
                  ),
                ),
                hintText: 'Ingrese su nombre',
                prefixIcon: Icon(
                  Icons.person_outline,
                  color: Color.fromRGBO(0, 252, 252, 1),
                  size: 30,
                ),
              ),
              validator: (value) {
                return value == '' ? 'Tiene que Ingresar su nombre' : null;
              },
            ),
            Container(
              // padding: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              // height: 50,
              width: double.infinity,
              child: Text(
                'Edad:',
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 223, 235),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(0, 252, 252, 1),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(253, 0, 251, 1),
                    width: 2.0,
                  ),
                ),
                hintText: 'Ingrese su Edad',
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Color.fromRGBO(0, 252, 252, 1),
                  size: 30,
                ),
              ),
              validator: (value) {
                return value == '' ? 'Tiene que Ingresar su Edad' : null;
              },
            ),
            Container(
              // padding: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              // height: 50,
              width: double.infinity,
              child: Text(
                'Correo:',
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 223, 235),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(0, 252, 252, 1),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(253, 0, 251, 1),
                    width: 2.0,
                  ),
                ),
                hintText: 'Ingrese su correo electrónico',
                prefixIcon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(0, 252, 252, 1),
                  size: 30,
                ),
              ),
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                    ? null
                    : 'El correo no es valido';
              },
            ),
            Container(
              // padding: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10),
              // height: 50,
              width: double.infinity,
              child: Text(
                'Cotraseña:',
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 223, 235),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(0, 252, 252, 1),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(253, 0, 251, 1),
                    width: 2.0,
                  ),
                ),
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.key,
                  color: Color.fromRGBO(0, 252, 252, 1),
                  size: 30,
                ),
              ),
              validator: (value) {
                if (value != null && value.length >= 6) return null;
                return 'La contraseña debe ser de al menos 6 caracteres';
              },
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              disabledColor: Colors.grey,
              color: Color.fromRGBO(253, 0, 251, 1),
              elevation: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  "REGISTRARSE",
                  // Text(
                  //   loginForm.isLoading ? 'Espere...' : 'Ingresar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () => {},
              // onPressed: loginForm.isLoading
              //     ? null
              //     : () async {
              //         FocusScope.of(context).unfocus();
              //         if (!loginForm.isValidForm()) return;
              //         loginForm.isLoading = true;
              //         await Future.delayed(Duration(seconds: 2));
              //         Navigator.pushReplacementNamed(context, 'home');
              //       },
            ),
          ],
        ),
      ),
    );
  }
}
