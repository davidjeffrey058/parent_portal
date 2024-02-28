import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Form(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                  label: Text('password'),
                  prefixIcon: Icon(Icons.lock_outline)
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: (){},
                child: const Text('Forgot Password'),
              ),
            ),
            const SizedBox(height: 40,),
            const Text('or continue with', style: TextStyle(fontSize: 11),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: const CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('images/google.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(width: 40,),
                InkWell(
                  onTap: (){},
                  child: const CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('images/facebook.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){},
                child: const Text('Sign in')
            ),
            const SizedBox(height: 25,),
            const Text('I\'m not a member' ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
