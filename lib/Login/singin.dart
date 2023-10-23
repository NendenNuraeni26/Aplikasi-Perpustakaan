import 'package:flutter/material.dart';
import 'package:projek1/Tampilan1/navbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 97, 130, 100)),
                width: 360,
                height: 300,
              ),
              Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 110,
                left: 40,
                child: Image(
                  height: 150,
                  width: 300,
                  image: AssetImage("assets/loginku.png"),
                ),
              ),
              Positioned(
                top: 50,
                left: 120,
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
              Positioned(
                top: 270,
                left: 110,
                child: Text(
                  "Lest More Play Book",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 310),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextFieldLabel("Please enter your email"),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFieldLabel("Please enter your password"),
                    SizedBox(height: 10),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(width: 2),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: 200,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Navbar()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 97, 130, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Kirim",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("You Can't Login? Regist Pliss !"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldLabel extends StatelessWidget {
  final String text;

  TextFieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(color: Colors.black87, fontSize: 18),
      ),
    );
  }
}
