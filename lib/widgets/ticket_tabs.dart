import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)
        ),
        child: Row(
          children: [
            //airline_tikes
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width*.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            /*
                hotels
                 */
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width*.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.grey.shade200
              ),
              child: Center(
                child: Text(secondTab),
              ),
            )
          ],
        ),
      ),
    );
  }
}
