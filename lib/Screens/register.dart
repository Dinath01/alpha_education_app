
import '../utils/colors.dart';
import 'package:flutter/material.dart';
import '../Screens/register.dart';
import '../Widgets/widgets.dart';
import '../Widgets/buttons.dart';


// class SignPage extends StatefulWidget {
//   const SignPage({ Key? key }) : super(key: key);

//   @override
//   State<SignPage> createState() => _SignPageState();
// }

// class _SignPageState extends State<SignPage> {
//    TextEditingController _nameTextController = TextEditingController();
//   TextEditingController _GradeTextController = TextEditingController();
//   TextEditingController _contactNumberController = TextEditingController();
//   TextEditingController _schoolTextController = TextEditingController();
//   TextEditingController _addTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _GradeTextController = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();
  TextEditingController _schoolTextController = TextEditingController();
  TextEditingController _addTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(20,120,20,0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              reusableTextField('Name', Icons.person_outline, false, _nameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField('Grade', Icons.person_outline, false, _GradeTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField('School', Icons.person_outline, false, _schoolTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField('Adress', Icons.person_outline, false, _addTextController),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 114, 39, 200),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
        )),
      );
  }

  //reusableTextField(String s, IconData person_outline, bool bool, TextEditingController nameTextController) {}
}

