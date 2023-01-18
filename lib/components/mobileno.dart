import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MobileNo extends StatelessWidget {
  const MobileNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mobile No*",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 10),
        IntlPhoneField(
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.orange.shade400,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white54,),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
          ),
          initialCountryCode: 'IN',
          onChanged: (phone) {
            print(phone.countryCode);
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
