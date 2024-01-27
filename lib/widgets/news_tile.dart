import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
class NewsTile extends StatelessWidget {
  final ArticleModel article;
  const NewsTile({required this.article,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(height: 12,),
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child:article.image != null ?
            CachedNetworkImage(key: UniqueKey(),
                imageUrl: article.image!,
             height: 200,
              width: double.infinity,
              fit:BoxFit.cover,
              maxHeightDiskCache: 200,
              placeholder: (context,url)=>Container(color: Colors.brown,),
              errorWidget: (context,url,error)=>Container(
                  color:Colors.black45,
                  child: const Icon(Icons.error,color: Colors.red,size:80,),
                )
            )

        // Image.network(
        //   article.image!,
        //   height: 200,
        //   width: double.infinity,
        //   fit: BoxFit.cover,
        // )
        : Image.asset("assets/technology.jpeg", height: 200,
          width: double.infinity,
          fit:BoxFit.cover,) ,
      ),
      SizedBox(height: 12,),
      Text(article.title,maxLines: 2,overflow: TextOverflow.ellipsis,
      style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
      SizedBox(height: 8,),
      Text(article.subTitle ?? "",maxLines: 2,
          style:TextStyle(fontSize: 16,color: Colors.grey)),

    ]);
  }
}
