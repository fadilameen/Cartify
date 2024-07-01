// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furni/components/custombutton1.dart';
import 'package:furni/components/customlistviewcontainer.dart';
import 'package:furni/components/profilesectionheader.dart';
import 'package:furni/components/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        "assets/images/myphoto.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Fadil Ameen",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4F4E4E),
                      ),
                    ),
                    Text(
                      "fadilameen63@gmail.com",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7D7B7B),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProfileSectionHeader(sectionTitle: "Account Settings"),
              CustomListViewContainer(customListTileItems: [
                CustomListTile(
                  leadingIcon: Icons.edit,
                  title: 'Edit Profile',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.lock,
                  title: 'Security',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.perm_contact_cal_rounded,
                  title: 'Saved Address',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.credit_card_rounded,
                  title: 'Payment Settings',
                ),
              ]),
              ProfileSectionHeader(sectionTitle: "Orders"),
              CustomListViewContainer(customListTileItems: [
                CustomListTile(
                  leadingIcon: Icons.location_on,
                  title: 'Track Order',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.history_rounded,
                  title: 'Order History',
                ),
              ]),
              ProfileSectionHeader(sectionTitle: "General"),
              CustomListViewContainer(customListTileItems: [
                CustomListTile(
                  leadingIcon: Icons.wallet_rounded,
                  title: 'Invite & Earn',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.card_giftcard_rounded,
                  title: 'Coupons',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.notifications,
                  title: 'Notifications',
                ),
                CustomDivider(),
                CustomListTile(
                  leadingIcon: Icons.headphones_outlined,
                  title: 'Help Centre',
                ),
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3, vertical: 15),
                child: GestureDetector(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: buttonRed,
                      border: Border.all(color: buttonRed),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Log out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Sen',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
