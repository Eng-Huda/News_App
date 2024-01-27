import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';
class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
    title: Text(
      category,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

    ),   backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),body: CustomScrollView(slivers: [ NewsListViewBuilder(category: category,)]));
  }
}
