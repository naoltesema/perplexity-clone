import 'package:flutter/material.dart';
import 'package:perplexity_clone/themes/colors.dart';
import 'package:perplexity_clone/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Container(
        width: isCollapsed ? 64 : 128,
        color: AppColors.sideNav,
        child: Column(
          children: [
            SizedBox(height: 16),
            Icon(Icons.auto_awesome_mosaic,
                color: AppColors.whiteColor, size: isCollapsed ? 30 : 60),
            Expanded(
              child: Column(
                crossAxisAlignment: isCollapsed
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  SideBarButton(
                    icon: Icons.add,
                    isCollapsed: isCollapsed,
                    text: 'Home',
                  ),
                  SideBarButton(
                    icon: Icons.search,
                    isCollapsed: isCollapsed,
                    text: 'Search',
                  ),
                  SideBarButton(
                    icon: Icons.language,
                    isCollapsed: isCollapsed,
                    text: 'Spaces',
                  ),
                  SideBarButton(
                    icon: Icons.auto_awesome,
                    isCollapsed: isCollapsed,
                    text: 'Discover',
                  ),
                  SideBarButton(
                    icon: Icons.cloud_circle,
                    isCollapsed: isCollapsed,
                    text: 'Library',
                  ),
                  const Spacer(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                child: Icon(
                  isCollapsed
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_left,
                  color: AppColors.iconGrey,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
