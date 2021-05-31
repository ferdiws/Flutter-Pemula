class PokemonData {
  String name;
  String number;
  String type;
  String pokemonImage;
  String shinyPokemonImage;
  String classification;
  String heightInInch;
  String heightInMeter;
  String weightInLbs;
  String weightInKilogram;
  List<String> abilities;
  List<String> abilityDescription;
  String hiddenAbility;
  String hiddenAbilityDescription;
  List<String> evolutionChainImageUrls;
  String flavorText;

  PokemonData({
    required this.name,
    required this.number,
    required this.type,
    required this.pokemonImage,
    required this.shinyPokemonImage,
    required this.classification,
    required this.heightInInch,
    required this.heightInMeter,
    required this.weightInLbs,
    required this.weightInKilogram,
    required this.abilities,
    required this.abilityDescription,
    required this.hiddenAbility,
    required this.hiddenAbilityDescription,
    required this.evolutionChainImageUrls,
    required this.flavorText
  });
}

var pokemonDataList = [
  PokemonData(
    name: "Bulbasaur",
    number: "#001",
    type: "GRASS",
    pokemonImage: 'images/bulbasaur.png',
    shinyPokemonImage: 'images/bulbasaur_shiny.png',
    classification: "Seed Pokémon",
    heightInInch: "2\'04\"",
    heightInMeter: "0.7m",
    weightInLbs: "15.2lbs",
    weightInKilogram: "6.9kg",
    abilities: [
      "Overgrow"
    ],
    abilityDescription: [
      "When HP is below 1/3rd its maximum, power of Grass-type moves is increased by 50%."
    ],
    hiddenAbility: "Chlorophyll",
    hiddenAbilityDescription: "When sunny, the Pokémon’s Speed doubles.",
    evolutionChainImageUrls: [
      "https://serebii.net/swordshield/pokemon/001.png",
      "https://serebii.net/swordshield/pokemon/002.png",
      "https://serebii.net/swordshield/pokemon/003.png",
      "https://serebii.net/swordshield/pokemon/003-gi.png"
    ],
    flavorText: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger."
  ),
  PokemonData(
      name: "Charmander",
      number: "#004",
      type: "FIRE",
      pokemonImage: 'images/charmander.png',
      shinyPokemonImage: 'images/charmander_shiny.png',
      classification: "Lizard Pokémon",
      heightInInch: "2\'00\"",
      heightInMeter: "0.6m",
      weightInLbs: "18.7lbs",
      weightInKilogram: "8.5kg",
      abilities: [
        "Blaze"
      ],
      abilityDescription: [
        "When HP is below 1/3rd its maximum, power of Fire-type moves is increased by 50%."
      ],
      hiddenAbility: "Solar Power",
      hiddenAbilityDescription: "During sunshine, the Pokémon’s Special Attack raises to 1.5 times but HP decreases by 1/8th the maximum HP every turn.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/004.png",
        "https://serebii.net/swordshield/pokemon/005.png",
        "https://serebii.net/swordshield/pokemon/006.png",
        "https://serebii.net/swordshield/pokemon/006-gi.png"
      ],
      flavorText: "From the time it is born, a flame burns at the tip of its tail. Its life would end if the flame were to go out."
  ),
  PokemonData(
      name: "Squirtle",
      number: "#007",
      type: "WATER",
      pokemonImage: 'images/squirtle.png',
      shinyPokemonImage: 'images/squirtle_shiny.png',
      classification: "Tiny Turtle Pokémon",
      heightInInch: "1\'08\"",
      heightInMeter: "0.5m",
      weightInLbs: "19.8lbs",
      weightInKilogram: "9.0kg",
      abilities: [
        "Torrent"
      ],
      abilityDescription: [
        "When HP is below 1/3rd its maximum, power of Water-type moves is increased by 50%."
      ],
      hiddenAbility: "Rain Dish",
      hiddenAbilityDescription: "If Heavy Rain weather is in effect, recovers 1/16th max Hit Points at the end of the turn.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/007.png",
        "https://serebii.net/swordshield/pokemon/008.png",
        "https://serebii.net/swordshield/pokemon/009.png",
        "https://serebii.net/swordshield/pokemon/009-gi.png"
      ],
      flavorText: "When it feels threatened, it draws its limbs inside its shell and sprays water from its mouth."
  ),
  PokemonData(
      name: "Pikachu",
      number: "#025",
      type: "ELECTRIC",
      pokemonImage: 'images/pikachu.png',
      shinyPokemonImage: 'images/pikachu_shiny.png',
      classification: "Mouse Pokémon",
      heightInInch: "1\'04\"",
      heightInMeter: "0.4m",
      weightInLbs: "13.2lbs",
      weightInKilogram: "6.0kg",
      abilities: [
        "Static"
      ],
      abilityDescription: [
        "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
      ],
      hiddenAbility: "Lightning Rod",
      hiddenAbilityDescription: "Electric-type moves are drawn to this Pokémon. Electric-type moves will do no damage and the Pokémon's SP ATK is raised one stage.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/172.png",
        "https://serebii.net/swordshield/pokemon/025.png",
        "https://serebii.net/swordshield/pokemon/025-gi.png"
        "https://serebii.net/swordshield/pokemon/026.png",
        "https://serebii.net/swordshield/pokemon/026-a.png"
      ],
      flavorText: "When Pikachu meet, they'll touch their tails together and exchange electricity through them as a form of greeting."
  ),
  PokemonData(
      name: "Dratini",
      number: "#147",
      type: "DRAGON",
      pokemonImage: 'images/dratini.png',
      shinyPokemonImage: 'images/dratini_shiny.png',
      classification: "Dragon Pokémon",
      heightInInch: "5\'11\"",
      heightInMeter: "1.8m",
      weightInLbs: "7.3lbs",
      weightInKilogram: "3.3kg",
      abilities: [
        "Shed Skin"
      ],
      abilityDescription: [
        "Every turn, it has a 1 in 3 chance of healing from a status condition (BURN, PARALYZE, SLEEP, POISON, FREEZE)."
      ],
      hiddenAbility: "Marvel Scale",
      hiddenAbilityDescription: "Defense is increased by 50% when induced with a status (BURN, PARALYZE, SLEEP, POISON, FREEZE).",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/147.png",
        "https://serebii.net/swordshield/pokemon/148.png",
        "https://serebii.net/swordshield/pokemon/149.png"
      ],
      flavorText: "Dratini dwells near bodies of rapidly flowing water, such as the plunge pools of waterfalls. As it grows, Dratini will shed its skin many times."
  ),
  PokemonData(
      name: "Mew",
      number: "#151",
      type: "PSYCHIC",
      pokemonImage: 'images/mew.png',
      shinyPokemonImage: 'images/mew_shiny.png',
      classification: "New Species Pokémon",
      heightInInch: "1\'04\"",
      heightInMeter: "0.4m",
      weightInLbs: "8.8lbs",
      weightInKilogram: "4.0kg",
      abilities: [
        "Synchronize"
      ],
      abilityDescription: [
        "When this Pokémon becomes Poisoned, Paralyzed, or Burned, so does the opponent. However, Fire-type and Water Veil ability Pokémon cannot be Burned, Poison-type and Steel-type and Immunity ability Pokémon cannot be Poisoned, and Limber ability Pokémon cannot be Paralyzed."
      ],
      hiddenAbility: "",
      hiddenAbilityDescription: "",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/151.png"
      ],
      flavorText: "It's very intelligent and can use an incredible variety of moves. Many believe that all other Pokémon are descendants of this one."
  ),
  PokemonData(
      name: "Absol",
      number: "#359",
      type: "DARK",
      pokemonImage: 'images/absol.png',
      shinyPokemonImage: 'images/absol_shiny.png',
      classification: "Disaster Pokémon",
      heightInInch: "3\'11\"",
      heightInMeter: "1.2m",
      weightInLbs: "103.6lbs",
      weightInKilogram: "47.0kg",
      abilities: [
        "Pressure",
        "Super Luck"
      ],
      abilityDescription: [
        "When this Pokémon is hit by a move, the opponent’s PP lowers by 2 rather than 1.",
        "Raises the critical-hit ratio of moves by one level."
      ],
      hiddenAbility: "Justified",
      hiddenAbilityDescription: "Attack is raised by one stage when the Pokémon is hit by a Dark-type move.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/359.png"
      ],
      flavorText: "Swift as the wind, Absol races through fields and mountains. Its curved, bow-like horn is acutely sensitive to the warning signs of natural disasters."
  ),
  PokemonData(
      name: "Regirock",
      number: "#377",
      type: "ROCK",
      pokemonImage: 'images/regirock.png',
      shinyPokemonImage: 'images/regirock_shiny.png',
      classification: "Rock Peak Pokémon",
      heightInInch: "5\'07\"",
      heightInMeter: "1.7m",
      weightInLbs: "507.1lbs",
      weightInKilogram: "230.0kg",
      abilities: [
        "Clear Body"
      ],
      abilityDescription: [
        "Opponents’ moves which lower this Pokémon’s stats have no effect. However this Pokémon may lower its own stats with its own moves."
      ],
      hiddenAbility: "Sturdy",
      hiddenAbilityDescription: "The Pokémon will remain with 1 HP if it was going to be knocked out by a move when at full Hit Points, and it is immune to One Hit KO moves.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/377.png",
      ],
      flavorText: "Every bit of Regirock’s body is made of stone. As parts of its body erode, this Pokémon sticks rocks to itself to repair what’s been lost."
  ),
  PokemonData(
      name: "Regice",
      number: "#378",
      type: "ICE",
      pokemonImage: 'images/regice.png',
      shinyPokemonImage: 'images/regice_shiny.png',
      classification: "Iceberg Pokémon",
      heightInInch: "5\'11\"",
      heightInMeter: "1.8m",
      weightInLbs: "385.8lbs",
      weightInKilogram: "175.0kg",
      abilities: [
        "Clear Body"
      ],
      abilityDescription: [
        "Opponents’ moves which lower this Pokémon’s stats have no effect. However this Pokémon may lower its own stats with its own moves."
      ],
      hiddenAbility: "Ice Body",
      hiddenAbilityDescription: "HP is restored by 1/16th of maximum HP when its hailing.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/378.png"
      ],
      flavorText: "With cold air that can reach temperatures as low as −328 degrees Fahrenheit, Regice instantly freezes any creature that approaches it."
  ),
  PokemonData(
      name: "Registeel",
      number: "#379",
      type: "STEEL",
      pokemonImage: 'images/registeel.png',
      shinyPokemonImage: 'images/registeel_shiny.png',
      classification: "Iron Pokémon",
      heightInInch: "6\'03\"",
      heightInMeter: "1.9m",
      weightInLbs: "451.9lbs",
      weightInKilogram: "205.0kg",
      abilities: [
        "Clear Body"
      ],
      abilityDescription: [
        "Opponents’ moves which lower this Pokémon’s stats have no effect. However this Pokémon may lower its own stats with its own moves."
      ],
      hiddenAbility: "Light Metal",
      hiddenAbilityDescription: "Halves the Pokémon's weight.",
      evolutionChainImageUrls: [
        "https://serebii.net/swordshield/pokemon/379.png"
      ],
      flavorText: "It’s rumored that this Pokémon was born deep underground in the planet’s mantle and that it emerged onto the surface 10,000 years ago."
  )
];