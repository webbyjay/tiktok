import 'package:flutter/material.dart';
import 'package:flutter_application_14/screen/home_page.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Phone_num extends StatefulWidget {
  const Phone_num({super.key});

  @override
  State<Phone_num> createState() => _Phone_numState();
}

class _Phone_numState extends State<Phone_num> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Phone Number"),
          // actions: <Widget>[
          //   ElevatedButton(
          //     // textColor: Colors.white,
          //     onPressed: () {
          //       formKey.currentState?.save();
          //     },
          //     child: Text("Save"),
          //   ),
          // ],
        ),
        body: Form(
          key: formKey,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  textFieldController: controller,
                  formatInput: true,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: 190,
                  child: ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.save();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    ),
                    child: Text('Save'),
                  ),
                )
                // ElevatedButton(
                //   onPressed: () {
                //     formKey.currentState?.validate();
                //   },
                //   child: Text('Validate'),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     getPhoneNumber('+15417543010');
                //   },
                //   child: Text('Update'),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                // formKey.currentState?.save();
                //   },
                //   child: Text('Save'),
                // ),
              ],
            ),
          ),
        ));
  }
}
