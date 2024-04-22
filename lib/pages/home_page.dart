import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(
                  children: [
                  Container(
                    child: Icon(Icons.download,
                     color: Colors.green,),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const SizedBox(
                    width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Income",
                       style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize:12),
                       ),
                       const SizedBox(height: 5), 
                       Text("Rp. 3.800.000",
                        style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize:15))
                    ],
                  )
                ],
                ),
                Row(children: [
                  Container(
                    child: Icon(Icons.upload,
                     color: Colors.red,),
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const SizedBox(
                    width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expense",
                       style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize:12),
                       ),
                       const SizedBox(height: 5), 
                       Text("Rp. 1.200.000",
                        style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize:15))
                    ],
                  )
                ],
                )
              ],
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(16)
              ),
            ),
          )
        ],
      )),
    );
  }
}