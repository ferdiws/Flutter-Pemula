import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/detail_screen.dart';
import 'package:pokedex/model/pokemon_data.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pokédex',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final PokemonData data = pokemonDataList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(data: data,);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Image.asset(data.pokemonImage)
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  data.number,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  data.name,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Roboto'
                                  ),
                                ),
                              ]
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: 85,
                            padding: EdgeInsets.only(left: 8, top: 5, right: 8, bottom: 3),
                            child: Center(
                              child: Stack(
                                children: <Widget>[
                                  // Stroked text as border.
                                  Text(
                                    data.type,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'ClosenessSolid',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    data.type,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'ClosenessHollow',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: getColor(data.type),
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1.5, 2)
                                ),
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(-1.5, 2)
                                ),
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(1.5, -2)
                                ),
                                BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(-1.5, -2)
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
        );
      },
      itemCount: pokemonDataList.length,
      ),
    );
  }

  Color getColor(String type){
    Color colorFill = Color(0xffffffff);
    if (type == 'FIRE') {
      colorFill = Color(0xffe53a0b);
    } else if (type == 'DARK') {
      colorFill = Color(0xff523d30);
    } else if (type == 'GRASS') {
      colorFill = Color(0xff78c144);
    } else if (type == 'ROCK') {
      colorFill = Color(0xffb9a156);
    } else if (type == 'STEEL') {
      colorFill = Color(0xffbabbc9);
    } else if (type == 'ICE') {
      colorFill = Color(0xff97e3fb);
    } else if (type == 'WATER') {
      colorFill = Color(0xff5591cd);
    } else if (type == 'DRAGON') {
      colorFill = Color(0xff6d63ad);
    } else if (type == 'PSYCHIC') {
      colorFill = Color(0xffeb457f);
    } else if (type == 'ELECTRIC') {
      colorFill = Color(0xfffdbe1b);
    }
    return colorFill;
  }
}
