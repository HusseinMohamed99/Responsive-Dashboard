import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/dashboard_layout_view_body.dart';

class DashboardLayoutView extends StatelessWidget {
  const DashboardLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      body: DashboardLayoutViewBody(),
    );
  }
}
