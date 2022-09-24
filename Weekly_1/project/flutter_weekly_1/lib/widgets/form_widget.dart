import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF2B2937),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'images/icon_user.png',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: txtName,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Your Name',
                        hintStyle: TextStyle(
                          color: Color(0xFF504F5E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF2B2937),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'images/icon_email.png',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: txtEmail,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: TextStyle(
                          color: Color(0xFF504F5E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Message',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 55,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF2B2937),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'images/icon_chat.png',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: txtMessage,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Your Message',
                        hintStyle: TextStyle(
                          color: Color(0xFF504F5E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.only(top: 30),
            child: TextButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  backgroundColor: const Color(0xFF6C5ECF),
                  confirmBtnColor: const Color(0xFF6C5ECF),
                  title: 'Selamat Pendaftaran Berhasil !!',
                  text:
                      "Nama : ${txtName.text}\nEmail : ${txtEmail.text}\nIsi Pesan : ${txtMessage.text} ",
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF6C5ECF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
