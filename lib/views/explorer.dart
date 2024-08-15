import 'package:flutter/material.dart';
import 'package:store_app/widgets/text.dart';

import '../routes/routes_name.dart';

class Explorer extends StatefulWidget {
  const Explorer({super.key});

  @override
  ExplorerState createState() => ExplorerState();
}

class ExplorerState extends State<Explorer> {
  final List<String> data = ["Data 1", "Data 2", "Data 3", "Data 4", "Data 5"];
  int? selectedIndex;

  final List<Map<String, dynamic>> gridData = [
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 1',
      'description': 'This is the description for Item 1.',
      'price': '100',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 2',
      'description': 'This is the description for Item 2.',
      'price': '200',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 3',
      'description': 'This is the description for Item 3.',
      'price': '300',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 4',
      'description': 'This is the description for Item 4.',
      'price': '400',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 5',
      'description': 'This is the description for Item 5.',
      'price': '500',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 6',
      'description': 'This is the description for Item 6.',
      'price': '600',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 7',
      'description': 'This is the description for Item 7.',
      'price': '700',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 8',
      'description': 'This is the description for Item 8.',
      'price': '800',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 9',
      'description': 'This is the description for Item 9.',
      'price': '900',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/blueshoe.png',
      'title': 'Item 10',
      'description': 'This is the description for Item 10.',
      'price': '1000',
      'isFavorite': false,
    },
  ];

  bool _showAllItems = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: header('Explorer', true, false)),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(AppCharRoute.mycarthome);
            },
            icon: const Icon(Icons.shopping_bag),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 13, 110, 253),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 110, 253),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(child: Image.asset('')),
                  const SizedBox(height: 10),
                  const Text('name')
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppCharRoute.profile);
              },
            ),
            ListTile(
              leading: const Icon(Icons.badge, color: Colors.white),
              title: const Text('My Cart'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppCharRoute.mycarthome);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.white),
              title: const Text('Favourite'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppCharRoute.favourite);
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_membership, color: Colors.white),
              title: const Text('Orders'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppCharRoute.profile);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.white),
              title: const Text('Notification'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppCharRoute.notification);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text('Setting'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text('Sign out'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AppCharRoute.signin);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(AppCharRoute.search);
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Select category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final isSelected = selectedIndex == index;
                        return Container(
                          margin: const EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  isSelected ? Colors.white : Colors.black,
                              backgroundColor:
                                  isSelected ? Colors.blue : Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIndex = isSelected ? null : index;
                              });
                            },
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Item $index',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Popular shoes'),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _showAllItems = !_showAllItems;
                            });
                          },
                          child: Text(
                            _showAllItems ? 'Show less' : 'See all',
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (!_showAllItems && index >= 2) {
                    return null;
                  }
                  final item = gridData[index];
                  return Card(
                    margin: EdgeInsets.zero,
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              item['isFavorite'] = !item['isFavorite'];
                            });
                          },
                          icon: Icon(
                            item['isFavorite']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: item['isFavorite'] ? Colors.red : null,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              item['image'],
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['title'],
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            item['description'],
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['price'],
                                style: const TextStyle(color: Colors.blue),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_circle_outline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: gridData.length,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('New arrivals'),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Summer Sale',
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      Text(
                        'Up to 50% off',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/Aire Jordan Nike.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppCharRoute.explorer);
                    },
                    icon: const Icon(Icons.home)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppCharRoute.favourite);
                    },
                    icon: const Icon(Icons.favorite_border)),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppCharRoute.notification);
                    },
                    icon: const Icon(Icons.notifications)),
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppCharRoute.profile);
                    },
                    icon: const Icon(Icons.person)),
              ])
            ],
          )),
        ],
      ),
    );
  }
}
