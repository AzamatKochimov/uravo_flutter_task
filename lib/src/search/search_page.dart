import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_uravo/generated/assets.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 40,
          child: TextField(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SvgPicture.asset(Assets.iconsSearch, color: Colors.green),
              ),
              suffixIcon: searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(CupertinoIcons.clear_circled_solid, color: Colors.grey),
                      onPressed: () {
                        setState(() {
                          searchQuery = '';
                        });
                      },
                    )
                  : null,
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            ),
            controller: TextEditingController(text: searchQuery),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildMedicCard(
            "AKFA Medline",
            "г.Ташкент, Мирободский район, Фидокор 38-10",
            [Assets.imagesMed1, Assets.imagesMed2, Assets.imagesMed3],
            "4.9",
          ),
          _buildMedicCard(
            "Shox International Hospitalwww",
            "г.Ташкент, Мирободский район, Чехов 12",
            [Assets.imagesMed2, Assets.imagesMed4, Assets.imagesMed5],
            "4.9",
          ),
          _buildMedicCard(
            "Medion Family Hospital",
            "г.Ташкент, Шайхантахурский район, Куча 12",
            [Assets.imagesMed3, Assets.imagesMed2, Assets.imagesMed1],
            "4.9",
          ),
        ],
      ),
    );
  }

  Widget _buildMedicCard(String title, String address, List<String> imagePaths, String rating) {
    return Card(
      elevation: 4,
      shadowColor: Colors.green.withOpacity(0.2),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  ),
                  items: imagePaths.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          imagePath,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Частная клиника",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(width: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.green, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  address,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
