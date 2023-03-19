import 'package:flutter/material.dart';
import '../Screens/start_screen.dart';
import '../Screens/register.dart';
import '../utils/colors.dart';
import '../Widgets/widgets.dart';
import '../Widgets/buttons.dart';
import '../Screens/search.dart';
import '../Screens/grade_select.dart';

class LogInScreen  extends StatefulWidget {
  LogInScreen ({ Key? key }) : super(key: key);

@override
 LogInScreenState createState() => LogInScreenState();
}


class LogInScreenState extends State<LogInScreen> {
  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _GradeTextController = TextEditingController();

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
              //reusableTextField('Grade', Icons.person_outline, false, _GradeTextController),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  child: Text(
                    'Search',
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
  }}