import 'package:flutter/material.dart';
import 'package:hng_task_two/constants.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.position,
      required this.age});

  final String firstName;
  final String lastName;
  final String position;
  final String email;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Display'),
      ),
      body: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Text(
                        'Name',
                        style: kFormTitle,
                      ),
                      Text('${firstName + ' ' + lastName}',
                          style: kFormValue.copyWith(fontSize: 24.0)),
                      Divider(),
                      Text(
                        'Email Address',
                        style: kFormTitle,
                      ),
                      Text(
                        email,
                        style: kFormValue,
                      ),
                      Divider(),
                      Text(
                        'Role',
                        style: kFormTitle,
                      ),
                      Text(
                        position,
                        style: kFormValue,
                      ),
                      Divider(),
                      Text(
                        'Age',
                        style: kFormTitle,
                      ),
                      Text(
                        age,
                        style: kFormValue,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Edit'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
