import 'package:flutter/material.dart';

class ProfileDesa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Desa Ambengan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/pro.png'),
              height: 200, // Atur tinggi gambar sesuai kebutuhan
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tentang Desa Ambengan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Desa Ambengan merupakan salah satu desa yang berada di Kecamatan Sukasada yang jaraknya 5 km dari kota Singaraja. Desa Ambengan telah ditetapkan Pemerintah Kabupaten Buleleng sebagai salah satu desa wisata dari 75 desa wisata yang ditetapkan Pemkab Buleleng berdasarkan SK Bupati Nomor 430/HK/2022.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lahan Pertanian',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Luas Lahan Sawah: [Luas Lahan Sawah] Ha'),
                  Text('Luas Lahan Kebun: [Luas Lahan Kebun] Ha'),
                  Text('Luas Lahan Perkebunan: [Luas Lahan Perkebunan] Ha'),
                  // Tambahkan lebih banyak informasi lahan pertanian jika diperlukan
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
