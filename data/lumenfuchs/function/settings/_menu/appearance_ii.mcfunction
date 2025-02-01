## * AydenTFoxx @ 2025-01-31
## * 
## * Manages the Dummy's hurt overlay's materials.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2021" } }, \
	{ "text": "Head: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": ["The block texture of the Dummy's head when hurt.", "\n", { "text": "The Seeker's worn Pumpkin is unaffected by this setting.", "color": "gray" }] } }, \
	{ "text": "$(head)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3091" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2022" } }, \
	{ "text": "Torso: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's torso when hurt." } }, \
	{ "text": "$(torso)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3092" } }, "\n\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2023" } }, \
	{ "text": "Left Arm: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's left arm when hurt." } }, \
	{ "text": "$(left_arm)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3093" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2024" } }, \
	{ "text": "Right Arm: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's right arm when hurt." } }, \
	{ "text": "$(right_arm)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3094" } }, "\n\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2025" } }, \
	{ "text": "Left Leg: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's left leg when hurt." } }, \
	{ "text": "$(left_leg)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3095" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2026" } }, \
	{ "text": "Right Leg: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's right leg when hurt." } }, \
	{ "text": "$(right_leg)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3096" } }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 22" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]