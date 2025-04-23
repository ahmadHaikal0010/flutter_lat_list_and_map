import 'package:flutter/material.dart';
import 'package:flutter_lat_list_and_map_mi2a/pages/custom_box_map.dart';
import 'package:flutter_lat_list_and_map_mi2a/pages/detail_hospital_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';

class PageMap extends StatefulWidget {
  const PageMap({super.key});

  @override
  State<PageMap> createState() => _PageMapState();
}

class _PageMapState extends State<PageMap> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  final List<Map<String, dynamic>> _listHospital = [
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

  Set<Marker> _createMarker() {
    Set<Marker> markers = {};
    for (var hotel in _listHospital) {
      final LatLng koordinat = LatLng(hotel['lattitude'], hotel['longitude']);
      markers.add(
        Marker(
          markerId: MarkerId(hotel['namaTempat']),
          position: koordinat,
          onTap: () {
            _customInfoWindowController.addInfoWindow!(
              CustomBoxMap(
                gambar: hotel['gambar'],
                namaTempat: hotel['namaTempat'],
                rating: hotel['rating'],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DetailHospital(hotelData: hotel,)),
                  );
                },
              ),
              koordinat,
            );
          },
        ),
      );
    }

    return markers;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-0.9294517008441783, 100.37253093611072),
              zoom: 12.8,
            ),
            // marker
            markers: _createMarker(),
            // controller
            onMapCreated: (controller) {
              _customInfoWindowController.googleMapController = controller;
            },
            onTap: (position) => _customInfoWindowController.hideInfoWindow!(),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 200,
            offset: 50,
          ),
        ],
      ),
    );
  }
}