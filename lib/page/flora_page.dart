import 'package:flutter/material.dart';
import 'det_flora.dart';

class ListFlora extends StatelessWidget {

  final List<Map<String, dynamic>> floraData = [
    {
      "nama": "Ubud",
      "jenis": "Flora Hutan Hujan",
      "image": "assets/images/ubud.jpg",
      "gallery": [
        "assets/images/ubud.jpg",
        "assets/images/ubud2.jpg",
        "assets/images/ubud3.jpg"
      ],
      "desc": "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan."
    },
    {
      "nama": "Nusa Penida",
      "jenis": "Bali",
      "image": "assets/images/nusapenida.jpg",
      "gallery": [
        "assets/images/nusapenida1.jpg",
        "assets/images/nusapenida2.jpg",
        "assets/images/nusapenida3.jpg"
      ],
      "desc": "Nusa Penida adalah sebuah pulau kecil di sebelah tenggara Bali, terkenal dengan pantai yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving."
    },
    {
      "nama": "Pantai Kuta",
      "jenis": "Bali",
      "image": "assets/images/kuta.jpg",
      "gallery": [
        "assets/images/kuta1.jpg",
        "assets/images/kuta2.jpg",
        "assets/images/kuta3.jpg"
      ],
      "desc": "Pantai Kuta adalah salah satu pantai paling terkenal di Bali, dikenal dengan pasir putihnya yang lembut, ombak yang cocok untuk berselancar, dan pemandangan matahari terbenam yang menakjubkan. Kuta juga menawarkan berbagai fasilitas hiburan malam."
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
                        jenis: floraData[index]["jenis"],
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