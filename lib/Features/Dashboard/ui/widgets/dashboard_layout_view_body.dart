import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Core/helpers/utils/spacing.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/custom_drawer.dart';

class DashboardLayoutViewBody extends StatelessWidget {
  const DashboardLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        horizontalSpacing(32),
        const Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
