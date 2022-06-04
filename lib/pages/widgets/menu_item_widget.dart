import 'package:ateam_flutter/pages/widgets/toggle_switch.dart';
import 'package:ateam_flutter/style/text_styles.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatefulWidget {
  final String title;
  final List<Widget> children;
  const MenuItemWidget({Key? key, required this.title, required this.children}) : super(key: key);

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      maintainState: true,
      tilePadding: EdgeInsets.zero,
      initiallyExpanded: _enable,
      trailing: IgnorePointer(
        child:Switch(value: _enable, onChanged: (v){
          setState(() {
            _enable = v;
          });
        }),
      ),
      onExpansionChanged: (v){
        setState(() {
          _enable = v;
        });
      },
      title: Text(widget.title, style: sliderMenuItemTitleStyle),
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: ToggleSwitch(
            value: false,
            onChanged: (v) {},
          ),
          title: Text("Order Update", style: sliderMenuItemTitle1Style),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: ToggleSwitch(
            value: false,
            onChanged: (v) {},
          ),
          title: Text("Shipping Update", style: sliderMenuItemTitle1Style),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: ToggleSwitch(
            value: false,
            onChanged: (v) {},
          ),
          title: Text("Promotions", style: sliderMenuItemTitle1Style),
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
          title: Text("Messages", style: sliderMenuItemTitle1Style),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          trailing: ToggleSwitch(
            value: false,
            onChanged: (v) {},
          ),
          title: Text("New Arrivals", style: sliderMenuItemTitle1Style),
        ),
      ],
    );
  }
}
