import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_dashboard/Core/helpers/utils/image_assets.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

int activeIndex = 0;

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> drawerItemModel = [
    const DrawerItemModel(
        title: 'Dashboard', imageIcon: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', imageIcon: Assets.imagesMyTransaction),
    const DrawerItemModel(
        title: 'Statistics', imageIcon: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', imageIcon: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', imageIcon: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: DrawerItem(
              drawerItemModel: drawerItemModel[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: drawerItemModel.length,
    );
  }
}
