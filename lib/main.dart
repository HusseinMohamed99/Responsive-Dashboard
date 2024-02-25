import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/dashboard_layout_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 982),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          title: 'Responsive Dashboard',
          debugShowCheckedModeBanner: false,
          home: DashboardLayoutView(),
        );
      },
    );
  }
}
