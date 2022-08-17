import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/nike7.jpeg"),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nike Collection",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "Everything you need at just one place",
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black12),
              ),
              Container(
                height: 50,
                width: 1000,
                color: const Color.fromARGB(255, 214, 210, 210),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Search here"),
                      Icon(
                        Icons.search,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.black,
                    child: const Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),                
                  const Text("Jordan"),
                  const Text("Running"),
                  const Text("Golf"),
                  const Text("Casual"),
                ],
                
                
              ),
              const SizedBox(height: 10), 
              Container(
                  height: 150,
                  width: 1000,
                  color: const Color.fromARGB(197, 77, 223, 198),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/nike3.jpeg"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nike Air Running"),
                            const Text(
                              "Best of all in just one \n place . Find your perfect \n product only here. ",
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("\$139.00"),
                                const SizedBox(
                                  width: 15,
                                ),
                                // ignore: unnecessary_const
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.black,
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 1000,
                color: const Color.fromARGB(197, 228, 150, 150),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/nike5.jpeg"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Nike Air Running"),
                          const Text(
                            "Best of all in just one\nplace. Find your perfect\nproduct only here.  ",
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("\$139.00"),
                              const SizedBox(
                                width: 15,
                              ),
                              //ignore unnecessary_const
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.black,
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 1000,
                color: const Color.fromARGB(197, 109, 236, 158),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/nike4.jpeg"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nike Air Running "),
                          const Text(
                            "Best of all in just one\nplace. Find your perfect\nproduct only here.",
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("\$139.00"),
                              const SizedBox(
                                width: 15,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.black,
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
