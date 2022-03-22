import 'package:flutter/material.dart';

void main() => runApp(BooksApp());

class BooksApp extends StatelessWidget {
  var booktitle = [
    "The Alchemist by Paulo ",
    "The Diary of A Young Girl ",
    "The Kite Runner ",
    "The God of Small Things",
    " To Kill A Mockingbird",
    "Norwegian Wood",
    "Ikigai",
    "The Palace of Illusions",
    "The Great Gatsby",
    "Rich Dad Poor Dad"
  ];
  var category = [
    "Fantasy",
    "	Autobiography",
    "	Historical Fiction Drama ",
    "Novel",
    "Novel",
    "Romance Novel",
    "Self-Help Book",
    "Novel",
    "Tragedy",
    "Personal Finance"
  ];
  var author = [
    "Paulo Coelho",
    "Anne Frank",
    "Khaled Hosseini",
    "Arundhati Roy",
    "Harper Lee",
    "Haruki Murakami",
    "Héctor García",
    "Banerjee Divakaruni",
    " F. Scott Fitzgerald",
    "Robert Kiyosaki"
  ];
  var price = [450, 320, 150, 225, 446, 396, 100, 700, 600, 120];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,

            title: Text("BOOKS"),
          ),
          body: Container(
            color: Colors.blueAccent,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.book_outlined, color: Colors.redAccent, size: 50,),
                    title: Text(booktitle[index]),
                    subtitle: Text(
                        "Category :" + category[index] + "\n" + "Author :" +
                            author[index] + "\n" + "Book Price :" +
                            price[index].toString()),
                    trailing: Icon(
                      Icons.shopping_cart, color: Colors.blueAccent, size: 30,),
                  ),
                );
              }
              ,
            ),
          ),
        )
    );
  }
}
