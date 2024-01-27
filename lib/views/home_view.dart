import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewBuilder.dart';
import 'package:news_app/widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.amber),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
       child: CustomScrollView(
         slivers: [
           SliverToBoxAdapter(child:CategoriesListView()),
           SliverToBoxAdapter(child:SizedBox(height:18)),
           NewsListViewBuilder(category: "general",),
           // SliverToBoxAdapter(child:NewsListView())
         ],
       ),
        // child: Column(children:[SizedBox(height:100,child:CategoriesListView()),Expanded(child:NewsListView(),)]),
      )
    );
  }
}
