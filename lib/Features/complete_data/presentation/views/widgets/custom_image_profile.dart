import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../register/presentation/views/widgets/custom_circle_widget.dart';

class CustomImageProfile extends StatelessWidget {
  const CustomImageProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 83,
              height: 83,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(41.5),
                border: Border.all(
                  color: kPrimaryColor,
                ),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://kafiil.s3.eu-central-1.amazonaws.com/media/avatar/f60d29a947c20a54c5d090a4b8a45e2e/ziKtCPFBwiAxd5y5n24JULOej4ENgsyi.png'),
                ),
              ),
            ),
            Positioned(
              top: 55,
              left: 55,
              child: GestureDetector(
                onTap: () {},
                child: const CustomCircleWidget(
                  color: kPrimaryColor,
                  backgroundColor: kPrimaryColor,
                  widget: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
