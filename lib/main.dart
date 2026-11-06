import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Liburan Keluarga"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Taman Bunga Celosia",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange,),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.family_restroom),
                  SizedBox(width: 8),
                  Text(
                    "cocok untuk keluarga",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8,),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: 
                Image.asset(
                  "images/bunga.jpg",
                  width: double.infinity,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16,),
              Text(
                "Tentang Taman",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Taman bunga menjadi rekreasi yang menawarkan pemandangan bewarna-warni dan suasana yang menyegarkan. Pengunjung dapat berjalan santai, berfoto bersama keluarga, serta menikmati waktu di ruang terbuka.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5
                ),
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rencana Kunjungan",
                    
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.only(left: 16,right: 16,bottom: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.green,),
                            SizedBox(width: 12,),
                            Text(
                              "Lokasi",
                              style: TextStyle(
                                fontSize: 15
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Bandungan, Semarang",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            )
                          ],
                        ),
                        Divider(height: 28,),
                        Row(
                          children: [
                            Icon(Icons.access_time, color: Colors.green,),
                            SizedBox(width: 12,),
                            Text("Jam Buka",
                              style: TextStyle(
                                fontSize: 15
                              ),
                            ),
                            Spacer(),
                            Text(
                              "08.00-17.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            )
                          ],
                        ),
                        Divider(height: 28,),
                        Row(
                          children: [
                            Icon(Icons.confirmation_num,color: Colors.green,),
                            SizedBox(width: 12,),
                            Text("Harga Tiket",
                              style: TextStyle(
                                fontSize: 15
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Rp25.000",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: (){}, 
                  icon: Icon(Icons.man),
                  label: const Text(
                    "Rencanakan Kunjungan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(14)
                  ),
                ),
              )
            ],
          ),
        )
        ),
    );
  }
}
