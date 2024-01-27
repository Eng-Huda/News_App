import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
// class NewsListViewBuilder extends StatefulWidget {
//
//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

class NewsListViewBuilder extends StatefulWidget {
  //List<ArticleModel> articles=[];
  // bool isLoading=true;
  //  @override
  //  void initState() {
  //    super.initState();
  //    GetArticles();
  //  }
  //  Future<void> GetArticles() async{
  //    articles= await NewsService().getNews();
  //    //isLoading=false;
  //    setState(() {
  //
  //    });
  //  }
  final String category;
  const NewsListViewBuilder({super.key,required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
//cached network image   use to handle img from network
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
 var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService().getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:future,
        builder: (context, snapshot) {
         if(snapshot.hasData)
         { return NewsListView(articles: snapshot.data!);}
         else if(snapshot.hasError){
           return const SliverToBoxAdapter(child: Text('opps there was an error'),);
         }
         else{
           return   SliverToBoxAdapter(child:Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: Center(child: CircularProgressIndicator())));
         }
        });
    //return isLoading ? const SliverToBoxAdapter(child:Center(child:CircularProgressIndicator())): NewsListView(articles:articles);
  }
}
