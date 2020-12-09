import 'package:flutter/material.dart';
import 'package:hello_app/core/colors.dart';
import 'package:hello_app/core/components/app_powered_text.dart';
import 'package:hello_app/core/components/app_primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 64.0),
                        Center(
                          child: Image.asset(
                            '/images/logo.png',
                            width: 300,
                          ),
                        ),
                        SizedBox(height: 128.0),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'User Name',
                          ),
                        ),
                        SizedBox(height: 16.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        SizedBox(height: 32.0),
                        AppPrimaryButton(
                          onPressed: () => {print('Login Sucess')},
                          child: Text('LOGIN'),
                        ),
                        SizedBox(height: 32.0),
                        Center(
                          child: FlatButton(
                            onPressed: () => {print('Forget Password')},
                            autofocus: false,
                            hoverColor: Color.fromRGBO(255, 255, 255, 0),
                            color: Color.fromRGBO(255, 255, 255, 0),
                            splashColor: Color.fromRGBO(255, 255, 255, 0),
                            highlightColor: Color.fromRGBO(255, 255, 255, 0),
                            child: Text(
                              'Forget Password',
                              style: TextStyle(
                                  color: appPrimaryColor,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              AppPoweredText()
            ],
          )),
    );
  }
}
