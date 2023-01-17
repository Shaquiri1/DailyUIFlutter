import 'package:day001/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
              padding: const EdgeInsets.only(top: 78, left: 128, right: 61),
              decoration: const BoxDecoration(color: primaryColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Logo.png'),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text(
                    "Why our service?",
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                  Column(
                    children: [
                      BulletPoint(
                          text:
                              "We’re animal lovers backed by insurance and experience"),
                      BulletPoint(
                          text:
                              "Powered by tech, so you can book and pay from our app"),
                      BulletPoint(
                          text:
                              "Updates and pics for every visit keep you in the loop"),
                    ],
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Center(
              child: SizedBox(
                width: 385,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "First, let's make sure we serve your area",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 48,
                      ),
                    ),
                    const SizedBox(height: 75),
                    SizedBox(
                      width: 190,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Zip Code",
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        onSubmitted: (value) => {
                          // ToDo: Navigate to next Page
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BulletPoint extends StatelessWidget {
  BulletPoint({
    Key? key,
    this.text,
  }) : super(key: key);

  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 66, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "\u2022",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(
              width: 24,
            ),
            Flexible(
              child: Text(
                text ?? "",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ));
  }
}
