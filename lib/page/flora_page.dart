import 'package:flutter/material.dart';
import 'det_flora.dart';

class ListFlora extends StatelessWidget {

  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "Bunga bangkai",
      "nama_ilmiah": "Amorphophallus titanum",
      "image": "assets/images/bangkai.jpg",
      "gallery": [
        "assets/images/ubud.jpg",
        "assets/images/ubud2.jpg",
        "assets/images/ubud3.jpg"
      ],
      "desc": "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan."
    },
    {
      "nama": " Sawo Kecik",
      "nama_ilmiah": "Manilkara kauki",
      "image": "assets/images/sawo.jpg",
      "gallery": [
        "assets/images/nusapenida1.jpg",
        "assets/images/nusapenida2.jpg",
        "assets/images/nusapenida3.jpg"
      ],
      "desc": "Sawo kecik atau Sawo jawa adalah sejenis tanaman penghasil buah pangan anggota suku sawo-sawoan atau Sapotaceae. Tumbuhan berbentuk pohon ini biasanya berfungsi sebagai tanaman hias pekarangan dan pelindung. Pohon ini menyukai dataran rendah hingga sedang."
    },
    {
      "nama": "Bunga raflesia",
      "nama_ilmiah": "Rafflesia",
      "image": "assets/images/raflesia.jpg",
      "gallery": [
        "assets/images/kuta1.jpg",
        "assets/images/kuta2.jpg",
        "assets/images/kuta3.jpg"
      ],
      "desc": "Rafflesia atau puspa nusa adalah sebuah genus tumbuhan berbunga yang semua spesiesnya hidup sebagai parasit. Anatomi tumbuhan pada Rafflesia tidak lengkap. Organ tubuh dari Rafflesia hanya berbentuk bunga yang mekar atau kuncup saja. Rafflesia tidak memiliki bagian daun, batang, dan akar"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: floraData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFlora(
                        nama: floraData[index]["nama"],
                        jenis: floraData[index]["nama_ilmiah"],
                        image: floraData[index]["image"],
                        gallery: floraData[index]["gallery"],
                        desc: floraData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(floraData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    floraData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}