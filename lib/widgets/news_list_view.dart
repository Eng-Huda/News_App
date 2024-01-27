import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
class NewsListView extends StatelessWidget {
   NewsListView({super.key,required this.articles});

  List<ArticleModel> articles=[];

 @override
  Widget build(BuildContext context) {
    return
        SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,(context,index){
      return NewsTile(article: articles[index],);
    },));

      // ListView.builder(shrinkWrap:true,physics: BouncingScrollPhysics(),itemCount:5,itemBuilder: (context,index){
      //     return NewsTile();
      //   });
  }
}
