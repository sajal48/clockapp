import 'package:clockapp/UI/homepage/components/sidenavbar_icon.dart';
import 'package:clockapp/bloc/statemanager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class SideNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassContainer.frostedGlass(
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 500,
      width: double.infinity,
      borderColor: Colors.white24,
      elevation: 10.0,
      blur: 3,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.black12,
      child: NavigationRail(
        groupAlignment: 0.0,
        backgroundColor: Colors.transparent,
        selectedIndex: Provider.of<PageChooser>(
          context,
        ).getIndex,
        onDestinationSelected: (int index) {
          Provider.of<PageChooser>(context, listen: false).setIndex(index);
        },
        labelType: NavigationRailLabelType.selected,
        destinations: [
          NavIcon(name: "clock", index: 1),
          NavIcon(name: "alarm", index: 2),
          NavIcon(name: "stopwatch", index: 3),
          NavIcon(name: "timer", index: 4),
        ],
      ),

      // This is the main content
    );
  }
}
