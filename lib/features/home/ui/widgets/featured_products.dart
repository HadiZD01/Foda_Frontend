import 'package:flutter/material.dart';
import 'package:fodaapp/core/theming/styles.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/Divider.png'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Featured Products', style: TextStyles.font20BlackBold),
                Text(
                  'Curated luxury for the season',
                  style: TextStyles.font12GrayRegular,
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('View All >', style: TextStyles.font15yellowbold),
            ),
          ],
        ),
      ],
    );
  }
}
