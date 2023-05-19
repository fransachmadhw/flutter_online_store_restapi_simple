import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final bool isLoading;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          !isLoading ? onPressed() : {}, // prevent click when state is loading
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }
            return Colors.green;
          },
        ),
        // MaterialStateProperty.all(
        //   type == ButtonType.primary ? blue : white,
        // ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 8 * 2.2),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8 + 8 / 2),
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: 8 * 3,
              height: 8 * 3,
              child: CircularProgressIndicator(color: Colors.white),
            )
          : Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
    );
  }
}
