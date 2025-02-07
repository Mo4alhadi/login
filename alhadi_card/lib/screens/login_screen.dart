import 'package:flutter/material.dart';
import 'package:alhadi_card/widgets/alhadi_card.dart';
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});



  @override
  State<StatefulWidget> createState() => _LoginScreenState();
  }


class _LoginScreenState extends State<LoginScreen> {
  final _formKey=GlobalKey<FormState>();
  final TextEditingController _usernameController=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();

  bool _isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child:
        Form(
           key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username'
                  ),
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'You have to Enter the username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'You have to Enter the password';
                    }
                    if (value.length < 6) {
                      return 'the password must be 6 at least';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _isLoading ? null : _submit,
                  child: _isLoading
                      ? CircularProgressIndicator()
                      : Text('Login'),
                ),
              ],
            ),
        ),
      ),
    );
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      setState(() {
        _isLoading = false;
      });

      Navigator.pushNamed(context, '/home');





   }
  }
}