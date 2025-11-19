import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F5FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Profil',
            style: TextStyle(color: Color(0xFF6A42A3), fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const CircleAvatar(radius: 36, backgroundColor: Color(0xFFDCC7F8), child: Icon(Icons.person, size: 40, color: Colors.white)),
            const SizedBox(height: 12),
            const Text('Ricki Maulana A', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            ListTile(leading: const Icon(Icons.shopping_bag), title: const Text('Pesanan Saya'), onTap: () {}),
            ListTile(leading: const Icon(Icons.list_alt), title: const Text('Daftar Keinginan'), onTap: () {}),
            ListTile(leading: const Icon(Icons.settings), title: const Text('Pengaturan'), onTap: () {}),
            ListTile(leading: const Icon(Icons.lock), title: const Text('Privasi'), onTap: () {}),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'MyShop Mini',
                  applicationVersion: '1.0.0',
                  children: const [Text('Demo aplikasi toko kecil - MyShop Mini')],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
