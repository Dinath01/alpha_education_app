import 'package:flutter/material.dart';
import '../Screens/search.dart';
import '../utils/colors.dart';
import '../Screens/subject_select.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Select Grade'),
          backgroundColor: Colors.transparent,
          elevation: 0,
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
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubjectPage()),
                );
              },
              child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    11,
                    (index) {
                      return Card(
                        color:  Color.fromARGB(255, 200, 0, 255),
                        elevation: 10.0,
                        margin: EdgeInsets.all(5.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "${index + 1}",
                              style: TextStyle(color: Colors.white, fontSize: 25.0),
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            )));
  }
}
