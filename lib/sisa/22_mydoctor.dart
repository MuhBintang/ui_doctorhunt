import 'package:doctor_hunt/sisa/21_menu.dart';
import 'package:doctor_hunt/screen/23_medicalrecord.dart';
import 'package:flutter/material.dart';

class Doctor {
  final String imagePath;
  final String doctorName;
  final String specialization;
  final String experience;
  final String percentage;
  final String patientStories;
  final String nextAvailableDate;

  Doctor({
    required this.imagePath,
    required this.doctorName,
    required this.specialization,
    required this.experience,
    required this.percentage,
    required this.patientStories,
    required this.nextAvailableDate,
  });
}

class MyDoctorsScreen extends StatefulWidget {
  MyDoctorsScreen({Key? key}) : super(key: key);

  @override
  _MyDoctorsScreenState createState() => _MyDoctorsScreenState();
}

class _MyDoctorsScreenState extends State<MyDoctorsScreen> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final String nextAvailable = 'Next Available';
    final String date1 = '10:00 AM Tomorrow';
    final String date2 = '12:00 AM Tomorrow';

    // Option 1: Define a list of Doctor objects
    List<Doctor> doctors = [
      Doctor(
        imagePath: 'assets/image/doktorbarusatu.jpeg',
        doctorName: 'Dr. Tranquilli',
        specialization: 'Specialist Medicine',
        experience: '6 Years Experience',
        percentage: '87%',
        patientStories: '69 Patient Stories',
        nextAvailableDate: date1,
      ),
      Doctor(
        imagePath: 'assets/image/doktorbarudua.jpeg',
        doctorName: 'Dr. Bonebrake',
        specialization: 'Specialist Dentist',
        experience: '8 Years Experience',
        percentage: '59%',
        patientStories: '82 Patient Stories',
        nextAvailableDate: date2,
      ),
      Doctor(
        imagePath: 'assets/image/dokterbarutiga.jpeg',
        doctorName: 'Dr. Luke Whitesell',
        specialization: 'Specialist Cardiology',
        experience: '7 Years Experience',
        percentage: '57%',
        patientStories: '76 Patient Stories',
        nextAvailableDate: date1,
      ),
      Doctor(
        imagePath: 'assets/image/doktorbaruempat.jpeg',
        doctorName: 'Dr. Shoemaker',
        specialization: 'Specialist Patheology',
        experience: '10 Years Experience',
        percentage: '90%',
        patientStories: '100 Patient Stories',
        nextAvailableDate: date1,
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: searchController,
                  onChanged: (query) {
                    setState(() {
                      searchQuery = query;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Search Doctor',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
                SizedBox(height: 25),
                // List of doctors (filtered based on search query)
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Prevent nested scrolling
                  itemCount: doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = doctors[index];
                    if (searchQuery.isEmpty || doctor.doctorName.toLowerCase().contains(searchQuery.toLowerCase())) {
                      return DoctorCard(
                        imagePath: doctor.imagePath,
                        doctorName: doctor.doctorName,
                        specialization: doctor.specialization,
                        experience: doctor.experience,
                        percentage: doctor.percentage,
                        patientStories: doctor.patientStories,
                        nextAvailable: nextAvailable,
                        date: doctor.nextAvailableDate,
                      );
                    } else {
                      return Container(); // Hide card if it doesn't match the search query
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ... (rest of the code for DoctorCard widget remains unchanged)


class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String specialization;
  final String experience;
  final String percentage;
  final String patientStories;
  final String nextAvailable;
  final String date;

  const DoctorCard({
    required this.imagePath,
    required this.doctorName,
    required this.specialization,
    required this.experience,
    required this.percentage,
    required this.patientStories,
    required this.nextAvailable,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10), // Jarak 10 antara card
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding keseluruhan isi card
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar di kiri
                Container(
                  width: 140, // Ubah lebar gambar
                  height: 140, // Ubah tinggi gambar
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16), // Spasi antara gambar dan teks

                // Teks di kanan
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Teks di sebelah kiri bawah gambar
                      Row(
                        children: [
                          Text(
                            nextAvailable,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF0EBE7F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8), // Spasi antara teks dan nama dokter
                      Text(
                        doctorName,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        specialization,
                        style: TextStyle(fontSize: 13, color: Color(0xFF0EBE7F)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        experience,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                width: 10, // Ukuran lingkaran
                                height: 10, // Ukuran lingkaran
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF0EBE7F), // Warna lingkaran
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12), // Jarak antara lingkaran dan teks "percentage"
                                child: Text(percentage),
                              ),
                            ],
                          ),
                          SizedBox(width: 40), // Mengatur jarak horizontal antara lingkaran dan Text(patientStories)
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Container(
                                width: 10, // Ukuran lingkaran
                                height: 10, // Ukuran lingkaran
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF0EBE7F), // Warna lingkaran
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 12), // Jarak antara lingkaran dan teks "patientStories"
                                child: Text(patientStories),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Align( // Menempatkan tombol Book Now di pojok kanan bawah
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MedicalRecord()));
                          },
                          child: Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0EBE7F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                onPressed: () {
                  // Action when love icon is pressed
                },
                icon: Icon(
                  Icons.favorite, // Ikon love belum dicentang
                  color: Colors.red.shade400, // Ubah warna ikon menjadi merah saat dicentang
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



