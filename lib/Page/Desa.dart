import 'package:flutter/material.dart';

class ProfileDesa extends StatelessWidget {
  const ProfileDesa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desa Ambengan'),
        elevation: 10,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/pri.png'),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileDesa()));
              },
              child: itemProfile('Profile Desa', Icons.person),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Navigasi ke halaman Informasi
                // Gantilah dengan perintah navigasi sesuai dengan framework yang Anda gunakan (e.g., Navigator.push).
              },
              child: itemProfile('Informasi', Icons.info),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Navigasi ke halaman Fasilitas
                // Gantilah dengan perintah navigasi sesuai dengan framework yang Anda gunakan (e.g., Navigator.push).
              },
              child: itemProfile('Fasilitas', Icons.ads_click_outlined),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: itemProfile('Lembaga', Icons.list),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Navigasi ke halaman Berita
                // Gantilah dengan perintah navigasi sesuai dengan framework yang Anda gunakan (e.g., Navigator.push).
              },
              child: itemProfile('Berita', Icons.newspaper),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.deepPurple.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
