import 'package:flutter/material.dart';
import 'recipes.dart';
import 'recipes_details.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            primary: Colors.grey,
            secondary: Colors.black,
          )
      ),
      title: 'Recipe App',
      home: MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
          child: ListView.builder(
// 5
      itemCount: Recipe.samples.length,
// 6
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
// 8
            onTap: () {
// 9
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
// 10
// TODO: Replace return with return RecipeDetail()
                    return RecipeDetail(recipe: Recipe.samples[index]);
                  },
                ),
              );
            },
// 11
            child: buildRecipeCard(Recipe.samples[index]),
          );
        },
      ),),
    );
  }
}
Widget buildRecipeCard(Recipe recipe) {
  return Card(
// 1
    elevation: 2.0,
// 2
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)),
// 3
    child: Padding(
      padding: const EdgeInsets.all(16.0),
// 4
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
// 5
          const SizedBox(
            height: 14.0,
          ),
// 6
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          )
        ],
      ),
    ),
  );
}