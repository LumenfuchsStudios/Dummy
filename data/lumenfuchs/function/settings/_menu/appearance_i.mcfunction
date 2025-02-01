## * AydenTFoxx @ 2025-01-31
## * 
## * Manages the Dummy's body's materials.


$tellraw @s [ "", \
	{ "text": "--------------------------", "color": "dark_gray" }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2011" } }, \
	{ "text": "Head: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": ["The block texture of the Dummy's head.", "\n", { "text": "The Seeker's worn Pumpkin is unaffected by this setting.", "color": "gray" }] } }, \
	{ "text": "$(head)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3081" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2012" } }, \
	{ "text": "Torso: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": ["The block texture of the Dummy's torso.", "\n", { "text": "This also defines the hurt particles of the Dummy.", "color": "gray" }] } }, \
	{ "text": "$(torso)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3082" } }, "\n\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2013" } }, \
	{ "text": "Left Arm: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's left arm." } }, \
	{ "text": "$(left_arm)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3083" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2014" } }, \
	{ "text": "Right Arm: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's right arm." } }, \
	{ "text": "$(right_arm)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3084" } }, "\n\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2015" } }, \
	{ "text": "Left Leg: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's left leg." } }, \
	{ "text": "$(left_leg)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3085" } }, "\n\n", \
	{ "text": "[<] " , "color": "red", "hoverEvent": { "action": "show_text", "contents": "Reset to default?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2016" } }, \
	{ "text": "Right Leg: ", "color": "gray", "hoverEvent": { "action": "show_text", "contents": "The block texture of the Dummy's right leg." } }, \
	{ "text": "$(right_leg)", "color": "yellow", "hoverEvent": { "action": "show_text", "contents": "Change setting?" }, "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 3086" } }, "\n\n\n", \
	{ "text": "<-- Return", "color": "gold", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 2" } }, \
	{ "text": "  |  ", "color": "dark_gray" }, \
	{ "text": "Refresh", "color": "dark_purple", "clickEvent": { "action": "run_command", "value": "/trigger lumenfuchs.settings set 21" } }, "\n\n", \
	{ "text": "--------------------------", "color": "dark_gray" } \
]