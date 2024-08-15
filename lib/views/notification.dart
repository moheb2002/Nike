import 'package:flutter/material.dart';
import 'package:store_app/widgets/text.dart';

import '../routes/routes_name.dart';

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final List<Map<String, String>> notifications = [
    {
      'image': 'assets/images/Aire Jordan Nike.png',
      'title': 'Nike Aire Jordan',
      'price': '\$100',
      'discountPrice': '\$150',
      'timeAgo': '7 minutes ago',
    },
    {
      'image': 'assets/images/Aire Jordan Nike.png',
      'title': 'Nike Air Max',
      'price': '\$120',
      'discountPrice': '\$160',
      'timeAgo': '15 minutes ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(AppCharRoute.explorer);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header('Recent', true, false),
                  const SizedBox(height: 10),
                  ListView.builder(
                    itemCount: notifications.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final notification = notifications[index];
                      return NotificationCard(notification: notification);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notification});

  final Map<String, String> notification;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              notification['image']!,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                        ),
                        child: Text(
                          notification['title']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            notification['price']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          underheader(notification['discountPrice']!),
                        ],
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                  Positioned(
                    top: 6,
                    right: 8,
                    child: underheader(notification['timeAgo']!),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
