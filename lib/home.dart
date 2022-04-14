// ignore: import_of_legacy_library_into_null_safe

// ignore_for_file: import_of_legacy_library_into_null_safe, deprecated_member_use

import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String _myActivity;
  late String _myActivityResult;
  final formKey = new GlobalKey<FormState>();





var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  void saveData (){
    AlertDialog alertDIalog = AlertDialog(
    content : SizedBox(
      child: Column(
        children: <Widget>[
          Text('UserName : $controllerName.text'),
           Text('Password : $controllerPassword.text'),
           Text('My workout : $_myActivity.text'),
           RaisedButton(onPressed: ()=> Navigator.pop(context),
           color: Colors.teal)
           
        ],
    ),
    ),
    );
    showDialog(context: context, builder: (_)=> alertDIalog);
  }
  
  TextEditingController? controllerName;
  TextEditingController? controllerPassword;

      void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
    controllerName = TextEditingController();
    controllerPassword = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                 Padding(    
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    controller: controllerName,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  
                ),  
                 Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField( 
                    controller: controllerPassword, 
                    obscureText: true,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                  ),  
                ), 
                 Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: 'My workout',
                  hintText: 'Please choose one',
                  value: _myActivity,
                  onSaved: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Running",
                      "value": "Running",
                    },
                    {
                      "display": "Climbing",
                      "value": "Climbing",
                    },
                    {
                      "display": "Walking",
                      "value": "Walking",
                    },
                    {
                      "display": "Swimming",
                      "value": "Swimming",
                    },
                    {
                      "display": "Soccer Practice",
                      "value": "Soccer Practice",
                    },
                    {
                      "display": "Baseball Practice",
                      "value": "Baseball Practice",
                    },
                    {
                      "display": "Football Practice",
                      "value": "Football Practice",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
          
            ],
          ),
        ),
    ),
                RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('save'),  
                  onPressed: (){
saveData();
                  },  
                )  
              ],  
            )  
        )  
    );  
  }  
} 