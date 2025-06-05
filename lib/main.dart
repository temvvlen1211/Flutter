import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Зураг
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "\$${price.toStringAsFixed(2)}",
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add to cart logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Add to Cart"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String myTitle = "Flutter App";
    Color myColor = Colors.green;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(myTitle),
          backgroundColor: myColor,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Хайх дарлаа");
              },
            ),
          ],
        ),

        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ProductCard(
              name: "Nike Air Max",
              price: 129.99,
              imageUrl:
                  "https://images.unsplash.com/photo-1520209759809-a9bcb6cb3241?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            ProductCard(
              name: "Adidas T-Shirt",
              price: 39.99,
              imageUrl:
                  "https://images.unsplash.com/photo-1520209759809-a9bcb6cb3241?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            ProductCard(
              name: "Apple Watch",
              price: 399.99,
              imageUrl:
                  "https://images.unsplash.com/photo-1520209759809-a9bcb6cb3241?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 4+ tab бол заавал fixed
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 12,
          iconSize: 28,
          currentIndex: 0,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Миний цэс',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Нүүр'),
                onTap: () {
                  // navigate эсвэл setState
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Тохиргоо'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const Text("flutter is fun"),
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: const [
//             Expanded(flex: 4, child: Icon(Icons.backpack)),
//             Icon(Icons.leaderboard),
//             Icon(Icons.login),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // app bars test
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const Text("flutter is fun"),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Анхан шат',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int count = 0;

//   void _increaseCounter() {
//     setState(() {
//       count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 255, 0, 0),
//         title: Text('Тоолуурын апп'),
//       ),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Та дараах товчийг дарав:', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 10),
//             Text(
//               '$count удаа',
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _increaseCounter,
//         tooltip: 'Нэмэх',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
