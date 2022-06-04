import 'package:ateam_flutter/pages/product_list.dart';
import 'package:ateam_flutter/pages/widgets/slide_drawe.dart';
import 'package:ateam_flutter/style/text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products", style: appBarNameStyle),
      ),
      body: const SafeArea(
        child: ProductList(),
      ),
      drawer: const SlideDrawer(),
    );
  }
}
