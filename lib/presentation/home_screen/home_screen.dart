import 'package:flutter/material.dart';
import 'package:old_scrap_house/core/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Scrap App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            childAspectRatio: .68,
            children: List.generate(10, (index) {
              return CustomGridTile(
                imagePath: imageLink,
                price: index.toString(),
                description: 'Descreption of $index',
                location: 'Location of $index',
                onTap: () {},
              );
            })),
      ),
    ));
  }
}

class CustomGridTile extends StatelessWidget {
  const CustomGridTile(
      {super.key,
      required this.imagePath,
      required this.price,
      required this.description,
      required this.location,
      required this.onTap});
  final String imagePath;
  final String price;
  final String description;
  final String location;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.sizeOf(context).width * .5) - 15;
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Column(children: [
                SizedBox(
                    height: width,
                    width: width,
                    child: Image.network(
                      imageLink,
                      fit: BoxFit.cover,
                    )),
                Row(
                  children: [widthBoxSmall,
                    Text("$rupeeFont $price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [widthBoxSmall,
                    Text(description,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal)),
                  ],
                ),
                Row(
                  children: [widthBoxSmall,const Icon(Icons.pin_drop,size: 12,), widthBoxSmall,Text(location,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal))],
                )
              ]),
              Material(
                color: Colors.transparent,
                child: SizedBox.expand(
                    child: InkWell(
                  onTap: () {},
                )),
              )
            ],
          )),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
