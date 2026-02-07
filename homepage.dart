import 'package:flutter/material.dart';
import 'package:ui_app/utility/card.dart';
import 'package:ui_app/utility/doc_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Hassan Irshad",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.person, size: 40),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // How do you feel card
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[200],
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "How do you feel?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Fill your medical card right now",
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "Get started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const SizedBox(height: 15),

              // Doctor list title
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Doctor list',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                          fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20), // ⭐ prevents bottom overflow
              // Horizontal ListView for DocCard
              SizedBox(
                height: 200, // Must give height
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DocCard(
                        docImagePath: 'lib/images/doc1.jpg',
                        rating: '4.5',
                        doctorName: 'DR Hassan',
                        doctorProfession: 'Gen.Physician'),
                    DocCard(
                        docImagePath: 'lib/images/doc22.jpg',
                        rating: '4.8',
                        doctorName: 'DR Ahsin',
                        doctorProfession: 'Cardiology'),
                    DocCard(
                        docImagePath: 'lib/images/doc3.jpg',
                        rating: '4.9',
                        doctorName: 'DR Mohsin',
                        doctorProfession: 'Radiologist'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
