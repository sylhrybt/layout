import 'package:flutter/material.dart';
import 'components.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CenterScreen(),
    );
  }
}

class CenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileCard(
              name: 'sayel kotate',
              role: 'Programmer',
              collect: 761,
              attention: 40,
              track: 310,
              coupons: 26,
            ),
            SizedBox(height: 20),
            SettingsItem(
              title: 'Address',
              subtitle: 'Hebron',
              icon: Icons.location_on,
              color: const Color.fromARGB(255, 203, 104, 28),
            ),
            SettingsItem(
              title: 'Privacy',
              subtitle: 'Permission',
              icon: Icons.lock,
              color: const Color.fromARGB(255, 28, 203, 168),
            ),
            SettingsItem(
              title: 'General',
              subtitle: 'Basics',
              icon: Icons.settings,
              color: const Color.fromARGB(255, 81, 28, 203),
            ),
            SettingsItem(
              title: 'Notification',
              subtitle: 'The news',
              icon: Icons.notifications,
              color: const Color.fromARGB(255, 203, 28, 34),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Service',
          ),
        ],
      ),
    );
  }
}
