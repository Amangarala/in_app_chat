import 'package:flutter/material.dart';
import 'package:in_app_chat/home.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userId=TextEditingController();
  final userName=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: userId,
                          decoration: const InputDecoration(labelText: 'user ID'),
                        ),
                        TextFormField(
                          controller: userName,
                          decoration: const InputDecoration(labelText: 'user name'),
                        ),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: ()async{
                          await ZIMKit().connectUser(
                              id: userId.text, name: userName.text);
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context)=>const MyHomePage()
                            ),
                          );
                        }, child: const Text('login'),
                        )
                      ],
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
