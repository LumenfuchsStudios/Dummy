## * AydenTFoxx @ 2025-03-24 .. 2025-04-02
## * 
## * Gives the player a "Dummy Book", featuring basic knowledge on the Dummy,
## * hints towards the Seekers existence, and an alternative to the chat-based settings panel.

## ! Work in Progress; Item is currently unobtainable in Survival and has no function in-game.


give @a written_book[ \
    written_book_content={ \
        pages: [ \
            '[[ "", { "text": "|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|\\no         Δ         O\\n•                    o\\n                     •\\n         ","bold":true,"color":"dark_red"},{"text":"The\\n   ","bold":true,"color":"gold"},{"text":"Dummynomicon","bold":true,"color":"gold","underlined":true},"\\n\\n\\n",{"text":"   by YannahTFoxx","color":"gray"},"\\n\\n",{"text":"•\\no                    •\\nO        [•]         o\\n|_______________|","color":"dark_red","bold":true}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n\\n",{"text":"  \\"To have true\\n   knowledge\\n   is to see the\\n   darkness of\\n   ignorance.\\"","color":"dark_gray"},"\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red","bold":false},"\\n\\n  Preface ................... 5\\n \\n  The Dummy .............. ?\\n  The Totem ............... ?\\n\\n  Abilities ...................... ?\\n  Behaviors ............... ?\\n  Loot Table .............. ?\\n\\n  ??? ...............................\\n\\n",{"text":"|_                       _|","bold":false,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[ Preface ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"================\\n¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯","bold":true,"color":"dark_red"},"\\n",{"text":"•                    o\\n                     •","bold":true,"color":"dark_red"},"\\n        ",{"text":"Section I:","color":"gray"},"\\n\\n       The Dummy\\n\\n\\n",{"text":"•","bold":true,"color":"dark_red"},"\\n",{"text":"o       -[•]-        •","color":"dark_red","bold":true},{"text":"\\nO                    o","bold":true,"color":"dark_red"},"\\n",{"text":"________________","bold":true,"color":"dark_red"},"\\n",{"text":"================","bold":true,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[ Overview ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[ Spawning ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"================\\n¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯","bold":true,"color":"dark_red"},"\\n",{"text":"•                    o\\n                     •","bold":true,"color":"dark_red"},"\\n        ",{"text":"Section II:","color":"gray"},"\\n\\n      Abilities and\\n         Behaviors\\n\\n",{"text":"•","bold":true,"color":"dark_red"},"\\n",{"text":"o       -[•]-        •","color":"dark_red","bold":true},{"text":"\\nO                    o","bold":true,"color":"dark_red"},"\\n",{"text":"________________","bold":true,"color":"dark_red"},"\\n",{"text":"================","bold":true,"color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[ Tracking ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[  Warps  ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[ Attack ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"|¯                       ¯|","color":"dark_red"},"\\n    -=[  Loot  ]=-\\n\\n  ...\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"|_                       _|","color":"dark_red"}]]', \
            '[["",{"text":"================\\n¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯","bold":true,"color":"dark_red"},"\\n",{"text":"•                    o\\n                     •","bold":true,"color":"dark_red"},"\\n       ",{"text":"Section III:","color":"gray"},"\\n\\n           ???\\n\\n\\n",{"text":"•","bold":true,"color":"dark_red"},"\\n",{"text":"o       -{•}-        •","color":"dark_red","bold":true},{"text":"\\nO                    o","bold":true,"color":"dark_red"},"\\n",{"text":"________________","bold":true,"color":"dark_red"},"\\n",{"text":"================","bold":true,"color":"dark_red"}]]', \
            '[["",{"text":"                   \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                        \\n                         ","clickEvent":{"action":"change_page","value":"1"},"hoverEvent":{"action":"show_text","contents":"Seek."}}]]' \
        ], \
        title: "Dummyνομῐκόν", \
        author: YNHZRFXN \
    }, \
    rarity=rare, \
    item_model=enchanted_book \
]