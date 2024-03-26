import 'package:doctor_hunt/screen/17_login01.dart';
import 'package:doctor_hunt/sisa/22_mydoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6F7FA1), // Gradient color start
              Color(0xFF536184), // Gradient color end
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon/gambaruser.png', // Path untuk gambar user
                              height: 24, // Ubah tinggi gambar sesuai kebutuhan Anda
                              width: 24, // Ubah lebar gambar sesuai kebutuhan Anda
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Abdullah Mamun",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 12, // Ukuran ikon telepon
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "01303-527300",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        // Action when close button is pressed
                      },
                      icon: Icon(Icons.close, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              buildHighlightedListItem(
                icon: Icons.person,
                title: "My Doctors",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyDoctorsScreen()));
                },
              ),
              buildHighlightedListItem(
                icon: Icons.medical_services,
                title: "Medical Records",
                onTap: () {
                  // Action when Medical Records is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.payments,
                title: "Payments",
                onTap: () {
                  // Action when Payments is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.local_pharmacy,
                title: "Medicine Orders",
                onTap: () {
                  // Action when Medicine Orders is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.calendar_today,
                title: "Test Bookings",
                onTap: () {
                  // Action when Test Bookings is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.privacy_tip,
                title: "Privacy & Policy",
                onTap: () {
                  // Action when Privacy & Policy is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.help,
                title: "Help Center",
                onTap: () {
                  // Action when Help Center is tapped
                },
              ),
              buildHighlightedListItem(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {
                  // Action when Settings is tapped
                },
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: buildHighlightedListItem(
                  icon: Icons.logout,
                  title: "Logout",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (index) => LoginSatu()));
                  },
                  showArrow: false, // Tidak menampilkan ikon panah
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHighlightedListItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool showArrow = true, // Argumen opsional untuk menampilkan ikon panah
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 20, right: 20), // Padding kiri dan kanan
            leading: Icon(icon, color: Colors.white),
            title: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            trailing: showArrow ? Icon(Icons.arrow_forward_ios, color: Colors.white) : null, // Menampilkan ikon panah jika showArrow true
          ),
        ),
      ),
    );
  }
}