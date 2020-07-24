import 'package:flutter/material.dart';
import 'package:my_app/NewsPage/Helper/data.dart';
import 'package:my_app/NewsPage/Models/category_model.dart';
import 'package:my_app/NewsPage/NewsPageComponent/article.dart';
import 'package:my_app/NewsPage/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';


class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  // NewsArticleListViewModel _newsArticleListViewModel = NewsArticleListViewModel();

  // NewsList() {
  //   _newsArticleListViewModel.populateTopHeadLines();
  // }

  // List<CategoryModel> categories = List<CategoryModel>();

  // @override
  // void initState() {
  //   super.initState();
  //   categories = getCategories();
  // }

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter'),
            Text('News', style: TextStyle(
              color: Colors.blue
            ))
          ]
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      // body: Container(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 16),
      //         height: 70,
      //         child: ListView.builder(
      //           itemCount: categories.length,
      //           shrinkWrap: true,
      //           scrollDirection: Axis.horizontal,
      //           itemBuilder: (context, index) {
      //             return CategoryTitle(
      //               imageUrl: categories[index].imageUrl,
      //               categoryName: categories[index].categoryName,
      //             );
      //           },
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: ListView.builder(
        itemCount: vm.articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vm.articles[index].title),
          );
        },
      )
    );
  }
}

// class CategoryTitle extends StatelessWidget {

//   final imageUrl, categoryName;

//   CategoryTitle({
//     this.imageUrl,
//     this.categoryName
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 16),
//       child: Stack(
//         children: <Widget>[
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(imageUrl, width: 120, height: 60, fit: BoxFit.cover),
//           ),
//           Container(
//             alignment: Alignment.center,
//             width: 120,
//             height: 60,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: Colors.black26,
//             ),
//             child: Text(categoryName, style: TextStyle(
//               color: Colors.white,
//               fontSize: 14
//             )),
//           )
//         ],
//       ),
//     );
//   }
// }