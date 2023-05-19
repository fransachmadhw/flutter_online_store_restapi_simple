import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_online_store_restapi_simple/home_page.dart';
import 'package:flutter_online_store_restapi_simple/widgets/primary_button.dart';
import 'package:flutter_online_store_restapi_simple/widgets/primary_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          padding: const EdgeInsets.all(8 * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 8 * 2,
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.network(
                        'https://fakeapi.platzi.com/platzi_favicon.png'),
                  ),
                  Text("Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("Find anything on Platzi Fake Store",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 18)),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              const PrimaryInput(
                label: "Email",
                placeholder: "fortunecookie@gmail.com",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 12,
              ),
              const PrimaryInput(
                label: "Password",
                placeholder: "Min. 8 Characters",
                isPassword: true,
              ),
              SizedBox(
                height: 12,
              ),
              PrimaryButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomePage();
                })),
                title: "Sign In",
                isLoading: false,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
