# frozen_string_literal: true

# File original exported from 18xx-maker/export-rb
# https://github.com/18xx-maker/export-rb
# rubocop:disable Lint/RedundantCopDisableDirective, Layout/LineLength, Layout/HeredocIndentation

module Engine
  module Config
    module Game
      module G1857
        JSON = <<-'DATA'
{
  "filename": "1857",
  "modulename": "1857",
  "currencyFormatStr": "$%d",
  "bankCash": 9000,
  "certLimit": {
    "3": 20,
    "4": 16,
    "5": 13,
    "6": 11
  },
  "startingCash": {
    "3": 800,
    "4": 600,
    "5": 480,
    "6": 400
  },
  "capitalization": "full",
  "layout": "flat",
  "mustSellInBlocks": false,
  "locationNames": {
    "D3": "Tucuman",
    "G4": "Resistencia & Carrientes",
    "E16": "Oliviarria",
    "F17": "Tandil",
    "E20": "Bahia Blanca",
    "D7": "Santiago del Estero",
    "D11": "Cordoba",
    "B1": "Salta",
    "A14": "Chile",
    "D21": "Patagonia",
    "G20": "Mar del Plata",
    "G12": "Rosario",
    "H17": "Buenos Aires",
    "C16": "San Juan",
    "G8": "Parana & Santa Fe",
    "B13": "Mendoza"
  },
  "tiles": {
    "1": 1,
    "2": 1,
    "3": 2,
    "4": 2,
    "7": 4,
    "8": 8,
    "9": 7,
    "14": 3,
    "15": 2,
    "16": 1,
    "18": 1,
    "19": 1,
    "20": 1,
    "23": 3,
    "24": 3,
    "25": 1,
    "26": 1,
    "27": 1,
    "28": 1,
    "29": 1,
    "39": 1,
    "40": 1,
    "41": 2,
    "42": 2,
    "43": 2,
    "44": 1,
    "45": 2,
    "46": 2,
    "47": 1,
    "53": 2,
    "54": 1,
    "55": 1,
    "56": 1,
    "57": 4,
    "58": 2,
    "59": 2,
    "61": 2,
    "62": 1,
    "63": 3,
    "64": 1,
    "65": 1,
    "66": 1,
    "67": 1,
    "68": 1,
    "69": 1,
    "70": 1
  },
  "market": [
    [
      "71",
      "76",
      "82",
      "90",
      "100p",
      "112",
      "126",
      "142",
      "160",
      "180",
      "200",
      "225",
      "250",
      "275",
      "300",
      "325",
      "350"
    ],
    [
      "66",
      "70",
      "76",
      "82",
      "90p",
      "100",
      "112",
      "126",
      "142",
      "160",
      "180",
      "200",
      "220",
      "240",
      "260",
      "280",
      "300"
    ],
    [
      "60y",
      "65",
      "70",
      "76",
      "82p",
      "90",
      "100",
      "111",
      "125",
      "140",
      "155",
      "170",
      "185",
      "200"
    ],
    [
      "54y",
      "60y",
      "67",
      "71",
      "76p",
      "82",
      "90",
      "100",
      "110",
      "120",
      "130"
    ],
    [
      "48y",
      "55y",
      "62",
      "67",
      "71p",
      "76",
      "82",
      "90",
      "100"
    ],
    [
      "42o",
      "50y",
      "58y",
      "65",
      "67p",
      "71",
      "75",
      "80"
    ],
    [
      "36o",
      "45o",
      "54y",
      "63",
      "66",
      "69",
      "70"
    ],
    [
      "30b",
      "40o",
      "50y",
      "60y",
      "65",
      "68"
    ],
    [
      "20b",
      "30b",
      "40o",
      "50y",
      "60y"
    ],
    [
      "10b",
      "20b",
      "30b",
      "40o",
      "50y"
    ]
  ],
  "companies": [
    {
      "name": "Camino de Hierro de Buenos Aires al Oeste",
      "value": 40,
      "revenue": 10,
      "desc": "Reserves the Camino de Hierro de Buenos Aires al Oeste hex (G16). Only the owning corporation is permitted to lay this track. This can be purchased by a corporation during the yellow phase. Closes when the first 5 Train is purchased.",
      "sym": "CH"
    },
    {
      "name": "Saint Sebastian Trading Company",
      "value": 40,
      "revenue": 10,
      "desc": "Trade for one share at any time, this action closes the company. This trade cannot allow you to own more than 60% of a corporation. Stops paying dividends when the first 5 Train is purchased. Closes when the first 5 Train is purchased if owned by a corporation.",
      "sym": "SST"
    },
    {
      "name": "Saint Pedro Shipping Company",
      "value": 40,
      "revenue": 10,
      "desc": "The owning corporation increases their revenue at Bahia Blanco (E20) by $10 for all runs. Stops paying dividends when the first 5 Train is purchased. Closes when the first 5 Train is purchased if player owned.",
      "sym": "SPS"
    },
    {
      "name": "Saint Barbara Mining Company",
      "value": 40,
      "revenue": 10,
      "desc": "The owning corporation doubles their revenue at Cordoba (D11) for ONE run to or through Cordoba. Stops paying dividends when the first 5 Train is purchased. Closes when the first 5 Train is purchased if player owned.",
      "sym": "SBM"
    },
    {
      "name": "Saint Zolius Land Company",
      "value": 40,
      "revenue": 10,
      "desc": "The owning corporation may place one token at no cost, this action closes the company. This must follow normal placement rules. Stops paying dividends when the first 5 Train is purchased. Closes when the first 5 Train is purchased if player owned.",
      "sym": "SZL"
    },
    {
      "name": "Saint Dominic de la Calzada Company",
      "value": 40,
      "revenue": 10,
      "desc": "The owning corporation may lay or upgrade one track in addition to their normal track action, this action closes the company. Closes when the first 5 Train is purchased.",
      "sym": "SDL"
    }
  ],
  "corporations": [
    {
      "sym": "BAS",
      "name": "Buenos Aires Great Southern Railway",
      "logo": "1857/BAS",
      "tokens": [
        40,
        100,
        100
      ],
      "coordinates": "H17",
      "color": "green"
    },
    {
      "sym": "AGW",
      "name": "Argentine Great Western Railway",
      "logo": "1857/AGW",
      "tokens": [
        40,
        100,
        100
      ],
      "coordinates": "B13",
      "color": "yellow"
    },
    {
      "sym": "CC",
      "name": "Central Cordoba Railway",
      "logo": "1857/CC",
      "tokens": [
        40,
        100,
        100
      ],
      "coordinates": "D11",
      "color": "brown"
    },
    {
      "sym": "BAC",
      "name": "Buenos Aires Central Railway",
      "logo": "1857/BAC",
      "tokens": [
        40,
        100
      ],
      "coordinates": "H17",
      "color": "blue"
    },
    {
      "sym": "CA",
      "name": "Central Argentine Railway",
      "logo": "1857/CA",
      "tokens": [
        40,
        100
      ],
      "coordinates": "G12",
      "color": "purple"
    },
    {
      "sym": "NCA",
      "name": "North Central Argentine Railway",
      "logo": "1857/NCA",
      "tokens": [
        40,
        100
      ],
      "coordinates": "D7",
      "color": "black"
    },
    {
      "sym": "BBN",
      "name": "Bahia Blanca & Northwest Railway",
      "logo": "1857/BBN",
      "tokens": [
        40
      ],
      "coordinates": "E20",
      "color": "orange"
    },
    {
      "sym": "SF",
      "name": "Santa Fe Railway",
      "logo": "1857/SF",
      "tokens": [
        40
      ],
      "coordinates": "G8",
      "color": "red"
    }
  ],
  "trains": [
    {
      "name": "2",
      "distance": 2,
      "price": 80,
      "rusts_on": "4",
      "num": 5
    },
    {
      "name": "3",
      "distance": 3,
      "price": 180,
      "rusts_on": "6",
      "num": 4
    },
    {
      "name": "4",
      "distance": 4,
      "price": 300,
      "rusts_on": "D",
      "num": 3
    },
    {
      "name": "5",
      "distance": 5,
      "price": 450,
      "num": 2
    },
    {
      "name": "6",
      "distance": 6,
      "price": 630,
      "num": 2
    },
    {
      "name": "D",
      "distance": 999,
      "price": 1100,
      "num": 12,
      "available_on": "6",
      "discount": {
        "4": 300,
        "5": 300,
        "6": 300
      }
    }
  ],
  "hexes": {
    "white": {
      "": [
        "C2",
        "C4",
        "C6",
        "C14",
        "D5",
        "D9",
        "D15",
        "D17",
        "D19",
        "E2",
        "E4",
        "E6",
        "E8",
        "E12",
        "E14",
        "E18",
        "F3",
        "F5",
        "F7",
        "F9",
        "F11",
        "F13",
        "F15",
        "F19",
        "G2",
        "G10",
        "G14",
        "G18",
        "H3",
        "H5",
        "H7",
        "H15",
        "H19"
      ],
      "city=revenue:0": [
        "D3",
        "G4",
        "E16",
        "F17",
        "E20",
        "D7",
        "D11"
      ],
      "town=revenue:0": [
        "E10",
        "G6",
        "H13"
      ],
      "town=revenue:0;town=revenue:0": [
        "D13",
        "G16"
      ],
      "upgrade=cost:120,terrain:mountain": [
        "B11"
      ],
      "upgrade=cost:80,terrain:mountain": [
        "C12"
      ],
      "upgrade=cost:40,terrain:mountain": [
        "B15",
        "C8",
        "C10"
      ]
    },
    "red": {
      "offboard=revenue:yellow_20|brown_60;path=a:5,b:_0": [
        "B1"
      ],
      "offboard=revenue:yellow_0|brown_70;path=a:5,b:_0": [
        "A12"
      ],
      "offboard=revenue:yellow_0|brown_70;path=a:4,b:_0;border=edge:3": [
        "A14"
      ],
      "offboard=revenue:yellow_10|brown_40;path=a:3,b:_0;path=a:4,b:_0": [
        "D21"
      ]
    },
    "gray": {
      "path=a:0,b:1": [
        "D1"
      ],
      "path=a:3,b:4": [
        "B17",
        "C18"
      ],
      "path=a:2,b:3": [
        "F21"
      ],
      "city=revenue:20;path=a:2,b:_0;path=a:_0,b:4;path=a:2,b:_0;path=a:_0,b:3;path=a:3,b:_0;path=a:_0,b:4": [
        "G20"
      ]
    },
    "blue": {
      "offboard=revenue:yellow_20|brown_30;path=a:3,b:_0": [
        "E22"
      ]
    },
    "yellow": {
      "city=revenue:30;path=a:1,b:_0;path=a:3,b:_0;path=a:5,b:_0;label=B": [
        "G12"
      ],
      "city=revenue:40;city=revenue:40;path=a:3,b:_0;path=a:0,b:_0;path=a:_0,b:1;label=NY": [
        "H17"
      ],
      "city=revenue:0;city=revenue:0;label=OO": [
        "C16",
        "G8"
      ],
      "city=revenue:20;city=revenue:20;path=a:5,b:_0;label=OO": [
        "B13"
      ]
    }
  },
  "phases": [
    {
      "name": "2",
      "train_limit": 4,
      "tiles": [
        "yellow"
      ]
    },
    {
      "name": "3",
      "train_limit": 4,
      "tiles": [
        "yellow",
        "green"
      ]
    },
    {
      "name": "4",
      "train_limit": 3,
      "tiles": [
        "yellow",
        "green"
      ]
    },
    {
      "name": "5",
      "train_limit": 2,
      "tiles": [
        "yellow",
        "green",
        "brown"
      ]
    },
    {
      "name": "6",
      "train_limit": 2,
      "tiles": [
        "yellow",
        "green",
        "brown"
      ]
    },
    {
      "name": "D",
      "train_limit": 2,
      "tiles": [
        "yellow",
        "green",
        "brown"
      ]
    }
  ]
}
        DATA
      end
    end
  end
end

# rubocop:enable Lint/RedundantCopDisableDirective, Layout/LineLength, Layout/HeredocIndentation