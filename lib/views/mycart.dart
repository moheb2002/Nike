import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:dotted_line/dotted_line.dart';
import '../routes/routes_name.dart';
import '../widgets/text.dart';

class Shoe {
  final String name;
  final String price;
  final String imageUrl;

  Shoe({required this.name, required this.price, required this.imageUrl});
}

class MyCartHome extends StatelessWidget {
  const MyCartHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Shoe> shoes = [
      Shoe(
          name: 'Air Jordan Nike',
          price: '1000',
          imageUrl: 'assets/images/blueshoe.png'),
      Shoe(
          name: 'Nike Air Max',
          price: '800',
          imageUrl: 'assets/images/blueshoe.png'),
      Shoe(
          name: 'Adidas Yeezy',
          price: '1200',
          imageUrl: 'assets/images/blueshoe.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppCharRoute.explorer);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final shoe = shoes[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Slidable(
                    key: ValueKey(shoe.name),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.share,
                          label: 'Share',
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          flex: 2,
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: 'Archive',
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFF0392CF),
                          foregroundColor: Colors.white,
                          icon: Icons.save,
                          label: 'Save',
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        shoe.imageUrl,
                        width: 40,
                      ),
                      title: Text(
                        shoe.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        'Price: ${shoe.price}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
              childCount: shoes.length,
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      underheader('Subtotal'),
                      const Text(
                        '\$753.95',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ))),
          SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      underheader('Delivery'),
                      const Text(
                        '\$60.20',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ))),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: DottedLine(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Cost'),
                  Text(
                    '\$814.15',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 13, 110, 253),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppCharRoute.mycart);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D6EFD),
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 16,
                    ),
                  ),
                  child: const Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
