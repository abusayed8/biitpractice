class Country{
  String? name;
  String? capital;
  String? currency;
  String? language;
  String? flagLink;
  region? countryRegion;
  bool isFavorite = false;

  Country({this.name, this.capital, this.currency, this.language, this.flagLink, this.countryRegion});
}

/// Region tag of all countries.
enum region {Asia, Europe, North_America, South_America, Africa, Oceania}

class DataBase{

  static List<String> _homepageContents = [
    'All Countries', 'Play Quiz', '💖Favorites', 'Asia', 'Europe',
    'Remove Ads', 'If you like this app, please rate it', 'North America', 'South America',
    'Africa', 'Oceania', 'Checkout US States Capital App'
  ];

  static List<Country> _countries = [
    Country(
        name: 'Bhutan',
        capital: 'Thimphu',
        currency: 'Bhutanese gultrum(BTN)',
        language: 'Dzongkha, Sharchhopka',
        countryRegion: region.Asia,
        flagLink: 'images/1200px-Flag_of_Bhutan.svg.png'
    ),Country(
        name: "Afghanistan",
        capital: 'Kabul',
        flagLink: 'images/Afgan.png',
        currency: 'Afghan afghani(AFN)',
        language: 'Dari,Pastho',
        countryRegion: region.Asia
    ),Country(
        name: "Albania",
        capital: 'Tirana',
        flagLink: 'images/albania.png',
        currency: 'Albanian lek(ALL)',
        language: 'Albanian',
        countryRegion: region.Europe
    ),Country(
        name: "Algeria",
        capital: 'Algiers',
        flagLink: 'images/algeria.png',
        currency: 'Algerian dinar(DZD)',
        language: 'Arabic',
        countryRegion: region.Africa
    ),Country(
        name: "Andorra",
        capital: 'Andorra la Vella',
        flagLink: 'images/andorra.png',
        currency: 'Euro(EUR)',
        language: 'Catalan',
        countryRegion: region.Europe
    ),Country(
        name: "Angola",
        capital: 'Luanda',
        flagLink: 'images/angola.png',
        currency: 'Angolan kwanza(AOA)',
        language: 'Portuguese',
        countryRegion: region.Africa),
    Country(
        name: "Antigua and Barbuda",
        capital: "St. John'South America",
        flagLink: 'images/antigua.jpg',
        currency: 'East Caribbean dollar(XCD)',
        language: 'English',
        countryRegion: region.North_America
    ),Country(
        name: "Argentina",
        capital: 'Buenos Aires',
        flagLink: 'images/argentina.png',
        currency: 'Argentine peso(ARS)',
        language: 'Spanish',
        countryRegion: region.South_America
    ),Country(
        name: "Armenia",
        capital: 'Yerevan',
        flagLink: 'images/armenia.png',
        currency: 'Armenian dram(AMD)',
        language: 'Armenian',
        countryRegion: region.Asia
    ),

    // Asia region
    Country(
        name: 'Azerbaijan',
        capital: 'Baku',
        currency: 'Azerbaijani manat(AZN)',
        language: 'Azerbaijani',
        countryRegion: region.Asia,
        flagLink: 'images/Flag_of_Azerbaijan.jpg'
    ),Country(
        name: 'Bahrain',
        capital: 'Manama',
        currency: 'Baharaini dinar(BHD)',
        language: 'Arabic',
        countryRegion: region.Asia,
        flagLink: 'images/Flag-Bahrain.jpg'
    ),Country(
        name: 'Bangladesh',
        capital: 'Dhaka',
        language: 'Bengali',
        currency: 'Bangladeshi taka(BDT)',
        countryRegion: region.Asia,
        flagLink: 'images/Bangladesh.png'),Country(
        name: 'United Arab Emirates',
        capital: 'Abu Dhabi',
        currency: 'UAE dirham',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Vietnam',
        capital: 'Hanoi',
        currency: 'đồng',
        language: 'Vietnamese',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Yemen',
        capital: 'Sana’a',
        currency: 'Yemeni rial',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),
    Country(
        name: 'Abkhazia',
        capital: 'Sukhumi',
        currency: 'Russian ruble',
        language: 'Georgian, Abkhaz, Russian',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Flag_of_the_Republic_of_Abkhazia.svg/1200px-Flag_of_the_Republic_of_Abkhazia.svg.png',
        countryRegion: region.Asia
    ),Country(
        name: 'Akrotiri and Dhekelia',
        capital: 'Episkopi Cantonment',
        currency: 'Euro',
        language: 'English, Greek',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Akrotiri_and_Dhekelia_flag.jpg',
        countryRegion: region.Asia
    ),Country(
        name: 'British Indian Ocean Territory',
        capital: 'Diego Garcia Kingdom',
        currency: 'US dollar, UK pound',
        language: 'English',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_the_British_Indian_Ocean_Territory_1990.svg/1200px-Flag_of_the_British_Indian_Ocean_Territory_1990.svg.png',
        countryRegion: region.Asia
    ),Country(
        name: 'Brunei',
        capital: 'Bandar Seri Begawan',
        currency: 'Brunei dollar',
        language: 'Bahasa Melayu',
        flagLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScjzh07wzEhxNPHu8Tc_3vrzFdEW85ZUqvVQjfXm0jjavLrb1c-niMebdDeS-Sjsp3QBc&usqp=CAU',
        countryRegion: region.Asia
    ),Country(
        name: 'Cambodia',
        capital: 'Phnom Penh',
        currency: 'Riel',
        language: 'Khmer',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_Cambodia.svg/1200px-Flag_of_Cambodia.svg.png',
        countryRegion: region.Asia
    ),Country(
        name: 'China',
        capital: 'Beijing',
        currency: 'Renminbi (yuan)',
        language: 'Standard Chinese',
        flagLink: 'https://cdn.pixabay.com/photo/2020/04/04/11/45/flag-5001937_1280.jpg',
        countryRegion: region.Asia
    ),
    Country(
        name: 'Christmas Island',
        capital: 'Flying Fish Cove',
        currency: 'Australian dollar',
        language: 'English',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Flag_of_Christmas_Island.svg/1200px-Flag_of_Christmas_Island.svg.png',
        countryRegion: region.Asia
    ),Country(
        name: 'Cyprus',
        capital: 'Nicosia',
        currency: 'Euro',
        language: 'Greek Turkish',
        flagLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLEbOaQjEDGXqiSIYBmextSMCA-tol2exUQp5LaXD0xIgFYniCHwJBo-TIU98LPt9lkbg&usqp=CAU',
        countryRegion: region.Asia
    ),Country(
        name: 'East Timor',
        capital: 'Dili',
        currency: 'US Dollar',
        language: 'Portuguese Tetum',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Georgia',
        capital: 'Tbilisi',
        currency: 'Lari',
        language: 'Georgian',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Hong Kong',
        capital: 'Special administrative region of China',
        currency: 'Hong Kong dollar',
        language: 'English, Cantonese',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'India',
        capital: 'New Delhi',
        currency: 'Rupee',
        language: 'Hindi, English',
        flagLink: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
        countryRegion: region.Asia
    ),
    Country(
        name: 'Indonesia',
        capital: 'Jakarta',
        currency: 'Rupiah',
        language: 'Indonesian',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Iran',
        capital: 'Tehran',
        currency: 'Rial',
        language: 'Persian',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Iraq',
        capital: 'Baghdad',
        currency: 'Iraqi dinar',
        language: 'Kurdish Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Palestine',
        capital: 'Jerusalem',
        currency: 'Palestine pound',
        language: 'Hebrew, Arabic',
        flagLink: 'https://m.media-amazon.com/images/I/41JCHx++16L._AC_SX425_.jpg',
        countryRegion: region.Asia
    ),Country(
        name: 'Japan',
        capital: 'Tokyo',
        currency: 'Yen',
        language: 'Japanese',
        flagLink: 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png',
        countryRegion: region.Asia
    ),Country(
        name: 'Jordan',
        capital: 'Amman',
        currency: 'Jordanian dinar',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),
    Country(
        name: 'Malaysia',
        capital: 'Kuala Lumpur',
        currency: 'Ringgit',
        language: 'Malaysian',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Maldives',
        capital: 'Malé',
        currency: 'Maldivian rufiyaa',
        language: 'Maldivian',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Myanmar (Burma)',
        capital: 'Naypyidaw',
        currency: 'Kyat',
        language: 'Burmese',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Nepal',
        capital: 'Kathmandu',
        currency: 'Nepales rupee',
        language: 'Nepali',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Pakistan',
        capital: 'Islamabad',
        currency: 'Pakistani Rupee',
        language: 'English Urdu',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Saudi Arabia',
        capital: 'Riyadh',
        currency: 'Saudi riyal',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),
    Country(
        name: 'Qatar',
        capital: 'Doha',
        currency: 'Riyal',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Philippines',
        capital: 'Manila',
        currency: 'Philippine Peso',
        language: 'Filipino English',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Singapore',
        capital: 'Singapore',
        currency: 'Singapore dollar',
        language: 'English, Chinese, Malay, Tamil',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Sri Lanka',
        capital: 'Colombo',
        currency: 'Sri Lankan rupee',
        language: 'Sinhala, Tamil',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Syria',
        capital: 'Damascus',
        currency: 'Syrian pound',
        language: 'Arabic',
        flagLink: '',
        countryRegion: region.Asia
    ),Country(
        name: 'Turkey',
        capital: 'Ankara',
        currency: 'Turkish lira',
        language: 'Turkish',
        flagLink: '',
        countryRegion: region.Asia
    ),

    // Europe
    Country(
        name: 'Åland Islands',
        capital: 'Mariehamn',
        currency: 'Euro',
        language: 'Swedish',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Flag_of_%C3%85land.svg/1200px-Flag_of_%C3%85land.svg.png',
        countryRegion: region.Europe
    ),Country(
        name: 'Austria',
        capital: 'Vienna',
        currency: 'Euro',
        language: 'Austrian German',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_Austria.svg/1200px-Flag_of_Austria.svg.png',
        countryRegion: region.Europe
    ),Country(
        name: 'Belarus',
        capital: 'Minsk',
        currency: 'Belarusian ruble',
        language: 'Belarusian, Russian',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Flag_of_Belarus.svg/640px-Flag_of_Belarus.svg.png',
        countryRegion: region.Europe
    ),Country(
        name: 'Belgium',
        capital: 'Brussels',
        currency: 'Euro',
        language: 'Dutch French German',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/1200px-Flag_of_Belgium.svg.png',
        countryRegion: region.Europe
    ),Country(
        name: 'Bosnia and Herzegovina',
        capital: 'Sarajevo',
        currency: 'Convertible mark',
        language: 'Bosnian, Croatian, Serbian',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Flag_of_Bosnia_and_Herzegovina.svg/1200px-Flag_of_Bosnia_and_Herzegovina.svg.png',
        countryRegion: region.Europe
    ),Country(
        name: 'Bulgaria',
        capital: 'Sofia',
        currency: 'Lev',
        language: 'Bulgarian',
        flagLink: '',
        countryRegion: region.Europe
    ),
    Country(
        name: 'France',
        capital: 'Paris',
        currency: 'Euro, CFP franc',
        language: '',
        flagLink: '',
        countryRegion: region.Europe
    ),Country(
        name: 'Germany',
        capital: 'Berlin',
        currency: 'Euro',
        language: '',
        flagLink: '',
        countryRegion: region.Europe
    ),Country(
        name: 'Italy',
        capital: 'Rome',
        currency: 'Euro',
        language: '',
        flagLink: '',
        countryRegion: region.Europe
    ),Country(
        name: 'Russia',
        capital: 'Moscow',
        currency: 'Russian ruble',
        language: '',
        flagLink: '',
        countryRegion: region.Europe
    ),Country(
        name: 'Spain',
        capital: 'Madrid',
        currency: 'Euro',
        language: '',
        flagLink: '',
        countryRegion: region.Europe
    ),Country(
        name: 'United Kingdom',
        capital: 'London',
        currency: 'Pound sterling',
        language: 'English',
        flagLink: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8jee_dnnCGbeW72PCQqKnaAMU0Q4Gx_ArEQ&usqp=CAU',
        countryRegion: region.Europe
    ),

    // Oceania
    Country(
        name: 'Australia',
        capital: 'Canberra',
        currency: 'Australian dollar(AUD)',
        language: 'English',
        flagLink: 'https://image.shutterstock.com/image-vector/australia-flag-260nw-40271362.jpg',
        countryRegion: region.Oceania
    ),Country(
        name: 'Fiji',
        capital: 'Suva',
        currency: 'Fijian dollar(FJD)',
        language: 'Fijian, English',
        flagLink: '',
        countryRegion: region.Oceania
    ),Country(
        name: 'Kiribati',
        capital: 'Tarawa Atoll',
        currency: 'Australian dollar(AUD)',
        language: 'English',
        flagLink: '',
        countryRegion: region.Oceania
    ),Country(
        name: 'Nauru',
        capital: 'Yaren',
        currency: 'Australian dollar(AUD)',
        language: 'Nauruan',
        flagLink: '',
        countryRegion: region.Oceania
    ),Country(
        name: 'New Zealand',
        capital: 'Wellington',
        currency: 'New Zealand dollar(NZD)',
        language: 'English',
        flagLink: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/255px-Flag_of_New_Zealand.svg.png',
        countryRegion: region.Oceania
    ),Country(
        name: 'Papua New Guinea',
        capital: 'Port Moresby',
        currency: 'Papua New Guinean kina(PGK)',
        language: 'Tok Pisin, English',
        flagLink: '',
        countryRegion: region.Oceania
    ),
    Country(
        name: 'Samoa',
        capital: 'Apia',
        currency: 'Samoan Tala(WST)',
        language: 'Samoan',
        flagLink: '',
        countryRegion: region.Oceania
    ),

    // Country(
    //     name: '',
    //     capital: '',
    //     currency: '',
    //     language: '',
    //     flagLink: '',
    //     countryRegion: region.Oceania
    // ),
  ];

  /// Information of all countries is stored in this list.
  static List<Country> get countries => _countries;

  static List<String> get homepageContents => _homepageContents;
}
