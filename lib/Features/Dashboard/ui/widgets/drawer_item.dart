import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/Dashboard/data/model/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/Dashboard/ui/widgets/active_and_in_active_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
