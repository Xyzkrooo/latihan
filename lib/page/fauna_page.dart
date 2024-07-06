import 'package:flutter/material.dart';
import 'det_fauna.dart';

class ListFauna extends StatelessWidget {

  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Harimau Sumatra",
      "jenis": "Mamalia",
      "image": "assets/images/ubud.jpg",
      "gallery": [
        "assets/images/ubud.jpg",
        "assets/images/ubud2.jpg",
        "assets/images/ubud3.jpg"
      ],
      "desc": "Harimau sumatra adalah populasi Panthera tigris sondaica yang mendiami pulau Sumatra, Indonesia dan satu-satunya anggota subspesies harimau sunda yang masih bertahan hidup hingga saat ini."
    },
    {
      "nama": "Komodo",
      "jenis": "Reptil",
      "image": "assets/images/nusapenida.jpg",
      "gallery": [
        "assets/images/nusapenida1.jpg",
        "assets/images/nusapenida2.jpg",
        "assets/images/nusapenida3.jpg"
      ],
      "desc": "Komodo atau lengkapnya biawak komodo, adalah spesies biawak besar yang terdapat di Pulau Komodo, Rinca, Flores, Gili Motang, dan Gili Dasami di Provinsi Nusa Tenggara Timur, Indonesia. Hewan ini oleh penduduk asli pulau Komodo juga disebut dengan nama setempat ora."
    },
    {
      "nama": "Orang utan",
      "jenis": "Mamalia",
      "image": "assets/images/kuta.jpg",
      "gallery": [
        "assets/images/kuta1.jpg",
        "assets/images/kuta2.jpg",
        "assets/images/kuta3.jpg"
      ],
      "desc": "Orang utan atau mawas adalah kera besar yang berasal dari hutan hujan Indonesia dan Malaysia. Sekarang hewan ini hanya ditemukan di sebagian Kalimantan dan Sumatra, tetapi selama era Pleistosen, mereka tersebar di seluruh Asia Tenggara dan Tiongkok Selatan."
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
            itemCount: faunaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFauna(
                        nama: faunaData[index]["nama"],
                        jenis: faunaData[index]["jenis"],
                        image: faunaData[index]["image"],
                        gallery: faunaData[index]["gallery"],
                        desc: faunaData[index]["desc"],
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
                      image: AssetImage(faunaData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    faunaData[index]["nama"],
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