import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Phone_Number extends StatefulWidget {
  const Phone_Number({super.key});

  @override
  State<Phone_Number> createState() => _Phone_NumberState();
}

class _Phone_NumberState extends State<Phone_Number> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Phone Number"),
          actions: <Widget>[
            ElevatedButton(
              // textColor: Colors.white,
              onPressed: () {
                formKey.currentState?.save();
              },
              child: Text("Save"),
            ),
          ],
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

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
