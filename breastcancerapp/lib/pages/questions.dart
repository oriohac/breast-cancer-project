import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Questions extends StatefulWidget {
 const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
 
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'No';
     String? dropdownValue1 = 'Milky';
      String? dropdownValue2 = 'Young (14-25)';
    DateTime date = DateTime.now();
    String formattedDate = DateFormat('MMMM d, y').format(date);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Answer a few questions below on what you found.",style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.start,),
                Text('Today is: $formattedDate',style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17),),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Did you find a lump?',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.left,),
                  ],
                ),
                SizedBox(
                  width: 320,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      
                    ),
                    value: dropdownValue,
                    items: <String>['No', 'Yes']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value,style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffDB7D95),),
                    
                  ),
                ),
                
                
                
                const Text('Is there a history of breast cancer in your family?',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.start,),
                SizedBox(
                  width: 320,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),                
                    ),
                    value: dropdownValue,
                    items: <String>['No', 'Yes']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value,style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffDB7D95),),
                    
                  ),
                ),
                
                const Row(
          
                  children: [
                     Text('Have you had a nipple discharge?',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.start,),
                  ],
                ),
                SizedBox(
                  width: 320,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),                
                    ),
                    value: dropdownValue,
                    items: <String>['No', 'Yes']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value,style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffDB7D95),),
                    
                  ),
                ),
                
                const Text('If yes, choose an option that best describe the discharge',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.start,),
                SizedBox(
                  width: 320,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),                
                    ),
                    value: dropdownValue1,
                    items: <String>['Milky', 'Yellowish','Brownish','Redish']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value,style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffDB7D95),),
                    
                  ),
                ),
                
               const Row(
                  children: [
                     Text('How old are you?',style: TextStyle(fontFamily: 'Poppinsr',fontSize: 17),textAlign: TextAlign.start,),
                  ],
                ),
                SizedBox(
                  width: 320,
                  height: 60,
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 2.0, color: Color(0xff0A001E)),borderRadius: BorderRadius.all(Radius.circular(12))),                
                    ),
                    value: dropdownValue2,
                    items: <String>['Young (14-25)', 'Adult (26-60)','Aged (61>)']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(value: value, child: Text(value,style: const TextStyle(fontFamily: 'Poppinsr',fontSize: 17,),));
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffDB7D95),),
                    
                  ),
                ),
                Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              minimumSize: const Size(300, 62),
                              backgroundColor: const Color(0xffDB7D95),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/lowrisk');
                            },
                            child: const Text(
                              "NEXT",
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
