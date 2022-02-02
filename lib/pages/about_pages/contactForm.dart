import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  // to send mail
  Future sendEmail({
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    final serviceId = 'service_5dfr2or';
    final templateId = 'template_y8mljzt';
    final userId = 'user_qvJ4ybFmRtyRVeVy20BEY';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'email': email,
            'phone': phone,
            'message': message,
          }
        }));
  }

  @override
  Widget build(BuildContext context) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    return Container(
      margin: EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(children: [
                FormBuilderTextField(
                    name: 'Name',
                    decoration: InputDecoration(labelText: 'Name'),
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorRadius: Radius.circular(100),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'please enter name';
                      }
                    }),
                FormBuilderTextField(
                    name: 'Email',
                    decoration: InputDecoration(labelText: 'Email'),
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorRadius: Radius.circular(100),
                    validator: (val) =>
                        (val == null || val.isEmpty || !val.contains("@"))
                            ? "enter a valid eamil"
                            : null,
                    keyboardType: TextInputType.emailAddress),
                FormBuilderTextField(
                  name: 'Phone Number',
                  decoration: InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.length == 0) {
                      return "Mobile is Required";
                    } else if (value.length != 10) {
                      return "Mobile number must 10 digits";
                    } else if (!regExp.hasMatch(value)) {
                      return "Mobile Number must be digits";
                    }
                    return null;
                  },
                ),
                FormBuilderTextField(
                  name: 'Message',
                  decoration: InputDecoration(labelText: 'Message'),
                  cursorRadius: Radius.circular(100),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 1,
                  maxLines: 5,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    // to reset the text inside textfield

                    // _formKey.currentState?.reset();

                    // to read valuye enetered in text field

                    final name1 = _formKey.currentState?.fields['Name']?.value;
                    final phone1 =
                        _formKey.currentState?.fields['Phone Number']?.value;
                    final email1 =
                        _formKey.currentState?.fields['Email']?.value;
                    final message1 =
                        _formKey.currentState?.fields['Message']?.value;

                    // print(data);

                    if (_formKey.currentState!.validate()) {
                      sendEmail(
                          email: email1,
                          message: message1,
                          name: name1,
                          phone: phone1);
                      _formKey.currentState?.reset();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('Message sent succesfully'),
                            backgroundColor: context.accentColor),
                      );
                    } else {
                      return;
                    }
                    //  FormBuilder.autovalidateMode=AutovalidateMode.onUserInteraction;
                  },
                ),
              ]),

              // autovalidateMode: AutovalidateMode.onUserInteraction,
              // initialValue: {
              //   'First Name': 'enter your first name',
              // },
              skipDisabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
