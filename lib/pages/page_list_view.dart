import 'package:flutter/material.dart';
import 'package:flutter_lat_list_and_map_mi2a/pages/page_detail_hospital.dart';

class PageListView extends StatefulWidget {
  const PageListView({super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  List<Map<String, dynamic>> listHospital = [
    {
      'namaTempat': 'Rumah Sakit Umum Aisyiyah',
      'gambar': 'assets/images/sakit1.jpg',
      'lattitude': -0.9476777636841598,
      'longitude': 100.36356710014181,
      'rating': 4.2,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Hermina Padang',
      'gambar': 'assets/images/sakit2.jpg',
      'lattitude': -0.9176911911896032,
      'longitude': 100.36052990014181,
      'rating': 4.0,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Yos Sudarso',
      'gambar': 'assets/images/sakit3.jpg',
      'lattitude': -0.9362460637017481,
      'longitude': 100.36275105781459,
      'rating': 4.0,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Universitas Andalas',
      'gambar': 'assets/images/sakit4.jpg',
      'lattitude': -0.9205414362744165,
      'longitude': 100.45653490014182,
      'rating': 3.9,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Khusus Bedah Ropanasuri Padang',
      'gambar': 'assets/images/sakit5.jpg',
      'lattitude': -0.9353680911093145,
      'longitude': 100.3593886001418,
      'rating': 4.3,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Ibu Dan Anak Siti Hawa',
      'gambar': 'assets/images/sakit6.JPG',
      'lattitude': -0.9480999910505405,
      'longitude': 100.3771734001418,
      'rating': 4.2,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'RSUP Dr. M. Djamil Padang',
      'gambar': 'assets/images/sakit7.png',
      'lattitude': -0.9433989089249795,
      'longitude': 100.36695997130236,
      'rating': 4.2,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'RS. Bhayangkara Padang',
      'gambar': 'assets/images/sakit8.jpg',
      'lattitude': -0.932982945560081,
      'longitude': 100.36599620014181,
      'rating': 4.3,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'Rumah Sakit Tentara dr. Reksodiwiryo Padang.',
      'gambar': 'assets/images/sakit9.jpg',
      'lattitude': -0.9510250590802525,
      'longitude': 100.37202241782634,
      'rating': 4.4,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
    {
      'namaTempat': 'RSKB Kartika Docta',
      'gambar': 'assets/images/sakit10.jpg',
      'lattitude': -0.9219786409308411,
      'longitude': 100.36678378224454,
      'rating': 4.2,
      'keterangan':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sagittis vitae diam a dictum. Duis quis mollis turpis, et pretium odio. Aliquam porta, dui at consectetur imperdiet, mauris urna dictum sem, et condimentum nisi mauris sodales ex. Suspendisse sit amet dapibus urna, at sollicitudin arcu. Morbi neque felis, volutpat nec vulputate at, molestie a est. Phasellus convallis lectus vel sapien sollicitudin aliquet. Nunc in metus purus.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: listHospital.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PageDetailHospital(listHospital[index]),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRect(
                      child: Image.asset(
                        "${listHospital[index]["gambar"]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(
                          listHospital[index]["namaTempat"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
