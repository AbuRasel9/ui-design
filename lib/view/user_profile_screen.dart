import 'package:car_app_ui/provider/selection_tab_provider.dart';
import 'package:car_app_ui/utils/constantColor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/about_section_widget.dart';
import '../widget/profile_text_item.dart';
import '../widget/selected_tab_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  List<String> tabList = ["ABOUT", "WORK", "ACTIVITY"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<SelectionTabProvider>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ConstantColor.backgroundColor,
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top section
                Container(
                  decoration: BoxDecoration(
                    color: ConstantColor.whiteColor,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/images/person_image.png",
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Abu Rasel",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ConstantColor.blackColor.withOpacity(
                                .4,
                              ),
                            ),
                          ),
                          //info d
                          const ProfileTextItem(
                            title: 'Email',
                            subtitle: 'aburaselahamed99@gmail.com',
                          ),
                          const ProfileTextItem(
                            title: 'Date Of Birth',
                            subtitle: "December,12,1999",
                          ),
                          const ProfileTextItem(
                            title: 'Address',
                            subtitle: 'Natore,Lalpur',
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                //selected tab
                Center(
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    alignment: Alignment.center,
                    width: 240,
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tabList.length,
                      itemBuilder: (context, index) {
                        int selectedValue = 0;
                        return InkWell(
                          onTap: () {
                            selectedIndex = index;
                            tabProvider.setSelectionTab(index);

                            setState(() {});
                          },

                          ///selected tab widget
                          child: SelectedTab(
                            text: tabList[index],
                            selectedIndex: selectedIndex == index,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                if (tabProvider.selectionTab == 0) const AboutSectionWidget(),
                // if(tabProvider.selectionTab==1 && tabProvider.selectionTab==2)

              ],
            ),
          ),
        ),
      ),
    );
  }
}


