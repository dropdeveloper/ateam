import 'package:ateam_flutter/pages/widgets/menu_item_widget.dart';
import 'package:ateam_flutter/pages/widgets/toggle_switch.dart';
import 'package:ateam_flutter/style/text_styles.dart';
import 'package:flutter/material.dart';

class SlideDrawer extends StatelessWidget {
  const SlideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Notification Settings", style: sliderMenuTitleStyle),
              Flexible(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    MenuItemWidget(title: "Email Notification", children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Order Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Shipping Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Promotions",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Offers", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("News", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title:
                            Text("Messages", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("New Arrivals",
                            style: sliderMenuItemTitle1Style),
                      ),
                    ]),
                    MenuItemWidget(title: "Push Notification", children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Order Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Shipping Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Promotions",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Offers", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("News", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title:
                            Text("Messages", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("New Arrivals",
                            style: sliderMenuItemTitle1Style),
                      ),
                    ]),
                    MenuItemWidget(title: "Notification at Night", children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Order Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Shipping Update",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Promotions",
                            style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("Offers", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("News", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title:
                            Text("Messages", style: sliderMenuItemTitle1Style),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        trailing: ToggleSwitch(
                          value: false,
                          onChanged: (v) {},
                        ),
                        title: Text("New Arrivals",
                            style: sliderMenuItemTitle1Style),
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
