extends RefCounted

class_name DScript





static var sample_story = {
	"test" : ["Mauris tincidunt posuere erat, iaculis rutrum mi facilisis eget.", "Integer viverra velit nec leo pretium porta.", "Vivamus at neque dapibus, venenatis lectus in, molestie ante.", "Maecenas at dui quis dui sodales lacinia eget efficitur tellus.", "Sed quis sem ac quam luctus sodales ut eu leo.", "Nulla ut luctus orci, et lacinia mi."]
}












var story = {
	"sample1": 
		
{
  "prologue": {
	"content": [
	  "I woke in darkness on cold, damp ground. My eyes struggled to adjust to the black void above me. The silence was deep and pressing like a heavy shroud. I felt tiny and lost amid the endless trees. My heart pounded as I wondered what nightmare had delivered me here.",
	  "The forest around me was a maze of shadow and uncertainty. Cold dew mixed with the dirt beneath my skin. Every sound was magnified into a clamor of dread. I could not remember why I was here or how I got lost. Fear and loneliness swirled in the suffocating air.",
	  "I struggled to recall even a fragment of memory. Hazy visions of warm light and soft voices danced at the edge of my mind. But those memories quickly dissolved into the inky gloom. I felt like a whisper of life in a place that had long forgotten hope. The darkness seemed to laugh at my confusion.",
	  "The silence was complete—almost too complete. I listened for a hint of voice or movement. Only the soft rustle of leaves answered my desperate ears. I felt as if the forest itself was aware of me. It was a silent, judging presence.",
	  "I knew I had to choose: to force myself up or to remain where I was. The night was unyielding and I could no longer hide. I felt both the pull of the unknown and the terror of movement. My tiny body trembled with indecision. I realized that action was my only escape from this nightmare."
	],
	"choice1": {
	  "choice": "Stand",
	  "response": [
		"[i]I force myself to rise, despite my shaking limbs and racing heart...[/i]"
	  ],
	  "outcome": "rising"
	},
	"choice2": {
	  "choice": "Stay",
	  "response": [
		"[i]I stay on the cold ground, hoping a memory might come back...[/i]"
	  ],
	  "outcome": "confusedCall"
	}
  },
  "rising": {
	"content": [
	  "I slowly rise, my legs weak from sleep and fear. The dark forest looms all around me. Each step echoes on soft ground littered with fallen leaves. The trees tower like silent sentinels casting deep shadows. I feel a fragile determination stir amid the terror.",
	  "Cold air bites at my skin as I take tentative steps forward. Every sound – a branch snapping, a leaf rustling – jolts me with dread. I focus on the faint path ahead, barely visible in the gloom. The silence is broken only by my uneasy breathing. I know I must move, though I tremble inside.",
	  "The ground feels soft and treacherous beneath my feet. I stumble over tangled roots and moss-covered earth. Each step is a battle between fear and the desperate need to escape. I strain my eyes, hoping to catch a glimmer of light or sign. The forest seems endless and indifferent.",
	  "I notice the faint outline of a narrow trail amid the thick underbrush. It calls to me like a hidden promise of rescue. Shadows play tricks on my eyes, but I follow the subtle direction it offers. The trail, however faint, is my only guide now. Every step feels like surrendering to fate.",
	  "I feel a mix of terror and hope as I continue. The forest is silent but for the steady rhythm of my footsteps. My mind is a jumble of fear and uncertain courage. I feel both alone and strangely accompanied by the dark. I press on into the unknown."
	],
	"choice1": {
	  "choice": "Go",
	  "response": [
		"[i]I follow the trail further into the night...[/i]"
	  ],
	  "outcome": "followTrail"
	},
	"choice2": {
	  "choice": "Call",
	  "response": [
		"[i]I raise my voice into the darkness, though it trembles out feebly...[/i]"
	  ],
	  "outcome": "confusedCall"
	}
  },
  "confusedCall": {
	"content": [
	  "I call out, 'Hello?' but my voice is swallowed by the forest. The sound echoes back to me, empty and cold. I strain to hear any reply or answer. The silence deepens, feeling almost hostile. I am left with only my own frightened heartbeat.",
	  "The air is thick with unanswered questions. I wonder if the forest cares at all. My voice fades into the darkness. Loneliness and fear settle heavily in my chest. I remain motionless, shivering in the quiet void.",
	  "I repeat my call, but still there is no response. The trees stand mute and indifferent around me. My words seem to vanish as if taken by the wind. Every second stretches out in dreadful isolation. The silence mocks my hope for rescue.",
	  "I feel trapped in a void of my own making, abandoned to a forest that offers no comfort. The cold grips me with icy fingers. I am alone with my racing thoughts and unanswered pleas. All I can do is wait, heart pounding in the eerie stillness.",
	  "In that endless quiet, I resolve that I must eventually stand and move forward. But for now, I linger, fearful of the dark unknown. I am caught between inaction and the terror of stepping into the void. My mind trembles with worry and uncertainty."
	],
	"choice1": {
	  "choice": "Stand",
	  "response": [
		"[i]I shake off my despair and force myself to rise...[/i]"
	  ],
	  "outcome": "rising"
	}
  },
  "followTrail": {
	"content": [
	  "I follow the faint trail made of broken twigs and disturbed leaves. The path weaves among ancient trees that whisper with age. It feels as if this trail was made just for me, a secret route through darkness. My footsteps are soft yet resolute against the forest floor. The night carries a promise, however small, of direction.",
	  "Every step reveals more of the forest’s hidden realm. The chill of the night deepens as I press on. Shadows flit past at the corner of my vision, and I wonder if I am truly alone. The trail winds unpredictably, urging me to trust the unknown. Each movement brings a mix of hope and danger.",
	  "I notice subtle signs along the path—small markings on bark and delicate patterns in the leaf litter. They seem to guide me quietly. The forest, though full of lurking fears, offers these hints like silent guides. I take comfort in these signs, even as they deepen the mystery. I feel pulled deeper into its embrace.",
	  "The cool air carries a hint of something sweet and old. It mingles with the scent of damp earth, evoking memories I cannot recall. The trail itself feels alive, as though it is watching me in return. I walk steadily, careful yet curious about what lies ahead. Every crunch underfoot is a step into the unknown.",
	  "I sense that this path is more than just a way to leave the darkness—it is a journey into my own hidden depths. The forest’s murmur surrounds me, soft and insistent. I wonder what secrets it is willing to reveal, and at what price. With a deep breath, I surrender to the path and continue on."
	],
	"choice1": {
	  "choice": "Follow",
	  "response": [
		"[i]I continue along the trail, eyes fixed ahead...[/i]"
	  ],
	  "outcome": "murmurWind"
	},
	"choice2": {
	  "choice": "Explore",
	  "response": [
		"[i]I divert slightly to check a strange sound off the path...[/i]"
	  ],
	  "outcome": "smallPath"
	}
  },
  "murmurWind": {
	"content": [
	  "The wind begins to murmur through the dark canopy with soft, sorrowful tones. Its sound is gentle yet laden with ancient grief. I pause as the breeze caresses my face, carrying whispers of old secrets. There is a strange comfort in its mournful song. It feels as though the wind speaks directly to my heart.",
	  "The murmurs twist in the air, sounding like broken lullabies. They hint at forgotten tales and warnings of a cursed past. I can almost decipher fragments of lost language in its whispers. The soothing sound drives away some of my fear, even as it deepens the mystery. I let the gentle wind guide my thoughts.",
	  "As I listen, a subtle chill creeps over me. The murmurs seem to know my name, calling me with a tender sadness. I feel both welcomed and haunted by the sound. The forest, too, seems to lean in and listen. For a moment, I am a part of this ancient conversation.",
	  "The wind’s voice is both a guide and a lament. I sense that following its call might lead me to answers or more profound secrets. Its soft melody contrasts with the harsh darkness surrounding me. I remain still, letting every whispered word soak into my bones. This quiet solace is all I have in the overwhelming night.",
	  "Finally, the wind settles into a rhythmic hum. I know it is time to decide whether to follow this ethereal call deeper into the gloom. My heart trembles with both fear and longing as I prepare to move on. The murmurs fade as silently as they had come, leaving behind an invitation I cannot ignore."
	],
	"choice1": {
	  "choice": "Listen",
	  "response": [
		"[i]I let the wind guide me, each step measured by its mournful tune...[/i]"
	  ],
	  "outcome": "faintVoice"
	},
	"choice2": {
	  "choice": "Ignore",
	  "response": [
		"[i]I brush off the wind’s whispers and choose my own path...[/i]"
	  ],
	  "outcome": "smallPath"
	}
  },
  "faintVoice": {
	"content": [
	  "Amid the wind’s soft song, I hear a distinct, fragile voice call my name. The sound is tender yet filled with a palpable sorrow. It seems to drift from nowhere, as if woven into the fabric of the night. I strain to capture every word, my heart aching with curiosity. The voice feels like a lonely echo meant only for me.",
	  "It repeats my name with a fragile warmth that both soothes and unsettles me. The tone is quiet and mournful, like a memory trying to resurface. I cannot tell if it is real or just another illusion of this cursed forest. Still, its call resonates within me, urging me forward. I am drawn to follow, despite the fears that grip me.",
	  "The voice is soft yet insistent, a beacon of fragile hope among crushing darkness. Every syllable trembles with a deep, personal sorrow. I feel as though the voice is offering me a chance to know something long lost. There is a subtle promise in its sound, a promise of understanding my fate. Its gentle call pierces the oppressive silence.",
	  "In that moment, I decide I must seek the source of this delicate cry. The voice is a thread in the tapestry of this night, and I cannot let it unravel unnoticed. I take a deep breath, gathering the courage I have left. The invitation is irresistible, even as my mind begs caution. With a resolute heart, I step toward the unknown.",
	  "The forest around me seems to hold its breath as I move. The soft voice mingles with the wind, creating an eerie harmony. I feel both vulnerable and determined, aware that this path may forever change me. The call fades slightly as I draw near, leaving me with only the echo of its lament."
	],
	"choice1": {
	  "choice": "Follow",
	  "response": [
		"[i]I follow the soft voice into the deep gloom...[/i]"
	  ],
	  "outcome": "uncertainVoice"
	},
	"choice2": {
	  "choice": "Doubt",
	  "response": [
		"[i]I hesitate, wondering if the voice is a trick of my fear...[/i]"
	  ],
	  "outcome": "lostMemory"
	}
  },
  "uncertainVoice": {
	"content": [
	  "I move toward the source of the soft, uncertain voice. The sound is faint but persists amidst the rustling leaves. Its tone is delicate, as if carrying a message of both warning and solace. My steps are slow and cautious as I try to decipher its meaning. I feel that with every step, I’m drawing closer to a hidden truth.",
	  "The voice now seems to echo in the damp air, layered with a quiet urgency. Shadows twist in the distance, and I sense a presence that stares without eyes. The soft murmur of the voice intertwines with my racing heartbeat. I am caught between hope and dread in this dark moment. The forest itself seems to lean in, curious and somber.",
	  "Every breath is heavy with anticipation as I approach a small, murky clearing. The voice’s words remain indistinct, like fragments of an ancient lullaby. I am not sure what awaits me, but the call feels personal and undeniable. There is a strange intimacy in how the sound seems to cradle my fears. I move forward, driven by a mix of desperation and longing.",
	  "The clearing is barely lit by a ghostly glow from the moon. I peer into the depth of the dark, expecting to see someone waiting. Instead, the void greets me with silence and shifting shadows. Yet the voice lingers, a soft promise lost in the night air. I feel that I must uncover its secret no matter the cost.",
	  "In that charged silence, the voice fades to a whisper, leaving me alone with my thoughts. I am filled with both a sense of purpose and a deep, aching uncertainty. Every fiber of my being urges me to keep moving, to chase after the elusive sound. The forest seems to hold its breath as I decide my next step."
	],
	"choice1": {
	  "choice": "Go",
	  "response": [
		"[i]I decide to pursue the voice further into the darkness...[/i]"
	  ],
	  "outcome": "mistyPath"
	},
	"choice2": {
	  "choice": "Stop",
	  "response": [
		"[i]I pause, fearing this call might lead to deeper despair...[/i]"
	  ],
	  "outcome": "lostMemory"
	}
  },
  "lostMemory": {
	"content": [
	  "I feel the fragile voice slip away into an abyss of my own hesitation, and I am left alone with the crushing weight of my forgotten memories. The darkness around me deepens as each step becomes a retreat from the promise of hope. Lost in a swirl of internal voices and vague images, I wander aimlessly. My mind is cluttered with half-formed dreams and long-ago whispers that I cannot piece together. Every sound seems to mock my inability to grasp my past.",
	  "The forest around me grows eerily silent, as if it too has given up on the possibility of solace. I can no longer distinguish between the cold, external night and the even colder void within my soul. My heart feels heavier with each passing moment of doubt. Shadows of memories—flashes of laughter, brief moments of gentle light—float past like fragments of a shattered mirror. Yet, I cannot hold onto any of these fleeting images.",
	  "I stagger through the underbrush, feeling each step as if sinking into a mire of despair. The soft earth, once promising a guide, now drags me downward with invisible hands. My thoughts are muddled by loss and the bitter taste of regret. I hear nothing but the echo of my own shuffling and the distant, sorrowful murmur of the forest. Every rustle seems to whisper of what I can no longer remember.",
	  "The trees loom large and unyielding, their dark silhouettes merging with my own inner gloom. I feel an overwhelming urge to collapse completely into the void of my doubts. The quiet becomes oppressive, a dense fog in my mind. I am adrift in a sea of lost time, where memory and darkness blend into one oppressive mass. In this state, I wonder if I will ever find a spark of hope again.",
	  "Yet even as despair threatens to consume me, a flicker of something stirs inside—an echo of a distant memory or perhaps a tiny pulse of defiant life. It is faint, but it is there, like a candle struggling against a strong wind. Though I do not know its source, it beckons me to not entirely surrender to the darkness. I feel a trembling longing to remember and to reclaim a piece of who I once was. That small spark urges me to search for a way to merge back with the path of hope."
	],
	"choice1": {
	  "choice": "Search",
	  "response": [
		"[i]I clench my fists and decide to seek that elusive spark of memory...[/i]"
	  ],
	  "outcome": "followTrail"
	},
	"choice2": {
	  "choice": "Surrender",
	  "response": [
		"[i]I nearly let go, feeling the darkness clutch me, but something stops me...[/i]"
	  ],
	  "outcome": "prologue"
	}
  },
  "mistyPath": {
	"content": [
	  "The clearing gives way to a narrow path shrouded in light mist. The air is cool, and every step sounds muffled on the soft earth. I follow this slender route as it winds through thick, silent trees. The mist blurs the edges of reality, making the path seem endless. I feel as though I am walking between dreams and nightmares.",
	  "The fog transforms familiar shapes into strange silhouettes that dance at the corners of my vision. My breath is visible in the cold air as I hurry on, the mist cloaking my every move. I can barely see my hand in front of me, yet the path remains true. There is something both eerie and comforting about this shrouded trail. It calls me onward, promising answers in its secret depths.",
	  "I notice that the mist takes on a silver hue under the faint moonlight. Every shimmer and wisp seems to hide a story I cannot yet understand. The silence is profound, interrupted only by the sound of my determined steps. I trust that the path, though obscure, leads toward something important. I continue, heart full of cautious hope.",
	  "The mist softens the harsh outlines of the forest, transforming it into a realm of soft, surreal images. Even the night feels tender, as if soothing the wounds of my fear. I sense that every moment on this path is a step into a deeper mystery. The trail feels magical in its quiet melancholy. I press forward, my resolve solidifying with each step.",
	  "There is a stillness here that makes time seem to slow. I am both lost and found in its embrace. Every inhalation fills me with the scent of pine and ancient earth. I know I must soon meet whoever or whatever calls me. The path whispers of destiny in the quiet of the mist."
	],
	"choice1": {
	  "choice": "Enter",
	  "response": [
		"[i]I step deeper into the mist, determined to reach its heart...[/i]"
	  ],
	  "outcome": "oldOak"
	},
	"choice2": {
	  "choice": "Rest",
	  "response": [
		"[i]I pause for a moment, letting the stillness calm my racing heart...[/i]"
	  ],
	  "outcome": "lostDiary"
	}
  },
  "oldOak": {
	"content": [
	  "At the edge of the mist, a massive old oak stands in solemn silence. Its trunk is wide and scarred by time, and its branches stretch out like ancient arms. The tree seems to hold the weight of countless secrets in its gnarled bark. Leaves rustle softly around it in a quiet, endless hymn. I pause before the oak, feeling a strange reverence in its presence.",
	  "I run my hand over the rough surface, tracing the scars that mark its lifetime. Each groove whispers of memories and long-forgotten eras. The oak stands as a silent guardian in this mysterious forest. I feel both small and significant in its timeless shadow. In this moment, it seems to offer me a sliver of quiet understanding.",
	  "The air around the oak is still and heavy with ancient sorrow. I wonder if this old tree has seen many lost souls like me pass by. Its leaves sway gently, as if in silent greeting or warning. I rest against its sturdy trunk, gathering the courage to continue. The oak is a monument to both endurance and loss.",
	  "A faint light filters through the dense canopy above, illuminating specks of dust that dance in the air. The interplay of light and shadow on the bark creates a picture of quiet despair and hope. I listen to the soft murmur of the wind as it caresses the leaves. For a moment, I feel less alone in this vast darkness. The oak is my only witness in this timeless night.",
	  "I turn away reluctantly, feeling that I have absorbed some of its ancient strength. The tree’s silent presence fills me with both awe and determination. I know my journey is still long and uncertain, but I feel a little braver now. With a deep breath, I continue along the trail away from this venerable guardian. Its memory is etched in my heart as I move on."
	],
	"choice1": {
	  "choice": "Go",
	  "response": [
		"[i]I step away, carrying the oak’s quiet strength with me...[/i]"
	  ],
	  "outcome": "crackedStone"
	},
	"choice2": {
	  "choice": "Stay",
	  "response": [
		"[i]I linger in its comforting shade for another moment...[/i]"
	  ],
	  "outcome": "crackedStone"
	}
  },
  "crackedStone": {
	"content": [
	  "Beyond the oak, I find a large, weathered stone with deep cracks. The stone is covered with moss and strange, faded symbols. Its surface tells a silent tale of time and turmoil. I study each mark, feeling a shiver as I wonder what it once meant. It seems a relic of ancient rites and hidden memories.",
	  "The inscriptions twist across the stone like a secret code. I trace them with a trembling finger, trying to piece together their meaning. The symbols are obscure and filled with sorrowful mystery. Their surface is cool and damp, anchoring me in this forgotten history. The stone seems to hold a message meant for someone who dares to understand.",
	  "Each crack in the stone appears deliberate, like scars earned from a dark past. I feel that these marks are warnings and keys to lost truths. The scene is both eerie and oddly poetic in its decay. I stand in quiet awe of what this ancient monument represents. The stone silently begs for someone to unlock its secrets.",
	  "In the dim light, the stone glows faintly as if imbued with hidden magic. I can almost hear distant voices echoing through its crevices. The interplay of nature and history makes me feel part of something much larger than myself. I am both a witness and a participant in this timeless tableau. The mystery deepens as I study the cryptic runes.",
	  "I leave the stone with a mind swirling with questions and hidden dread. Its secrets remain locked in time, but I feel that knowing them is essential. The cracked surface continues to haunt my thoughts as I move on. I take a deep breath, steeling myself for what lies ahead. The stone’s silent message lingers in the chill of the air."
	],
	"choice1": {
	  "choice": "Read",
	  "response": [
		"[i]I ponder the symbols, trying to decode their hidden lore...[/i]"
	  ],
	  "outcome": "smallClearing"
	},
	"choice2": {
	  "choice": "Pass",
	  "response": [
		"[i]I decide not to linger and continue on my path...[/i]"
	  ],
	  "outcome": "smallClearing"
	}
  },
  "smallClearing": {
	"content": [
	  "I emerge into a small clearing bathed in faint moonlight. The open space feels strangely peaceful in the midst of chaos. Gentle beams reveal wildflowers and tangled grass dancing in the cool air. The clearing is a brief respite from the oppressive forest. In its quiet, I find a momentary calm amid my fear.",
	  "The soft light paints the clearing with silver hues, lending a dreamlike quality to the scene. I feel both vulnerable and safe under the watch of the night sky. The grass sways as if in a quiet, welcoming dance. I notice delicate scents of earth and dew mingling in the air. This place seems untouched by time, a hidden sanctuary for lost souls.",
	  "A sense of bittersweet calm wraps around me as I stand in the open space. The soft chorus of nocturnal sounds fills the air around me. I sense that here I might gather my strength for what lies ahead. Every gentle sound and soft light encourages me to pause and reflect. I let the tranquility soothe my battered heart.",
	  "I take a deep breath, soaking in the momentary peace of the clearing. Shadows recede slightly under the gentle moon. I am aware of my own frailty and the forest’s infinite mystery. The calm is fragile, like a delicate promise of morning. I remain here, lost in the solace of solitude.",
	  "But even in this serene space, I feel a faint stirring of something unspoken. A quiet hint of destiny or danger lingers at the edges. I know that this peace is only temporary and that my journey must continue. With reluctant acceptance, I prepare to move on, carrying the memory of this calm. The clearing slowly fades as I step into the darker path beyond."
	],
	"choice1": {
	  "choice": "Move",
	  "response": [
		"[i]I leave the clearing, stepping back into the wild unknown...[/i]"
	  ],
	  "outcome": "lostDiary"
	},
	"choice2": {
	  "choice": "Rest",
	  "response": [
		"[i]I sit for a moment longer, letting the peace fill me up...[/i]"
	  ],
	  "outcome": "lostDiary"
	}
  },
  "lostDiary": {
	"content": [
	  "Amid tangled roots and fallen leaves, I uncover a tattered diary. Its cover is worn and stained by time, yet its presence feels urgent. The diary is filled with choppy, desperate lines of words that cry of loss and despair. Each page hints at a forgotten curse woven through this forest. I feel a magnetic pull to read its sorrowful secrets.",
	  "The diary’s pages crackle with the weight of untold stories. Words scrawled in a hurried hand speak of nightmares and hidden truths. I can almost feel the anguish of its writer with every sentence. The faded ink tells of loneliness, fear, and doomed hopes. In this relic, I sense a mirror of my own haunting journey.",
	  "Every sentence is a fragment of a broken past, yet it carries an undeniable pain that resonates with me. The diary suggests that I am not the first to wander this desolate land. Its words blend fear with fragile hope. I shudder as I imagine the writer’s fate, entombed in these cursed woods. The diary is both a warning and a key.",
	  "The pages are delicate, as if on the verge of falling apart under the weight of their secrets. I feel an urge to piece together the scattered memories within. The diary might hold the answers to the terrors that plague this forest. With trembling hands, I begin to read its cryptic messages. The dark words echo in my mind like a lost lament.",
	  "I close the diary slowly, overwhelmed by its bitter truth. Its sorrow clings to me like a second skin. I sense that understanding these words might shape my destiny. The diary leaves me with more questions than answers. I tuck it carefully away, a heavy burden of memories and mystery."
	],
	"choice1": {
	  "choice": "Read",
	  "response": [
		"[i]I pour over the pages, desperate to understand their secret lore...[/i]"
	  ],
	  "outcome": "crypticScript"
	},
	"choice2": {
	  "choice": "Keep",
	  "response": [
		"[i]I secure the diary in my bag, knowing it may be key later...[/i]"
	  ],
	  "outcome": "crypticScript"
	}
  },
  "crypticScript": {
	"content": [
	  "The diary reveals cryptic script and symbols that baffle my young mind. Each passage is a jumbled mixture of poetry and dark prophecy. The words hint at curses, lost souls, and the forest’s terrible legacy. I feel both dread and wonder as I try to piece it together. The script leaves me with a deep, unsettling question: What price must be paid for survival?",
	  "The language is raw and fragmented, like a madman's plea. Every sentence shudders with a quiet despair that mirrors my own. The cryptic lines bleed together into a tapestry of ominous visions. I feel as if the forest itself wrote these words. Their meaning is elusive yet undeniably profound.",
	  "I struggle to decipher the message, feeling the weight of ancient sorrows in each symbol. It is as if the diary calls out to forces beyond comprehension. The script speaks of paths taken and hearts broken under the moon. I cannot help but shiver at the thought. The fear and wonder twist inside me.",
	  "The fragmented verses hint at a secret hidden within the forest—something powerful and dangerous. I sense that my own fate is linked to these dark words. In that moment, I feel simultaneously cursed and chosen. The diary speaks in riddles that both haunt and beckon. I am left with an eerie certainty that nothing will ever be the same.",
	  "I close the diary with a heavy heart, the last echoes of its cryptic message lingering in my mind. Its dark promise is both a blessing and a burden. I know I must follow the clues hidden in its lines. The forest seems to pulse with the rhythm of those haunting words. I set out, determined yet terrified, to uncover the truth."
	],
	"choice1": {
	  "choice": "Go",
	  "response": [
		"[i]I decide to follow the hints laid out in the dark verses...[/i]"
	  ],
	  "outcome": "cottageGlimpse"
	},
	"choice2": {
	  "choice": "Hide",
	  "response": [
		"[i]I hesitate, feeling the weight of the curse settle in my bones...[/i]"
	  ],
	  "outcome": "cottageGlimpse"
	}
  },
  "cottageGlimpse": {
	"content": [
	  "In the distance, a decrepit cottage looms, its broken windows flickering in weak light. The structure looks abandoned yet strangely inviting among the twisted trees. I approach with cautious steps, each footfall echoing in the night. The silence around the cottage is thick and heavy with secrets. I can almost feel the sorrow of its past resonating in the air.",
	  "The cottage is worn, its timbers warped by time and neglect. A faint glow seeps through a shattered window pane, casting ghostly shapes on the ground. The door hangs slightly ajar, whispering of forgotten lives. I wonder if someone still lingers inside, a spirit trapped within these crumbling walls. The air carries a faint scent of decay mixed with a hint of something familiar.",
	  "Every step closer makes my heart race faster. I feel the pull of mysteries hidden within the dark structure. The cottage seems to call out to those who are lost. I move slowly, each moment a mix of dread and desperate hope. The building stands as a relic of an era long vanished.",
	  "I notice intricate carvings on the door that hint at stories of sorrow and magic. These details are both beautiful and unsettling, a stark contrast to the decay. They seem to mark the cottage as a place of deep history and pain. I pause, mesmerized by the artistry in the midst of ruin. The door appears as a threshold to untold secrets.",
	  "I decide that entering the cottage might offer the guidance I need. The warm glow within beckons me, promising refuge or perhaps more mysteries. I know that crossing this threshold is risky, but I feel compelled to search for answers. The cottage stands like a silent sentinel in the dark. I reach out to push the door open, my heart pounding."
	],
	"choice1": {
	  "choice": "Enter",
	  "response": [
		"[i]I push the creaking door open and step inside...[/i]"
	  ],
	  "outcome": "cottageDoor"
	},
	"choice2": {
	  "choice": "Pass",
	  "response": [
		"[i]I hesitate, then decide to keep searching outside...[/i]"
	  ],
	  "outcome": "lostDiary"
	}
  },
  "cottageDoor": {
	"content": [
	  "Inside, the cottage is dim and cold with time frozen in decay. Every floorboard creaks under an unseen memory of laughter and grief. Dust dances in the weak rays of light from a broken window. The walls whisper stories that are too soft to catch fully. I feel as if I have stepped into a forgotten room of a lost world.",
	  "Faded wallpaper peels like old scars from the walls. The air smells of mildew and lost eras. Shadows play across the room, forming shapes that vanish when looked at too closely. Each object here seems laden with sorrow. It is as if the entire place mourns a once-cherished past.",
	  "A grand staircase, now rickety and unstable, leads further into darkness. I can sense that something important lies somewhere beyond it. The silence is overwhelming, punctuated only by my own cautious breathing. I approach the staircase with a mixture of dread and determination. The house feels alive with an ancient, sorrowful memory.",
	  "In the corner of the room, a broken mirror reflects my pale, trembling face. My eyes search for any sign of comfort or threat in my own reflection. The mirror’s shards scatter memories like pieces of a puzzle I cannot complete. I feel both exposed and oddly recognized by the haunted glass. Its broken beauty stares back at me with unspoken tales.",
	  "I realize that this place holds the key to my path forward. Whether it is a trap or a sanctuary, I must uncover its secrets. The burden of mystery presses on me as heavily as the night outside. With cautious resolve, I decide to explore further. I climb the creaking stairs, each step echoing in the silence."
	],
	"choice1": {
	  "choice": "Climb",
	  "response": [
		"[i]I ascend the stairs carefully, heart pounding...[/i]"
	  ],
	  "outcome": "insideCottage"
	},
	"choice2": {
	  "choice": "Wait",
	  "response": [
		"[i]I pause to listen for any sound before moving further...[/i]"
	  ],
	  "outcome": "insideCottage"
	}
  },
  "insideCottage": {
	"content": [
	  "At the top of the stairs, a long, dark hallway stretches before me. The walls are lined with old portraits whose eyes seem to follow me. Faded memories cling to every surface as if trapped in time. The air is heavy with sorrow and a hint of fear. I take a cautious step forward, wondering what secrets these halls hold.",
	  "The silence is broken only by the creaks of the old wood. I feel as if I am walking through someone’s long-forgotten nightmare. Every step is met with the hushed whisper of the past. I cannot shake a sense of being watched from the shadows. The hallway seems to stretch on forever, a corridor of memories and lost hopes.",
	  "The dim light flickers uncertainly from an old lantern mounted on the wall. It casts shifting shadows that twist into strange shapes. I wonder if these shapes are real or just tricks of the light. The eerie quiet makes every sound resonate like a distant echo. I feel both curious and terrified in this haunted space.",
	  "At the far end of the hall, a door stands slightly ajar, revealing a glimpse of a room beyond. The faint glow from inside invites me like a promise of answers or more questions. I stand at the threshold, heart racing and mind awash with trepidation. Each moment stretches as I gather the courage to push the door. The silence urges me to step forward.",
	  "I take a deep breath and push the door slowly open. The creak of old hinges is the only sound breaking the heavy hush. I am unsure what awaits me in the darkness beyond, but I know that I must continue. The mystery of this place calls to me in a language I can only feel. I step into the room, letting the unknown envelope me."
	],
	"choice1": {
	  "choice": "Explore",
	  "response": [
		"[i]I venture deeper into the room, determined to find meaning...[/i]"
	  ],
	  "outcome": "ghostLady"
	},
	"choice2": {
	  "choice": "Exit",
	  "response": [
		"[i]I decide to turn back and search elsewhere...[/i]"
	  ],
	  "outcome": "lostDiary"
	}
  },
  "ghostLady": {
	"content": [
	  "In the dim room, a spectral figure of a woman appears before me. Her presence is fragile, like a wisp of smoke, yet filled with mournful eyes. She hovers silently near a broken window, gazing out as if lost in memory. Her translucent face shows hints of sorrow and regret. I feel both drawn to and frightened by her gentle, otherworldly aura.",
	  "The ghostly lady’s eyes seem to reflect a lifetime of pain and longing. Her silence speaks louder than any words could. I sense that she wants to share her story, but is too afraid to speak. The atmosphere is heavy with unspoken grief and mystery. I wonder if she is a remnant of this cursed place or a guide for my lost soul.",
	  "Her gaze meets mine for a moment that feels infinite. There is a fleeting kindness in her eyes that comforts me amid the terror. The room is still, and time seems to pause around her. I feel as if she is trying to communicate something deeply personal and tragic. Her presence fills the space with both beauty and despair.",
	  "In that silent exchange, I feel a connection that goes beyond fear. The spectral lady appears to plead for remembrance, for acknowledgement of her forgotten life. Her form shimmers in the low light, a sorrowful echo of what once was. I stand transfixed, caught in the delicate balance between pity and dread. I know that her story is entwined with the fate of this forest.",
	  "As she slowly fades into the shadows, I am left with a deep, aching curiosity. Her presence leaves an indelible mark on my soul. I feel that learning her secret might be key to understanding my own plight. The ghostly lady disappears, leaving only the echo of her mournful eyes. I am determined to uncover the mystery behind her lonely existence."
	],
	"choice1": {
	  "choice": "Ask",
	  "response": [
		"[i]I whisper, 'Who are you?' in a trembling voice...[/i]"
	  ],
	  "outcome": "murmurRaven"
	},
	"choice2": {
	  "choice": "Weep",
	  "response": [
		"[i]Tears blur my vision as I stand silently before her...[/i]"
	  ],
	  "outcome": "murmurRaven"
	}
  },
  "murmurRaven": {
	"content": [
	  "A sudden harsh cry breaks the mournful quiet as a raven perches on a broken beam near the window. Its eyes glitter with wild, unsettling wisdom. The cry is sharp and echoes through the room like a warning. I watch the raven as it caws, its call filling the air with ominous significance. The sound sends a shiver down my spine, echoing the ghostly sorrow outside.",
	  "The raven’s presence feels both tangible and ethereal in this haunted space. Its feathers glisten under the dim light, contrasting with the decay around me. The creature’s call is a harsh, rhythmic reminder of the darkness that lies beyond. I cannot decide if it is a messenger or a harbinger of worse things to come. Its cry resonates deeply, stirring old fears and new questions.",
	  "I feel that the raven is not merely a bird but part of the forest’s living legend. Every desperate cry of the raven seems to carry a message from the ancient woods. The sound mingles with the silence in a strange, discordant harmony. I am left trembling, caught between fear and fascination by the creature. Its presence is a stark reminder of the world's inexplicable cruelty.",
	  "The raven seems to beckon me toward something beyond the window. I sense that it is urging me to seek more hidden truths within this forsaken place. Its cry fades slowly as if urging me to listen closely. I stand, heart heavy with dread, as the bird turns its head toward me once more. The moment is brief and charged with eerie portent.",
	  "The raven flutters off toward the doorway, disappearing into the darkness outside. Its call lingers in my ears like a sorrowful echo of fate. I know that following its path may lead me into deeper mysteries. The air around me thickens with a sense of inevitable destiny. With a hesitant heart, I choose to follow the trail it has set."
	],
	"choice1": {
	  "choice": "Follow",
	  "response": [
		"[i]I step toward the window and exit the cottage...[/i]"
	  ],
	  "outcome": "secretRoom"
	},
	"choice2": {
	  "choice": "Stay",
	  "response": [
		"[i]I stay inside, unwilling to leave this haunted refuge...[/i]"
	  ],
	  "outcome": "secretRoom"
	}
  },
  "secretRoom": {
	"content": [
	  "Outside the cottage, I discover a hidden room behind overgrown vines and old stones. The secret space is carved out of nature itself, dimly lit by a stray beam of moonlight. Inside, relics of a past life lie scattered among cobwebs. The walls are marked with strange symbols that speak of old rituals and forgotten curses. Every object here whispers a story of sorrow and mystery.",
	  "The room feels sacred and doomed at the same time. There is an eerie stillness that fills every corner. The scent of mold and ancient paper lingers in the air. I touch a rusted trinket left behind, feeling its history like a cold shiver on my skin. The room is a silent testament to the lives once trapped by this forest.",
	  "Candles, long melted to dust, line a broken shelf as if guarding the secrets within. Faded photographs and brittle letters lie scattered, their meanings lost to time. Each relic holds a fragment of memory and a trace of despair. I feel that discovering these clues might reveal the forest’s hidden truth. The silence here is heavy with the weight of lost souls.",
	  "The room’s atmosphere is solemn and charged with latent energy. I sense that every piece of debris has a purpose, a secret story waiting to be told. The markings on the wall hint at a ritual once performed in desperate hope. I stand in the center of the room, trying to absorb every detail. The air is thick with an unspoken promise of revelation.",
	  "With cautious curiosity, I decide to gather what I can from this hidden chamber. The relics seem to call out to me in a language of sorrow. I wonder how many have come here seeking answers and how many have been lost to the forest’s curse. The room’s quiet embraces me, urging me to unlock its secrets. I resolve to piece together this forgotten history."
	],
	"choice1": {
	  "choice": "Gather",
	  "response": [
		"[i]I collect a few delicate items that hint at the secrets of this place...[/i]"
	  ],
	  "outcome": "oldHermit"
	},
	"choice2": {
	  "choice": "Ignore",
	  "response": [
		"[i]I decide to leave the relics undisturbed and step back outside...[/i]"
	  ],
	  "outcome": "oldHermit"
	}
  },
  "oldHermit": {
	"content": [
	  "Beyond the secret room, I encounter an old hermit sitting by a small, smoldering fire beneath a canopy of dead leaves. His appearance is ragged, and his eyes, though weary, hold a glimmer of ancient wisdom. He speaks softly, his voice raspy like the creaks of old wood. The hermit seems to understand the forest’s secrets and the toll it takes on wandering souls. He regards me with a mix of pity and quiet resolve.",
	  "The old man introduces himself simply as Elias, a keeper of forgotten tales. His words are few but heavy with meaning. I sense that he has witnessed much sorrow and knows the hidden paths of these haunted woods. The fire’s glow dances across his lined face, revealing shadows of past regrets. I feel both comforted and unsettled by his presence.",
	  "Elias offers no immediate answers, only cryptic hints and silent warnings. He tells me that the forest is alive with memories and curses. His gaze suggests that he himself is bound to this place by ancient sorrow. I listen intently as his murmurs blend with the crackling of the fire. The night around us grows quieter, as if the forest itself listens.",
	  "In his presence, I feel the weight of many lost years and broken promises. He speaks of a narrow passage that might lead to a sliver of redemption. His voice is soft, almost pleading with me to heed his words. I sense that his guidance may be my only hope in this cursed labyrinth. The hermit’s eyes twinkle with both misfortune and hope.",
	  "Before I can ask further, Elias falls silent, urging me to decide my own path. His quiet resolve inspires me to act, even as the dark forest looms ominously around us. I take his parting words like a fragile treasure. With a heavy heart and a cautious spirit, I nod in gratitude. My journey now has another mysterious direction."
	],
	"choice1": {
	  "choice": "Ask",
	  "response": [
		"[i]I ask him, 'Show me the way.'...[/i]"
	  ],
	  "outcome": "unsettlingOffer"
	},
	"choice2": {
	  "choice": "Leave",
	  "response": [
		"[i]I thank him in silence and turn away to choose my own path...[/i]"
	  ],
	  "outcome": "unsettlingOffer"
	}
  },
  "unsettlingOffer": {
	"content": [
	  "Elias points toward a narrow, winding passage between towering ferns and gnarled trunks. The path is barely visible in the dim light, yet it pulsates with an eerie allure. He tells me in hushed tones that this route may lead to salvation—or deeper damnation. His eyes hold a haunted hope as he gestures slowly. I sense that accepting his offer is both a risk and a necessity.",
	  "The passage is cloaked in shadows, and its uncertainty both terrifies and beckons me. I feel as if every step on this path is woven with the fate of lost souls. Elias’s silent encouragement fills me with a trembling resolve. The forest seems to lean in as though urging me to take the risk. The choice is heavy: to trust in his direction or forge my own lonely way.",
	  "I know that this narrow route is my chance to escape the relentless grip of the dark woods. The hermit’s quiet assurance gives me a spark of hope. Yet, the fear of what lies ahead gnaws at my resolve. I stand at the brink, heart pounding in uncertain cadence. The decision feels like stepping off a precipice into the unknown.",
	  "In the cold night, every whispered warning and subtle hint becomes a part of my will. I sense that this path is marked by destiny as much as by despair. The murmur of the forest and the solemnity of Elias’s gaze merge into one undeniable directive. I feel that the answers I seek lie just beyond the veil of darkness. With a deep breath, I make my choice.",
	  "I nod silently, accepting the hermit’s guidance. The narrow passage awaits, dark and full of hidden terrors. My steps are slow and deliberate as I approach its shadowed mouth. The forest seems to hold its breath for my decision. I step forward into the unknown."
	],
	"choice1": {
	  "choice": "Enter",
	  "response": [
		"[i]I follow the narrow passage, stepping into darkness...[/i]"
	  ],
	  "outcome": "narrowPassage"
	},
	"choice2": {
	  "choice": "Turn",
	  "response": [
		"[i]I hesitate, then decide to turn back and choose another path...[/i]"
	  ],
	  "outcome": "narrowPassage"
	}
  },
  "narrowPassage": {
	"content": [
	  "I traverse the narrow passage, its walls nearly touching me in the claustrophobic dark. Every sound – my breathing, a distant drip of water – reverberates like a drum in this confined space. The path twists unpredictably, a labyrinth of shadow and uncertain light. I can feel the cold, damp stone pressed against my skin as I move. My mind buzzes with equal parts determination and dread.",
	  "The air here is heavy, saturated with the history of countless forgotten travelers. I feel as though each step carries a legacy of pain and hope. The darkness seems almost tangible, wrapping around me with icy fingers. I struggle to discern any direction, trusting only in my gut. Every turn of the passage feels like a leap into another unknown world.",
	  "A subtle glow appears further ahead, like the distant promise of salvation. The faint light pulses softly, casting eerie silhouettes on the jagged walls. I follow this fragile beacon with trepidation, heart pounding in anticipation. The passage narrows further and feels as though it might close in on me at any moment. I am both terrified and inexplicably drawn onward.",
	  "The confined space amplifies every sound, every whisper of the stone against stone. I feel a sense of urgency and a growing determination to escape this crushing darkness. My skin prickles as I near the source of the light, expecting either danger or deliverance. The passage, though oppressive, is my only way out. I cling to the hope that light will break through this eternal night.",
	  "At last, the passage opens into a vast cave where the gloom meets a cold, natural light. The contrast overwhelms me for a moment, and I stop to catch my breath. The cavern is silent except for the echo of distant drips and my own timid steps. I know I must continue, though I remain unsure of what I might find. With a trembling heart, I step fully into the cavern."
	],
	"choice1": {
	  "choice": "Enter",
	  "response": [
		"[i]I step into the vast darkness of the cave...[/i]"
	  ],
	  "outcome": "echoingCave"
	},
	"choice2": {
	  "choice": "Hesitate",
	  "response": [
		"[i]I pause at the threshold, gathering my faltering courage...[/i]"
	  ],
	  "outcome": "echoingCave"
	}
  },
  "echoingCave": {
	"content": [
	  "Inside the cave, every footstep echoes like a distant heartbeat. The cavern is vast and silent, filled with shadows that shift with every flicker of light. Strange symbols are etched along the walls, their meanings as murky as the depths of the cave. The cool, damp air wraps around me, carrying whispers of ancient curses. I feel as if the very stone is alive with hidden memory.",
	  "The darkness here is profound, and even my own breath seems loud in its embrace. I move slowly, each step a cautious journey into the unknown. The etched symbols glimmer faintly in the scattered light, hinting at unspeakable secrets. I wonder if these markings are a warning or a guide. The cavern holds a weighty silence that presses in from all sides.",
	  "Every sound is magnified in this vast emptiness, from the drip of water to the rustle of unseen creatures. I sense that I am not alone in this place, that other souls may have wandered here before me. The symbols seem to tell a story of loss and forgotten hope. My heart races as I take in the oppressive atmosphere. I know that this cavern is part of the forest’s dark legacy.",
	  "A cold shiver runs along my spine as I pass by a particularly intricate carving. I study it briefly, trying to decipher its hidden language. It speaks of curses and ancient rituals performed under the unyielding gaze of the night. The mystery of the cave deepens with every step I take. I feel that I am nearing a revelation that has been centuries in the making.",
	  "Finally, the cave begins to open up into a wider chamber. The space before me is enormous and filled with a soft, eerie glow. I stand at the threshold, feeling both relieved and afraid. The sound of my own heartbeat is deafening in the vast quiet. I know that what lies ahead may change everything."
	],
	"choice1": {
	  "choice": "Advance",
	  "response": [
		"[i]I step further into the glowing chamber, heart full of resolve...[/i]"
	  ],
	  "outcome": "ominousSymbols"
	},
	"choice2": {
	  "choice": "Turn",
	  "response": [
		"[i]I decide to turn back, uncertain of what this widening space holds...[/i]"
	  ],
	  "outcome": "ominousSymbols"
	}
  },
  "ominousSymbols": {
	"content": [
	  "In the vast chamber, the walls are covered with ominous symbols that seem to pulse with hidden power. The markings are ancient, drawn in a language that speaks of curses and doomed fate. Their lines twist and intertwine like the threads of a terrible tapestry. I trace one symbol with a trembling finger and feel a rush of icy dread. Each carving is a silent testament to lives swallowed by darkness.",
	  "The light in the chamber flickers as though it were alive, casting shifting shadows over the cryptic drawings. The symbols hint at rituals long forgotten and sacrifices made beneath this haunted sky. I feel their weight pressing into my mind, urging me to remember what has been lost. The chamber hums with a low, almost imperceptible vibration, as if the past is stirring awake. I wonder if these signs foretell my own fate.",
	  "Every symbol is a story of agony, etched onto stone by hands gripped by despair. The grim patterns evoke visions of haunted ceremonies and lonely souls wandering in eternal night. I cannot shake the feeling that the answers I seek lie hidden within these fearful designs. The symbols seem to guard a secret that could unravel the mysteries of this cursed forest. Their presence is both a warning and an invitation.",
	  "I stand in silent awe as I absorb the haunting message of the carvings. They speak of a time when darkness reigned supreme, and hope was but a memory. The air is heavy with the promise of revelation and ruin. I feel that in deciphering these symbols, I might find the key to my own future. My pulse races as I commit each line to memory.",
	  "With a final, lingering look, I turn away from the wall. The symbols haunt my thoughts with their dark, cryptic meaning. I know that understanding their tale is essential, yet I fear the truth they hold. The room’s oppressive energy stays with me as I step forward. My journey is now intertwined with the mystery of these ancient marks."
	],
	"choice1": {
	  "choice": "Study",
	  "response": [
		"[i]I linger at the wall, determined to decipher its secrets...[/i]"
	  ],
	  "outcome": "fleetingHope"
	},
	"choice2": {
	  "choice": "Walk",
	  "response": [
		"[i]I decide not to dwell here and continue onward...[/i]"
	  ],
	  "outcome": "fleetingHope"
	}
  },
  "fleetingHope": {
	"content": [
	  "In a quiet corner of the chamber, I find a small, gentle stream of light that cuts through the darkness. Its soft glow seems to promise a way out of the oppressive night. The light dances on droplets of water, creating ripples of hope that warm my cold heart. For a moment, I forget the terror of the dark and am filled with a fragile optimism. It is as if the forest itself offers me a brief, tender reprieve.",
	  "The stream of light is delicate but persistent, carving a path across the stone floor. I follow its faint trail, my steps measured and cautious. Each glimmer reminds me that there is still beauty amidst the decay. The peaceful sound of trickling water steadies my racing heart. In this small beacon, I find a renewal of courage to face the ominous night.",
	  "I kneel by the light, letting its glow seep into my weary soul. The gentle warmth is a stark contrast to the cold dread of the cavern. Every drop of light seems to carry a silent promise of dawn. I allow myself a moment of respite, absorbing the fragile hope that surrounds me. The quiet presence of the light gives me the strength to move forward.",
	  "As I rise, the light shifts, leading me toward a hidden passage in the far wall of the chamber. The path it carves out is narrow and inviting, a passage that might take me closer to freedom. I feel both relief and apprehension as I step toward the glow. The promise of escape mingles with the fear of the unknown. Every heartbeat is a step toward a future yet to be seen.",
	  "With renewed determination, I follow the luminous trail. It is a small promise in the midst of overwhelming darkness. I am filled with the resolve to face whatever lies ahead. The stream of hope carries me onward, whispering that even in the deepest despair, light can be found. I move forward, every step a defiant act against the night."
	],
	"choice1": {
	  "choice": "Enter",
	  "response": [
		"[i]I follow the light into the hidden passage...[/i]"
	  ],
	  "outcome": "finalChamber"
	},
	"choice2": {
	  "choice": "Leave",
	  "response": [
		"[i]I leave the chamber, carrying the light in my heart...[/i]"
	  ],
	  "outcome": "finalChamber"
	}
  },
  "finalChamber": {
	"content": [
	  "I emerge into a vast final chamber that feels both ancient and alive with malevolence. The space is engulfed in a dim glow that seems to originate from nowhere and everywhere at once. Every sound here is amplified—the dripping of water, the distant rustle of leaves—and it all creates a symphony of dread. Shadows writhe in the corners as if they are desperate to break free. This chamber feels like the heart of the forest’s curse.",
	  "The air is thick with anticipation and a tangible sense of destiny. I feel as if every dark secret of the forest converges in this moment. My heart races as I step further, every movement echoing in the cavernous space. The walls pulse with an eerie, unnatural rhythm, intensifying my terror. I sense that I am close to a truth long buried in sorrow.",
	  "In the center of the chamber stands an altar, adorned with relics and faded symbols. The altar is both a monument and a warning, its presence commanding and ominous. It exudes a dark energy that makes my skin crawl with a mixture of fear and fascination. I feel as though the altar is the key to understanding this endless nightmare. The silence around it is heavy with unspoken judgment.",
	  "Every inch of this room tells a story of sacrifice and despair. I struggle to maintain my composure as my mind races with foreboding thoughts. The chamber seems to pulse with the collective pain of countless lost souls. I know that this is the final challenge I must face before the night can end. The oppressive darkness feels almost sentient, questioning my very existence.",
	  "In that critical moment, I feel a deep, overwhelming terror—and a spark of unyielding resolve. I gather every ounce of courage to confront the source of this overwhelming curse. I can no longer run from the dark; I must face it head on. The chamber awaits my decision, heavy with the promise of either redemption or eternal despair. I take a trembling step forward, ready for what may come."
	],
	"choice1": {
	  "choice": "Face",
	  "response": [
		"[i]I brace myself and prepare to confront the curse...[/i]"
	  ],
	  "outcome": "finalStruggle"
	},
	"choice2": {
	  "choice": "Yield",
	  "response": [
		"[i]I feel the crushing weight of despair and almost turn away...[/i]"
	  ],
	  "outcome": "finalStruggle"
	}
  },
  "finalStruggle": {
	"content": [
	  "In the heart of the final chamber, I come face to face with a pulsating mass of darkness—a living embodiment of the forest’s curse. Its formless shape shifts and churns, swallowing every glimmer of light. I stand paralyzed, feeling my own fate entwined with this malevolent force. The air is thick with despair, and every breath is a battle against the tide of terror. I know that my next moment will decide whether I am consumed or reborn.",
	  "The entity seems to whisper secrets of ancient pain and doomed destinies. I can feel its cold embrace creeping along my skin, trying to drain the life from me. Every muscle in my body trembles with the effort to resist its pull. I gather a sliver of strength from deep inside, aware that this confrontation might be my only chance at salvation. The darkness challenges me, daring me to defy its eternal grip.",
	  "I cry out, my voice echoing off the stone walls, and the sound meets the relentless void. In that desperate moment, hope and terror intertwine, fueling an unyielding will to survive. I feel the weight of every lost soul and every whispered warning as I push back. The struggle is both physical and spiritual, a battle for my very essence. I know that the outcome is uncertain, yet I refuse to surrender.",
	  "The chamber vibrates with the intensity of our conflict, and every heartbeat is a drum of defiance. My eyes sting with tears of both fear and determination as I fight against the consuming void. The monstrous presence roars silently, as if mocking my fragile strength. I stand my ground, every fiber of my being aflame with the courage to defy the darkness. This is my moment—my final stand against the curse.",
	  "And then, in a burst of raw emotion and trembling valor, I surge forward. Whether by hope or by desperation, I embrace the unknown with an unyielding cry. The struggle rages around me until all I have is the echo of my own beating heart. In that final clash of light against darkness, I grasp for a future beyond the cursed night. My fate, entwined with the forest’s sorrow, hangs in the balance."
	],
	"choice1": {
	  "choice": "Fight",
	  "response": [
		"[i]I fight with every shred of courage, ignoring the dread...[/i]"
	  ],
	  "outcome": "runEscape"
	},
	"choice2": {
	  "choice": "Flee",
	  "response": [
		"[i]Overwhelmed, I turn and run, hoping to escape the crushing darkness...[/i]"
	  ],
	  "outcome": "runEscape"
	}
  },
  "runEscape": {
	"content": [
	  "I dash from the final chamber into the twisting corridors of the cave, my heart pounding in terror. Every step is a frantic rush away from the living curse that nearly claimed me. The sounds of pursuit echo behind me, but I do not dare look back. My breath comes in sharp, desperate gasps as I run through the dark labyrinth. The only thought in my mind is escape.",
	  "The winding passages twist and turn, leading me deeper into a maze of cold stone and uncertainty. I stumble over unseen roots and rocky ground, each step a test of raw survival. Fear fuels my every movement as I try to outrun the oppressive presence that haunts my thoughts. I cling to the hope that the exit is near, even if I cannot see it. The world around me blurs into a frenzied rush of shadows and echoes.",
	  "My legs burn with exhaustion, yet I push on with a mix of terror and fierce determination. Every crashing heartbeat is a reminder of what I must leave behind. I dodge and weave through narrow passages, my mind focused solely on the possibility of freedom. The dark maze of the cave feels endless, yet I trust that I will find a way out. The fear of being caught overwhelms every rational thought.",
	  "Finally, I see a sliver of light piercing the darkness—a promise of dawn or escape. With renewed adrenaline, I surge toward the glow, ignoring the relentless fear chasing me. Each step brings me closer to the unknown possibility of safety. My lungs burn, but I cannot afford to stop. I feel that my survival depends on reaching that light.",
	  "Bursting from the shadow of the cave, I find myself on a hidden trail that leads outside. The fresh, cold air of early morning brushes against my face as the darkness behind me recedes. I slow my frantic pace, feeling tears of relief and exhaustion. The relentless curse of the night seems to fade with each step into the new day. I know that I have survived this long, and hope now guides my weary heart."
	],
	"choice1": {
	  "choice": "Follow",
	  "response": [
		"[i]I follow the trail as the pale light of dawn grows stronger...[/i]"
	  ],
	  "outcome": "finalApproach"
	},
	"choice2": {
	  "choice": "Run",
	  "response": [
		"[i]I dash along the path, every step a desperate bid for freedom...[/i]"
	  ],
	  "outcome": "finalApproach"
	}
  },
 "finalApproach": {
	"content": [
	  "I step from the hidden trail into a vast, open glade where the pale morning light now battles the lingering night. Every ray seems to pierce the gloom as I sense a heavy, foreboding presence ahead. The grass sways as though whispering warnings of what is to come. My heart pounds in a rhythm of both hope and dread. I know deep down that this place marks the threshold to my final trial.",
	  "The glade is bordered by ancient stone pillars shrouded in ivy, relics of a long-forgotten era. Their silent vigil gives the space a sanctified, yet ominous air. I press forward, the light guiding me like a gentle promise. The wind carries murmurs of old secrets that make my skin crawl with anticipation. I feel that destiny waits just beyond the next bend.",
	  "Every step seems to echo with the weight of a thousand unresolved sorrows. The earth underfoot is soft, as if trying to cradle my weary feet. I gather strength from the rising sun, determined to face whatever emerges. A deep silence falls over the glade, broken only by the distant sound of shifting stone. The end of my long, harrowing journey appears close.",
	  "I can now see a towering, shifting silhouette on the far side of the clearing—a form massive and indistinct. Its outline darkens the horizon and sends a chill down my spine. The air crackles with a raw energy as if the very atmosphere anticipates a confrontation. I steady my trembling hands and force my fear into resolve. This is the moment the prophecy warned of.",
	  "My pulse races as I approach the dark shape, each step filled with both trepidation and unwavering determination. The glade, once filled with gentle dawn, now braces for a storm of fate. I am at the precipice of a destiny that may either shatter the curse or bind me to it forever. The path behind me fades into memory as I face the looming threat. I cannot turn back now."
	],
	"choice1": {
	  "choice": "Advance",
	  "response": [
		"[i]I push onward, resolute, toward the ominous figure...[/i]"
	  ],
	  "outcome": "finalMonsterEncounter"
	},
	"choice2": {
	  "choice": "Cower",
	  "response": [
		"[i]I hesitate, my heart screaming to run, but I cannot break away from fate...[/i]"
	  ],
	  "outcome": "finalMonsterEncounter"
	}
  },
  "finalMonsterEncounter": {
	"content": [
	  "Before me materializes the final horror—a colossal, shifting beast known only as The Harbinger. Its form is a writhing mass of shadow and malignant energy that seems to absorb all light. The creature’s eyes burn like coals in the darkness, and its roar reverberates with the sorrow of the cursed forest. I feel a primal terror grip my soul as it steps forward with deliberate menace. Every instinct within me screams that this monster embodies the ancient curse.",
	  "The Harbinger moves with an otherworldly grace that belies its monstrous form. Dark tendrils extend from its mass, reaching out as if to claim my very essence. Its presence turns the air bitter and cold, and I struggle to catch my breath. I see flashes of memories and prophecies in its eyes—glimpses of a fate sealed by betrayal and blood. The ground trembles under its immense power.",
	  "I stand transfixed, caught between the urge to fight and the terror of annihilation. The silence of the glade is now replaced by the sound of my frantic heartbeat and the creature’s low, rumbling chant. Its form shifts constantly, never settling, as though it is a living embodiment of all the forest’s anguish. I feel that confronting it is the only way to break the cycle of the curse. The challenge before me is as final as it is impossible.",
	  "As the beast roars, it offers me three terrible choices: to fight it with every ounce of my newfound strength, to seek a desperate bargain with the dark entity, or to try to flee and preserve what remains of my fragile life. Each option pulses with potential salvation or damnation. My heart trembles with the gravity of the decision. The Harbinger’s voice, barely more than a distortion of sound, echoes within me like a dark command. The moment of truth has arrived.",
	  "I find myself at the crossroads of destiny, and the forest holds its breath as I make my choice. The outcome of this encounter will decide not only my fate but also the fate of the entire cursed land. Every fiber of my being is charged with the weight of the final moment. I know that whatever path I choose, it will irreversibly change all that I have known. The dark beast waits, its presence terrifying yet undeniable."
	],
	"choice1": {
	  "choice": "Fight",
	  "response": [
		"[i]I raise my trembling fists and prepare to stand my ground against The Harbinger...[/i]"
	  ],
	  "outcome": "monsterBattle"
	},
	"choice2": {
	  "choice": "Bargain",
	  "response": [
		"[i]I try to speak, offering my life in exchange for a reprieve from the curse...[/i]"
	  ],
	  "outcome": "monsterBattleBargain"
	},
	"choice3": {
	  "choice": "Flee",
	  "response": [
		"[i]I turn to run, the instinct to escape overwhelming my resolve...[/i]"
	  ],
	  "outcome": "monsterBattleFlee"
	}
  },
  "monsterBattle": {
	"content": [
	  "I charge at The Harbinger with every shred of courage I can muster. The clash between my trembling defiance and the beast’s crushing power feels like the unraveling of fate itself. The monster’s dark form lashes out, and I dodge and weave through tendrils that threaten to engulf me. With each strike, I force back against the pulsing void of its curse. The battle is fierce, every moment a desperate push against overwhelming darkness.",
	  "The air crackles with the energy of clashing wills, and the ground trembles beneath our struggle. I cry out with determination, summoning a fire I didn’t know I possessed. The beast roars in defiance, and I feel its cold malice attempt to quench the spark of hope within me. Slowly, through pain and sacrifice, I manage to drive back the monstrous force. The echo of my defiant cry mingles with the fading darkness.",
	  "In a moment that seems to last an eternity, I see a surge of light erupt from within me. That light battles the beast’s shadow, and for a brief moment, it seems as if hope might win. I press the attack, fueled by every memory of loneliness and pain that brought me here. The Harbinger recoils, its form flickering as if destabilized by my resolve. Victory is within reach, yet the outcome remains uncertain.",
	  "As I push forward, the beast stumbles and falters, its dark energies wavering. I draw upon all the courage and strength born from the cursed night, my heart pounding like a drum of defiance. With one final, resounding cry, I deliver a decisive blow, and The Harbinger shudders violently. Its form begins to crumble, the monstrous shadow dissipating into scattered darkness. The glade fills with a quiet, reverent hush as the curse trembles on the brink of breaking.",
	  "I collapse to my knees, exhausted and awash with both relief and sorrow. I realize that in defeating this final monster, I may have broken the curse—or unleashed yet another darkness. The weight of my choices presses upon me as I await the final reckoning of fate. The forest, now silent, seems to offer a fragile promise of peace. In that moment, everything hangs by a thread of uncertain light."
	],
	"choice1": {
	  "choice": "Victory",
	  "response": [
		"[i]I rise with a trembling smile as the cursed shadow fades...[/i]"
	  ],
	  "outcome": "endingRedemption"
	},
	"choice2": {
	  "choice": "Sacrifice",
	  "response": [
		"[i]I lower my head, ready to give my life to seal the curse once and for all...[/i]"
	  ],
	  "outcome": "endingSacrifice"
	}
  },
  "monsterBattleBargain": {
	"content": [
	  "I fall to my knees and plead with The Harbinger, offering my life in exchange for sparing the forest. My voice cracks under the weight of the desperate bargain. The monster’s eyes burn with cruel amusement as it listens to my trembling words. For a moment, a terrible silence falls, heavy with expectation and dark possibility. I sense that the beast is toying with me, weighing the cost of my soul.",
	  "The Harbinger speaks in a voice like thunder yet soft with malice, saying that sacrifice is the only price—and it might not be mine to choose. My heart sinks as I realize that bargaining with ancient evil rarely ends well. The dark entity offers a single condition: reveal a secret buried in my own blood in exchange for a temporary reprieve. I tremble at the thought of exposing a long-hidden truth. The forest seems to whisper warningly in the distance.",
	  "I must decide quickly—do I reveal the secret and risk further corruption, or do I refuse and face the full wrath of the curse? The air around me vibrates with the tension of a fate yet to be sealed. My mind races with memories of pain and love intertwined in my past. Every fiber of my being pleads for mercy, yet I know that darkness rarely shows compassion. The bargain hangs in the balance as I struggle to speak my truth.",
	  "In that fateful moment, I murmur a secret from deep within—a truth of love, loss, and forbidden destiny. The Harbinger’s form shudders as if recognizing the weight of my confession. The entity’s hold weakens slightly, and for a moment, hope flares within me. But I feel the price of this bargain is heavy and uncertain. I must now live with the consequences of baring my soul to such ancient horror.",
	  "The cavern falls silent as the exchange takes root, and I await the dark verdict of my fate. Every heartbeat is a reminder that even bargains with monsters can bring ruin. I do not know if this choice will free me or chain me forever to the curse. The atmosphere is thick with foreboding and the echoes of lost promises. My destiny now hinges on the remnant power of that secret."
	],
	"choice1": {
	  "choice": "Accept",
	  "response": [
		"[i]I brace myself for whatever comes next, my soul laid bare...[/i]"
	  ],
	  "outcome": "endingCorruption"
	},
	"choice2": {
	  "choice": "Revoke",
	  "response": [
		"[i]I attempt to retract my confession, but the dark bargain has already taken its toll...[/i]"
	  ],
	  "outcome": "endingDespair"
	}
  },
  "monsterBattleFlee": {
	"content": [
	  "Overwhelmed by the terror of The Harbinger, I turn and run, my legs propelling me through the chaotic corridors of the cave. The beast’s furious roars echo behind me, a reminder of the curse that nearly claimed me. I race through twisting passages, every second filled with the relentless pounding of my heart. The cavern becomes a blur of shadows and desperate movement as I try to outrun the crushing darkness. My mind is a frantic jumble, torn between the instinct to escape and the hope for survival.",
	  "The sounds of pursuit grow louder, mingling with my ragged breaths as I dash through the labyrinth. Every turn is a battle against a fate that seems to follow me relentlessly. I push my body to its limits, fueled by sheer terror and the desire to live. The cold stone of the cave slaps my back, and I stumble, struggling to find a path to freedom. The fear of being caught overwhelms my senses.",
	  "Finally, I burst through a narrow opening into the early light of dawn. The fresh air slaps my face, and I collapse onto a hidden trail that leads away from the darkness. I do not dare look back as the sounds of the monstrous pursuit fade into the distance. My mind reels with adrenaline and the bitter taste of survival. Though shaken to my core, I have escaped the immediate threat, at least—for now.",
	  "As I run along the sunlit path, the promise of a new day bolsters my resolve. Yet, I know that the dark forces I encountered may never truly let me go. The memory of The Harbinger’s ferocious presence clings to me like a curse. I wonder if escape is merely a temporary reprieve from an eternal nightmare. The road ahead is uncertain and haunted by lingering dread.",
	  "Every step away from the cave is both a blessing and a reminder of the terror I narrowly escaped. I can feel my life returning slowly, even as the shadows of the night whisper of what might still come for me. The dawn, though full of promise, does not fully erase the scars of the darkness. I run on, heart pounding in anticipation of a future that may still hold danger. Survival, it seems, comes at a heavy and painful cost."
	],
	"choice1": {
	  "choice": "Hide",
	  "response": [
		"[i]I seek refuge on a secluded path, hoping to vanish from my pursuers...[/i]"
	  ],
	  "outcome": "endingEscape"
	},
	"choice2": {
	  "choice": "Push",
	  "response": [
		"[i]I force myself to run faster, leaving fear in my wake...[/i]"
	  ],
	  "outcome": "endingEscape"
	}
  },
  "endingRedemption": {
	"content": [
	  "In the final moments of battle, the light within me overcomes The Harbinger’s darkness. I stand triumphant, the cursed entity crumbling into dust that drifts away like forgotten sorrows. The oppressive weight of the forest’s curse begins to lift, and for the first time, the air feels light with the promise of renewal. In that moment of victory, I feel a surge of hope that even ancient curses can be broken. The forest, too, seems to whisper a soft thank you as nature heals.",
	  "The relics—the medallion, the locket, and every painful memory—now pulse with a new, benevolent energy. I know that my defiance has altered the course of fate, freeing not only my soul but the spirits trapped in eternal night. The dawn now appears as a beacon of redemption, washing the dark legacy with gentle light. I am left with both scars and a profound sense of accomplishment that even destiny can be defied. My future, though uncertain, shines with the possibility of true healing.",
	  "Tears of relief mingle with smiles as I look to the rising sun. The cursed glade transforms into a place of quiet rebirth. Every broken promise and whispered sorrow begins to mend under the warmth of a new day. I know that I must continue my journey, but now I carry the light of redemption within me. The forest, once a realm of terror, now holds a promise of a better tomorrow.",
	  "I take a deep breath, feeling the cool morning air fill my lungs with hope. Each step I take is a testament to the victory over ancient evil. The legacy of betrayal that once suffocated the land is now slowly unravelling. I walk forward with the strength of a survivor, knowing that I have changed the course of cursed fate. The road ahead may still be hard, but I have carved a path to redemption.",
	  "In this ending, the curse is broken—for now—and I stand as a beacon of hope amid the wounded forest. The promise of a reborn land shines bright as the day unfolds. My journey continues with a newfound purpose and a heart that still beats strong with life."
	],
	"choice1": {
	  "choice": "Continue",
	  "response": [
		"[i]I step forward into a future of redemption...[/i]",
		"[b]PERFECT ENDING[/b]",
		"[i]To be continued...[/i]"
	  ],
	  "outcome": "EndRedemption"
	}
  },
  "endingSacrifice": {
	"content": [
	  "In a final act of defiance against the ancient curse, I pour every ounce of my very soul into a desperate sacrifice. I lower myself before The Harbinger, offering my life force as the ultimate price for breaking the cycle. The monster’s dark form trembles as it absorbs the raw, desperate energy emanating from me. In that agonizing moment, I feel the curse begin to unravel, its hold weakening under the weight of my sacrifice. Tears blur my vision as the darkness slowly recedes, replaced by a bittersweet peace.",
	  "The forest around me shudders with the release of centuries of sorrow. Although I know my life ebbs away, there is a profound solace in knowing that my sacrifice has set the spirits free. The relics glow with a gentle light, marking the end of an era of cursed torment. I lie back among the ancient stones, my vision fading as the first gentle light of dawn warms the land. My sacrifice becomes a final, silent prayer for redemption.",
	  "As my consciousness slips away, I sense that the curse is finally broken. The forest, once a realm of despair, begins to heal under the touch of a new day. I smile, a quiet farewell etched on my fading lips, knowing that my suffering has paved the way for hope. My story, though ending in sacrifice, carries the promise of renewal for those who remain. In these final moments, I find a serene kind of victory in the price I have paid.",
	  "My existence becomes a whisper in the eternal cycle of life, a sacrifice remembered by the land. The echoes of my heart become one with the newfound light that dispels the darkness. The forest will long remember the day when a fragile soul broke the chains of ancient curse with her final breath. I fade away, leaving behind a legacy of ultimate redemption. This ending is as sorrowful as it is noble—a bittersweet farewell to darkness.",
	  "In the silence that follows, hope blooms even from loss. Though I am no longer among the living, the land begins its slow, healing transformation. The curse has been lifted at a terrible cost, and the promise of a new beginning is now seeded in the hearts of all who remember. My sacrifice endures as a solemn vow against darkness. The new dawn is a tribute to the love and courage that defied all odds."
	],
	"choice1": {
	  "choice": "Remember",
	  "response": [
		"[i]My sacrifice echoes into the future...[/i]",
		"[b]GOOD ENDING[/b]",
		"[i]To be continued...[/i]"
	  ],
	  "outcome": "EndSacrifice"
	}
  },
  "endingEscape": {
	"content": [
	  "I choose to flee from The Harbinger, discarding the possibility of a final confrontation. My legs carry me with frantic urgency as I leave the cursed glade behind. I run until the monstrous roars fade into a distant, haunting echo. Though I escape the immediate terror, I know the curse remains—a shadow at the edge of my survival. The taste of freedom is bittersweet, laden with the knowledge that I have not vanquished the darkness.",
	  "The forest becomes a blur of muted colors as I dash along a hidden path in the breaking dawn. My heart races with both relief and lingering dread. I am free, but the curse continues to coil in the depths of the ancient woods. Every step is a reminder of the horrors I left behind and the uncertainty of what lies ahead. The uncertain future is mine alone now, haunted by the specter of that final monstrous presence.",
	  "A fragile hope flickers within me amid my desperate escape, but it is tempered by the weight of unanswered questions. I vow silently that I will one day return to face the curse if the nightmare persists. As the sun rises, I disappear into the unknown, leaving the malevolent force to its dark domain. My life continues on a winding road marked by survival and persistent fear. This ending is one of escape—with the curse lingering, a constant, silent threat.",
	  "I run onward, not as a conqueror but as a survivor haunted by what I have witnessed. The new day offers a temporary reprieve, but the shadows of the night remain. I know that the forest will one day call me back, for its secrets are not so easily abandoned. The burden of escape is heavy, yet it is the only choice I can live with. My future is uncertain, but for now, I am free.",
	  "In these final moments, I blend into the light of dawn, forever marked by the horrors of the past. The memory of The Harbinger and the curse lingers in my soul as I flee. Though I escape its immediate grasp, I cannot escape the dark legacy now etched into my being. My path remains shrouded, and the curse endures as a silent specter over my fate. This ending is a bittersweet flight into an uncertain tomorrow."
	],
	"choice1": {
	  "choice": "Continue",
	  "response": [
		"[i]I walk onward into an uncertain future, forever haunted but free...[/i]",
		"[b]TRUE ENDING![/b]",
		"[i]To be continued...[/i]"
	  ],
	  "outcome": "EndEscape"
	}
  },
  "endingCorruption": {
	"content": [
	  "The dark bargain I made with The Harbinger twists me from within. I feel a seething corruption take hold of my very essence as my confession merges with the ancient curse. The creature’s power latches onto my soul and warps my features, turning them into those of a lost, shadowed heir. I stagger, barely recognizable in the cold mirror of my own transformation. The forest around me seems to smirk with malevolent satisfaction as the curse claims me.",
	  "Every step becomes a struggle as I battle the bitter venom of betrayal that now courses through my veins. The medallion and locket burn with a cruel light—symbols of the fate I tried so hard to avoid. I feel the final remnants of my humanity slip away, replaced by a dark, insidious hunger. There is no victory here; only a descent into eternal, consuming darkness. I am transformed into a vessel of the curse, my future lost to the very evil I once fought against.",
	  "My mind is a fragmented haze of despair as I accept the irreversible change. The forest no longer offers salvation—it embraces my corruption as one of its own. I am now both the monster and the victim, ensnared in a cycle of endless sorrow. In the silence of that final, bleak moment, I feel the cold touch of destiny. This ending is a grim testament to the power of ancient curses.",
	  "The world around me fades as I am consumed by darkness, and my last thoughts are of remorse and inevitable fate. I vanish into the night as a husk, a cautionary echo to all who dare challenge the curse. The forest continues its eternal lament, with my lost soul among its many tormented whispers. There is no redemption—only a tragic reminder of what happens when hope is overtaken by despair. I become one with the curse, destined to roam the shadows forever.",
	  "In the end, the promise of a new day is a distant memory, smothered by the dark legacy now sealed within me. I no longer exist as I once did, my transformation a stark warning etched into the annals of the cursed land. My fate, twisted and tragic, is now one with the darkness that birthed it. This is the price of forbidden bargains—a soul irretrievably lost."
	],
	"choice1": {
	  "choice": "Fade",
	  "response": [
		"[i]I surrender completely to the consuming darkness...[/i]",
		"[b]BAD ENDING[/b]",
		"[i]To be continued...[/i]"
	  ],
	  "outcome": "EndCorrupt"
	}
  },
  "endingDespair": {
	"content": [
	  "I try to revoke the dark bargain, but it is too late—the curse has already seeped deep into my bones. A profound despair overwhelms me as I realize that I cannot escape the fate I have helped seal. The Harbinger’s taunting laughter echoes in my mind as I collapse, broken by the weight of my own confession. The forest feels colder, and every whisper of wind seems to mock my fragile hope. My attempt to undo the bargain has only deepened my agony.",
	  "In that crushing moment, I feel the darkness take over, leaving me numb and defeated. The relics in my possession pulse with a cruel light, symbols of a life forever marred by betrayal. I see no path to redemption, only an endless night of remorse and pain. The forest, ancient and indifferent, swallows my cries as I succumb to despair. I am left clinging to the remnants of a hope that was never meant to be.",
	  "My thoughts become a murmur of regret as I lie in cold silence, aware that my will has been shattered. Every heartbeat is a reminder of the irreversible mistake I made. I cannot fight the torrent of sorrow that carries me down into the depths of loneliness. The shadows around me blend with my own despair, becoming one in an eternal lament. This ending is a surrender to the cruelty of fate and the finality of loss.",
	  "I feel my strength diminish with each passing moment, as if the very essence of my soul is being drained away. The cursed bargain binds me to an existence of unending sorrow, a punishment wrought by my own hands. In the quiet of that final, desolate moment, I accept that I have lost the battle against darkness. The silence becomes absolute, and the faint light of hope is extinguished forever. I dissolve into despair, a forgotten whisper in the endless night.",
	  "My legacy is one of broken promises and unhealed wounds, a testament to the high cost of defiance. The cursed forest holds its secrets tightly, and I become yet another lost soul, doomed to wander in eternal sorrow. There is no victory here—only the bitter truth that sometimes, even the strongest hearts surrender."
	],
	"choice1": {
	  "choice": "Accept",
	  "response": [
		"[i]I close my eyes and let the despair consume me completely...[/i]",
		"[b]WORST ENDING[/b]",
		"[i]To be continued...[/i]"
	  ],
	  "outcome": "EndDespair"
	}
  }
}



# end
}
