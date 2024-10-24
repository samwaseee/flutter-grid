import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> sections = [
    {'image': 'https://chisellabs.com/glossary/wp-content/uploads/2023/05/f17fea9f-e83a-4f9b-924c-508d29a53f24.png', 'label': 'Customers'},
    {'image': 'https://media.licdn.com/dms/image/v2/D4E12AQEJpCl5BiUkgg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1681784806260?e=2147483647&v=beta&t=1YoTTscJwdmWPbFBcGHu15m-A6A_wVsBgDHvSRq_P3I', 'label': 'Suppliers'},
    {'image': 'https://img.pikbest.com/png-images/fresh-food-and-beverage-products-in-a-paper-bag-vector-graphic-element_1573767.png!f305cw', 'label': 'Products'},
    {'image': 'https://icon-library.com/images/pos-system-icon/pos-system-icon-17.jpg', 'label': 'POS'},
    {'image': 'https://t3.ftcdn.net/jpg/04/95/52/42/360_F_495524289_x1nqhmhreZz4i5LlKtp9jrWL6vM1oNXf.webp', 'label': 'Expense'},
    {'image': 'https://thumbs.dreamstime.com/z/order-icon-set-important-clipboard-priority-form-vector-symbol-black-filled-outlined-style-application-pictogram-330178326.jpg?w=768', 'label': 'Orders'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(left: 16.0, bottom: 150.0),
                  title: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'ONLINE SOFT SELL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  background: Container(
                    color: const Color(0xFF4BC74C),
                  ),
                ),
                actions: [
                  IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
                ],
              ),
            ],
          ),
          Positioned(
            top: 150, // Adjust the top value to overlap with the appbar height
            left: 16.0,
            right: 16.0,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: sections.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      // Define actions on tap here
                    },
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Replace Icon with an image (either network or asset image)
                          Image.network(
                            sections[index]['image']!, // Network image URL
                            height: 100, // Adjust image height
                            width: 140,  // Adjust image width
                            fit: BoxFit.cover, // Adjust to fit within the bounds
                          ),
                          const SizedBox(height: 10), // Spacing between image and label
                          Text(sections[index]['label']!),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage()));
}
