import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_data.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  final PokemonData data;
  bool isFavorite = false;

  DetailScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          data.number + "  " + data.name,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 8),
                  child: Text(
                    data.number,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    data.name,
                    style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(data.pokemonImage),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(data.shinyPokemonImage),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "Classification : ",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto'
                    ),
                  ),
                ),
                Container(
                  width: 85,
                  margin: EdgeInsets.only(left: 4),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 8, bottom: 12),
                  child: Text(
                    "Classification : ",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 12),
                  child: Text(
                    data.classification,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Height : ",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "- ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          data.heightInInch,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "- ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          data.heightInMeter,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Weight : ",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "- ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          data.weightInLbs,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "- ",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        Text(
                          data.weightInKilogram,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 8),
              child: Text(
                "Abilities :",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto'
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index){
                return SingleChildScrollView(
                  padding: EdgeInsets.only(left: 16, right: 8),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto'
                        ),
                      ),
                      Text(
                        data.abilities[index],
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        " : ",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        data.abilityDescription[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      )
                    ],
                  )
                );
              },
              itemCount: data.abilities.length,
            ),
            Visibility(
              visible: getVisible(data.hiddenAbility),
              child: Container(
                margin: EdgeInsets.only(left: 16, top: 8),
                child: Text(
                  "Hidden Abilities :",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto'
                  ),
                ),
              ),
            ),
            Visibility(
              visible: getVisible(data.hiddenAbility),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "- ",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        data.hiddenAbility,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        getColon(data.hiddenAbility),
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Text(
                        data.hiddenAbilityDescription,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 16, top: 16),
              child: Center(
                child: Text(
                  "Evolutionary Chain",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: data.evolutionChainImageUrls.map((url) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        child: Image.network(url),
                      ),
                    );
                  }).toList(),
                ),
              )
            ),
            Center(
              child: Text(
                "\"" + data.flavorText + "\"",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FavoriteButton(),
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

  bool getVisible(String data) {
    if (data == "") {
      return false;
    }
    return true;
  }

  String getColon(String data) {
    String colon = "";
    if (data == "") {
      colon = "";
    } else {
      colon = " : ";
    }
    return colon;
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      backgroundColor: Colors.red,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}