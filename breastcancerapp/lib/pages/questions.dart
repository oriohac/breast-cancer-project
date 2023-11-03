import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  String lump = 'No';
  String history = 'No';
  String discharge = 'No';
  String describe = 'None';
  String age = 'Young (14-25)';
  @override
  Widget build(BuildContext context) {
    void healthStatus() {
      if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/norisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/norisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/norisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/norisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'No' &&
          describe == 'None' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/norisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Milky' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == '') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Yellow' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Young (14-25)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Young (14-25)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/lowrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Adult (26-45)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Adult (26-45)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'No') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Old (46>)' &&
          lump == 'No' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'No') {
        Navigator.pushNamed(context, '/highrisk');
      } else if (discharge == 'Yes' &&
          describe == 'Redish, Brownish or Clear' &&
          age == 'Old (46>)' &&
          lump == 'Yes' &&
          history == 'Yes') {
        Navigator.pushNamed(context, '/highrisk');
      } else {
        Navigator.pushNamed(context, '/highrisk');
      }
    }

    DateTime date = DateTime.now();
    String formattedDate = DateFormat('MMMM d, y').format(date);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: SizedBox(
                    width: 320,
                    child: Text(
                                      "Answer a few questions below on what you found.",
                                      style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                      textAlign: TextAlign.start,
                                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                            color: Color(0xffDB7D95),
                          )),
                          onPressed: () {},
                          child: Text(
                            'Today is: $formattedDate',
                            style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                                color: Color.fromARGB(255, 8, 29, 65)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                                          'Did you find a lump?',
                                          style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                          textAlign: TextAlign.left,
                                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    height: 48,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      value: lump,
                      items: <String>['No', 'Yes']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                              ),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          lump = newValue!;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffDB7D95),
                      ),
                    ),
                  ),
                ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                                          'Is there a history of breast cancer in your family?',
                                          style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                          textAlign: TextAlign.start,
                                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    height: 48,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                         contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      value: history,
                      items: <String>['No', 'Yes']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                              ),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          history = newValue!;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffDB7D95),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                                          'Have you had a nipple discharge?',
                                          style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                          textAlign: TextAlign.start,
                                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    height: 48,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                         contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      value: discharge,
                      items: <String>['No', 'Yes']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                              ),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          discharge = newValue!;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffDB7D95),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                                          'If yes, choose an option that best describe the discharge',
                                          style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                          textAlign: TextAlign.start,
                                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    height: 48,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                         contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      value: describe,
                      items: <String>[
                        'None',
                        'Milky',
                        'Yellow',
                        'Redish, Brownish or Clear'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                              ),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          describe = newValue!;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffDB7D95),
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 320,
                      child: Text(
                                          'How old are you?',
                                          style: TextStyle(fontFamily: 'Poppinsr', fontSize: 17),
                                          textAlign: TextAlign.start,
                                        ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: SizedBox(
                    width: 320,
                    height: 48,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                         contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2.0,
                                color: Color(0xff0A001E)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                      value: age,
                      items: <String>[
                        'Young (14-25)',
                        'Adult (26-45)',
                        'Old (46>)'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Poppinsr',
                                fontSize: 17,
                              ),
                            ));
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          age = newValue!;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffDB7D95),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        minimumSize: const Size(300, 62),
                        backgroundColor: const Color(0xffDB7D95),
                      ),
                      onPressed: () {
                        healthStatus();
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 24,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
