import 'package:flutter/material.dart';
import 'package:hng_task_two/screens/display_screen.dart';
import 'package:hng_task_two/constants.dart';
class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // String firstName = '';
  // String lastName = '';
  // String position = '';
  // String email = '';
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final positionController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final scrollController = ScrollController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        width: 100.0,
                        height: 100.0,
                        image: AssetImage('assets/images/hng.jpg'),
                      ),
                      SizedBox(height: 8.0),
                    ],
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Fill Forms',
                              style: TextStyle(
                                color: Colors.black45,
                                  fontSize: 20.0, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: firstNameController,
                              decoration: kTextFieldDecoration.copyWith(
                                  labelText: 'First Name'),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: lastNameController,
                              decoration: kTextFieldDecoration.copyWith(
                                  labelText: 'Last name'),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Email',
                                  ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 240.0,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: positionController,

                                    decoration: kTextFieldDecoration.copyWith(
                                        labelText: 'Position'
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    maxWidth: 100.0

                                ),
                                width: 100.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                                  child: TextFormField(
                                    controller: ageController,
                                    keyboardType: TextInputType.number,

                                    decoration: kTextFieldDecoration.copyWith(
                                        labelText: 'Age'
                                    ),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {

                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context)=>ProfileScreen(
                                            firstName: firstNameController.text,
                                            lastName: lastNameController.text,
                                            email: emailController.text,
                                            position: positionController.text,
                                            age: ageController.text,
                                          ))
                                      );
                                    }
                                  },
                                  child: const Text('Submit'),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                      setState(() {
                                        firstNameController.text = '';
                                        lastNameController.text = '';
                                        positionController.text = '';
                                        emailController.text = '';
                                        ageController.text = '';
                                      });
                                  },
                                  child: const Text('Clear'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
