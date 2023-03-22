import 'package:qr_flutter/qr_flutter.dart';
import '../utils/colors.dart';
import 'package:flutter/material.dart';
import '../Screens/register.dart';
import '../Widgets/widgets.dart';
import '../Widgets/buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameTextController = TextEditingController();
  String? data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            gradient: LinearGradient(
              colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4")
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  reusableTextField(
                    'Name',
                    Icons.person_outline,
                    false,
                    _nameTextController,
                  ),
                  const SizedBox(height: 20),
                  reusableTextField(
                    'Grade',
                    Icons.person_outline,
                    false,
                    _nameTextController,
                  ),
                  const SizedBox(height: 20),
                  reusableTextField(
                    'School',
                    Icons.person_outline,
                    false,
                    _nameTextController,
                  ),
                  const SizedBox(height: 20),
                  reusableTextField(
                    'Address',
                    Icons.person_outline,
                    false,
                    _nameTextController,
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: ElevatedButton(
                      style: buttonPrimary,
                      onPressed: () {
                        setState(() {
                          data = _nameTextController.text;
                        });
                      },
                      child: Text(
                        'Register & Generate The QR Code',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 114, 39, 200),
                        ),
                      ),
                    ),
                  ),
                  if (data != null) ...[
                    const SizedBox(height: 20),
                    Center(
                      child: QrImage(
                        data: data!,
                        version: QrVersions.auto,
                        size: 200.0,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class _SignUpScreenState extends State<SignUpScreen> {
//   TextEditingController _nameTextController = TextEditingController();
//   String? data;

//   @override
//   Widget build(BuildContext context) {
//     var center;
//     var alignment;
//     return SafeArea(
//         child: Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           'Sign Up',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//             hexStringToColor("CB2B93"),
//             hexStringToColor("9546C4"),
//             hexStringToColor("5E61F4")
//           ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   reusableTextField(
//                       'Name', Icons.person_outline, false, _nameTextController),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   reusableTextField('Grade', Icons.person_outline, false,
//                       _nameTextController),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   reusableTextField('School', Icons.person_outline, false,
//                       _nameTextController),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   reusableTextField('Adress', Icons.person_outline, false,
//                       _nameTextController),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                   Center(
//                     child: ElevatedButton(
//                       style: buttonPrimary,
//                       onPressed: () {
//                         setState(() {
//                           data = _nameTextController.text;
//                         });
//                         if (data != null)
//                           [
//                             const SizedBox(height: 20),
//                             Center(
//                               child: QrImage(
//                                 data: '$data',
//                                 version: QrVersions.auto,
//                                 size: 10,
//                               ),
//                             )
//                           ];
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (context) => SignUpScreen()));
//                       },
//                       child: Text(
//                         'Register & Generate The QR Code',
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: Color.fromARGB(255, 114, 39, 200),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     ));
//   }
// }
