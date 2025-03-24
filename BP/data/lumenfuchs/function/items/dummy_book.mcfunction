## * AydenTFoxx @ 2025-03-24
## * 
## * Gives the player a "Dummy Book", featuring basic knowledge on the Dummy,
## * hints towards the Seeker's existence, and an alternative to the chat-based settings panel.


give @a written_book[ \
    written_book_content={ \
        pages: [ \
            '[[ "", { "text": "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|\\no         Δ         O\\n•                    o\\n                     •\\n         ","bold":true,"color":"dark_red"},{"text":"The\\n   ","bold":true,"color":"gold"},{"text":"Dummynomicon","bold":true,"color":"gold","underlined":true},"\\n\\n\\n",{"text":"   by YannahTFoxx","color":"gray"},"\\n\\n",{"text":"•\\no                    •\\nO        [•]         o\\n|_______________|","color":"dark_red","bold":true}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n\\n",{"text":"  \\"To have true\\n   knowledge\\n   is to see the\\n   darkness of\\n   ignorance.\\"","color":"dark_gray"},"\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n  Preface ................... 5\\n \\n  The Dummy .............. ?\\n  The Totem ............... ?\\n\\n  Abilities ...................... ?\\n  Behaviors ............... ?\\n  Loot Table .............. ?\\n\\n  ??? ...............................\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]' \
        ], \
        title: "Dummyνομῐκόν", \
        author: YNHZRFXN \
    }, \
    rarity=rare, \
    item_model=enchanted_book \
]