import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';
class NewsService{
  final Dio dio=Dio() ;
  NewsService();
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=8914597ed20e4530ba6829b37c2fd800&category=$category');
   Map<String,dynamic> JsonData= response.data;
  List<ArticleModel> articles=[];
    print(response.data);
  for(var data in JsonData["articles"] )
    {
      articles.add(new ArticleModel(image: data["urlToImage"],title: data["title"],subTitle: data["content"],url: data["url"])) ;
    }
  return articles;
  }
}