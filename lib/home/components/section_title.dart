import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.text,
    @required this.press,
    this.textmore,
  }) : super(key: key);

  final String text, textmore;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          GestureDetector(onTap: press, child: Text(textmore)),
        ],
      ),
    );
  }
}
