import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageDetailHospital extends StatelessWidget {
  // variable untuk menampung isi dari item
  final Map<String, dynamic> hospitalData;
  const PageDetailHospital(this.hospitalData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hospitalData["namaTempat"])),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "${hospitalData["gambar"]}",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 500,
                ),
              ),
              SizedBox(height: 15),
              Text(hospitalData["namaTempat"]),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Rating: ${hospitalData['rating']}'),
                  SizedBox(width: 5),
                  RatingBarIndicator(
                    rating: hospitalData['rating'],
                    itemBuilder:
                        (context, index) =>
                            Icon(Icons.star, color: Colors.amber),
                    itemCount: 5,
                    itemSize: 15,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text("${hospitalData["keterangan"]}"),
            ],
          ),
        ),
      ),
    );
  }
}
