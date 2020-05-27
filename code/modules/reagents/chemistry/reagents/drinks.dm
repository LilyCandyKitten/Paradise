/datum/reagent/consumable/drink/orangejuice
	name = "Orange juice"
	id = "orangejuice"
	description = "Both delicious AND rich in Vitamin C, what more do you need?"
	color = "#E78108" // rgb: 231, 129, 8
	drink_icon = "glass_orange"
	drink_name = "Glass of Orange juice"
	drink_desc = "Vitamins! Yay!"
	taste_description = "orange juice"

/datum/reagent/consumable/drink/orangejuice/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(30))
		update_flags |= M.adjustOxyLoss(-1*REAGENTS_EFFECT_MULTIPLIER, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/tomatojuice
	name = "Tomato Juice"
	id = "tomatojuice"
	description = "Tomatoes made into juice. What a waste of big, juicy tomatoes, huh?"
	color = "#731008" // rgb: 115, 16, 8
	drink_icon = "glass_red"
	drink_name = "Glass of Tomato juice"
	drink_desc = "Are you sure this is tomato juice?"
	taste_description = "tomato juice"

/datum/reagent/consumable/drink/pineapplejuice
	name = "Pineapple Juice"
	id = "pineapplejuice"
	description = "Pineapples juiced into a liquid. Sweet and sugary."
	color = "#e5b437"
	drink_icon = "glass_orange"
	drink_name = "Glass of pineapple juice"
	drink_desc = "A bright drink, sweet and sugary."
	taste_description = "pineapple juice"

/datum/reagent/consumable/drink/tomatojuice/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/limejuice
	name = "Lime Juice"
	id = "limejuice"
	description = "The sweet-sour juice of limes."
	color = "#365E30" // rgb: 54, 94, 48
	drink_icon = "glass_green"
	drink_name = "Glass of Lime juice"
	drink_desc = "A glass of sweet-sour lime juice."
	taste_description = "lime juice"

/datum/reagent/consumable/drink/limejuice/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustToxLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/carrotjuice
	name = "Carrot juice"
	id = "carrotjuice"
	description = "It is just like a carrot but without crunching."
	color = "#973800" // rgb: 151, 56, 0
	drink_icon = "carrotjuice"
	drink_name = "Glass of  carrot juice"
	drink_desc = "It is just like a carrot but without crunching."
	taste_description = "carrot juice"

/datum/reagent/consumable/drink/carrotjuice/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	update_flags |= M.AdjustEyeBlurry(-1, FALSE)
	update_flags |= M.AdjustEyeBlind(-1, FALSE)
	switch(current_cycle)
		if(1 to 20)
			//nothing
		if(21 to INFINITY)
			if(prob(current_cycle-10))
				update_flags |= M.CureNearsighted(FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/doctor_delight
	name = "The Doctor's Delight"
	id = "doctorsdelight"
	description = "A gulp a day keeps the MediBot away. That's probably for the best."
	reagent_state = LIQUID
	color = "#FF8CFF" // rgb: 255, 140, 255
	drink_icon = "doctorsdelightglass"
	drink_name = "Doctor's Delight"
	drink_desc = "A healthy mixture of juices, guaranteed to keep you healthy until the next toolboxing takes place."
	taste_description = "healthy dietary choices"

/datum/reagent/consumable/drink/doctor_delight/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustToxLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/triple_citrus
	name = "Triple Citrus"
	id = "triple_citrus"
	description = "A refreshing mixed drink of orange, lemon and lime juice."
	reagent_state = LIQUID
	color = "#23A046"
	drink_icon = "triplecitrus"
	drink_name = "Glass of Triplecitrus Juice"
	drink_desc = "As colorful and healthy as it is delicious."
	taste_description = "citrus juice"

/datum/reagent/consumable/drink/triple_citrus/reaction_mob(mob/living/M, method=REAGENT_TOUCH, volume)
	if(method == REAGENT_INGEST)
		M.adjustToxLoss(-rand(1,2))

/datum/reagent/consumable/drink/berryjuice
	name = "Berry Juice"
	id = "berryjuice"
	description = "A delicious blend of several different kinds of berries."
	color = "#863333" // rgb: 134, 51, 51
	drink_icon = "berryjuice"
	drink_name = "Glass of berry juice"
	drink_desc = "Berry juice. Or maybe its jam. Who cares?"
	taste_description = "berry juice"

/datum/reagent/consumable/drink/poisonberryjuice
	name = "Poison Berry Juice"
	id = "poisonberryjuice"
	description = "A tasty juice blended from various kinds of very deadly and toxic berries."
	color = "#863353" // rgb: 134, 51, 83
	drink_icon = "poisonberryjuice"
	drink_name = "Glass of poison berry juice"
	drink_desc = "A glass of deadly juice."
	taste_description = "berry juice"

/datum/reagent/consumable/drink/poisonberryjuice/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	update_flags |= M.adjustToxLoss(1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/applejuice
	name = "Apple Juice"
	id = "applejuice"
	description = "The sweet juice of an apple, fit for all ages."
	color = "#ECFF56" // rgb: 236, 255, 86
	taste_description = "apple juice"

/datum/reagent/consumable/drink/watermelonjuice
	name = "Watermelon Juice"
	id = "watermelonjuice"
	description = "Delicious juice made from watermelon."
	color = "#863333" // rgb: 134, 51, 51
	taste_description = "watermelon juice"

/datum/reagent/consumable/drink/lemonjuice
	name = "Lemon Juice"
	id = "lemonjuice"
	description = "This juice is VERY sour."
	color = "#863333" // rgb: 175, 175, 0
	drink_icon = "lemonglass"
	drink_name = "Glass of lemonjuice"
	drink_desc = "Sour..."
	taste_description = "lemon juice"

/datum/reagent/consumable/drink/strawberryjuice
	name = "Strawberry Juice"
	id = "strawberryjuice"
	description = "Nice sweet and refreshing juice made from strawberry."
	color = "#E36D6D" // rgb: 227, 109, 109
	drink_icon = "glass_red"
	drink_name = "Glass of strawberry juice"
	drink_desc = "Sweet and refreshing!"
	taste_description = "strawberry juice"

/datum/reagent/consumable/drink/coconutjuice
	name = "Coconut Juice"
	id = "coconutjuice"
	description = "Tasty juice that came from inside of a coconut."
	color = "#FFFFFFF" // rgb: 255,255,255
	drink_icon = "glass_clear"
	drink_name = "Glass of coconut juice"
	drink_desc = "Apparently this came from inside of the coconut?"
	taste_description = "coconut juice"

/datum/reagent/consumable/drink/maplesyrup
	name = "Maple Syrup"
	id = "maplesyrup"
	description = "This syrup is VERY sweet. Why would you drink this straight from a glass?"
	color = "#965f19" // rgb: 150, 95, 25
	drink_name = "Glass of maple syrup"
	drink_desc = "This has sweetness written all over it. Why would you drink this straight from a glass?"
	taste_description = "maple syrup"

/datum/reagent/consumable/drink/banana
	name = "Banana Juice"
	id = "banana"
	description = "The raw essence of a banana."
	color = "#863333" // rgb: 175, 175, 0
	drink_icon = "banana"
	drink_name = "Glass of banana juice"
	drink_desc = "The raw essence of a banana. HONK"
	taste_description = "banana juice"

/datum/reagent/consumable/drink/banana/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if((ishuman(M) && (COMIC in M.mutations)) || issmall(M))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/nothing
	name = "Nothing"
	id = "nothing"
	description = "Absolutely nothing."
	drink_icon = "nothing"
	drink_name = "Nothing"
	drink_desc = "Absolutely nothing."
	taste_description = "nothing... how?"

/datum/reagent/consumable/drink/nothing/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(ishuman(M) && M.mind && M.mind.miming)
		update_flags |= M.adjustBruteLoss(-1, FALSE)
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/potato_juice
	name = "Potato Juice"
	id = "potato"
	description = "Juice of the potato. Bleh."
	nutriment_factor = 2 * REAGENTS_METABOLISM
	color = "#302000" // rgb: 48, 32, 0
	drink_icon = "glass_brown"
	drink_name = "Glass of  potato juice"
	drink_desc = "Who in the hell requests this? Gross!"
	taste_description = "puke, you're pretty sure"

/datum/reagent/consumable/drink/milk
	name = "Milk"
	id = "milk"
	description = "An opaque white liquid produced by the mammary glands of mammals."
	color = "#DFDFDF" // rgb: 223, 223, 223
	drink_icon = "glass_white"
	drink_name = "Glass of milk"
	drink_desc = "White and nutritious goodness!"
	taste_description = "milk"

/datum/reagent/consumable/drink/milk/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
	if(holder.has_reagent("capsaicin"))
		holder.remove_reagent("capsaicin", 2)
	return ..() | update_flags

/datum/reagent/consumable/drink/milk/soymilk
	name = "Soy Milk"
	id = "soymilk"
	description = "An opaque white liquid made from soybeans."
	color = "#DFDFC7" // rgb: 223, 223, 199
	drink_name = "Glass of soy milk"
	drink_desc = "White and nutritious soy goodness!"
	taste_description = "fake milk"

/datum/reagent/consumable/drink/milk/cream
	name = "Cream"
	id = "cream"
	description = "The fatty, still liquid part of milk. Why don't you mix this with sum scotch, eh?"
	color = "#DFD7AF" // rgb: 223, 215, 175
	drink_name = "Glass of cream"
	drink_desc = "Ewwww..."
	taste_description = "cream"

/datum/reagent/consumable/drink/milk/chocolate_milk
	name = "Chocolate milk"
	id ="chocolate_milk"
	description = "Chocolate-flavored milk, tastes like being a kid again."
	color = "#85432C"
	taste_description = "chocolate milk"

/datum/reagent/consumable/drink/hot_coco
	name = "Hot Chocolate"
	id = "hot_coco"
	description = "Made with love! And coco beans."
	nutriment_factor = 3 * REAGENTS_METABOLISM
	color = "#403010" // rgb: 64, 48, 16
	adj_temp_hot = 5
	drink_icon = "hot_coco"
	drink_name = "Glass of hot coco"
	drink_desc = "Delicious and cozy"
	taste_description = "chocolate"

/datum/reagent/consumable/drink/coffee
	name = "Coffee"
	id = "coffee"
	description = "Coffee is a brewed drink prepared from roasted seeds, commonly called coffee beans, of the coffee plant."
	color = "#482000" // rgb: 72, 32, 0
	nutriment_factor = 0
	adj_dizzy = -5
	adj_drowsy = -3
	adj_sleepy = -2
	adj_temp_hot = 25
	overdose_threshold = 45
	addiction_chance = 2 // It's true.
	addiction_chance_additional = 20
	addiction_threshold = 10
	minor_addiction = TRUE
	heart_rate_increase = 1
	drink_icon = "glass_brown"
	drink_name = "Glass of coffee"
	drink_desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."
	taste_description = "coffee"

/datum/reagent/consumable/drink/coffee/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(holder.has_reagent("frostoil"))
		holder.remove_reagent("frostoil", 5)
	if(prob(50))
		update_flags |= M.AdjustParalysis(-1, FALSE)
		update_flags |= M.AdjustStunned(-1, FALSE)
		update_flags |= M.AdjustWeakened(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/coffee/overdose_process(mob/living/M, severity)
	if(volume > 45)
		M.Jitter(5)
	return list(0, STATUS_UPDATE_NONE)

/datum/reagent/consumable/drink/coffee/icecoffee
	name = "Iced Coffee"
	id = "icecoffee"
	description = "Coffee and ice, refreshing and cool."
	color = "#102838" // rgb: 16, 40, 56
	adj_temp_hot = 0
	adj_temp_cool = 5
	drink_icon = "icedcoffeeglass"
	drink_name = "Iced Coffee"
	drink_desc = "A drink to perk you up and refresh you!"
	taste_description = "refreshingly cold coffee"

/datum/reagent/consumable/drink/coffee/soy_latte
	name = "Soy Latte"
	id = "soy_latte"
	description = "A nice and tasty beverage while you are reading your hippie books."
	color = "#664300" // rgb: 102, 67, 0
	adj_sleepy = 0
	adj_temp_hot = 5
	drink_icon = "soy_latte"
	drink_name = "Soy Latte"
	drink_desc = "A nice and refrshing beverage while you are reading."
	taste_description = "fake milky coffee"

/datum/reagent/consumable/drink/coffee/soy_latte/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	update_flags |= M.SetSleeping(0, FALSE)
	if(prob(20))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/coffee/cafe_latte
	name = "Cafe Latte"
	id = "cafe_latte"
	description = "A nice, strong and tasty beverage while you are reading."
	color = "#664300" // rgb: 102, 67, 0
	adj_sleepy = 0
	adj_temp_hot = 5
	drink_icon = "cafe_latte"
	drink_name = "Cafe Latte"
	drink_desc = "A nice, strong and refreshing beverage while you are reading."
	taste_description = "milky coffee"

/datum/reagent/consumable/drink/coffee/cafe_latte/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	update_flags |= M.SetSleeping(0, FALSE)
	if(prob(20))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/coffee/cafe_latte/cafe_mocha
	name = "Cafe Mocha"
	id = "cafe_mocha"
	description = "The perfect blend of coffe, milk, and chocolate."
	color = "#673629"
	drink_name = "Cafe Mocha"
	drink_desc = "The perfect blend of coffe, milk, and chocolate."
	taste_description = "chocolatey coffee"

/datum/reagent/consumable/drink/tea
	name = "Tea"
	id = "tea"
	description = "Tasty black tea: It has antioxidants. It's good for you!"
	color = "#101000" // rgb: 16, 16, 0
	nutriment_factor = 0
	adj_dizzy = -2
	adj_drowsy = -1
	adj_sleepy = -3
	adj_temp_hot = 20
	addiction_chance = 1
	addiction_chance_additional = 1
	addiction_threshold = 10
	minor_addiction = TRUE
	drink_icon = "glass_brown"
	drink_name = "Glass of Tea"
	drink_desc = "A glass of hot tea. Perhaps a cup with a handle would have been smarter?"
	taste_description = "tea"

/datum/reagent/consumable/drink/tea/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustToxLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/tea/icetea
	name = "Iced Tea"
	id = "icetea"
	description = "No relation to a certain rap artist/ actor."
	color = "#104038" // rgb: 16, 64, 56
	adj_temp_hot = 0
	adj_temp_cool = 5
	drink_icon = "icetea"
	drink_name = "Iced Tea"
	drink_desc = "No relation to a certain rap artist/ actor."
	taste_description = "cold tea"

/datum/reagent/consumable/drink/bananahonk
	name = "Banana Honk"
	id = "bananahonk"
	description = "A drink from Clown Heaven."
	color = "#664300" // rgb: 102, 67, 0
	drink_icon = "bananahonkglass"
	drink_name = "Banana Honk"
	drink_desc = "A drink from Banana Heaven."
	taste_description = "HONK"

/datum/reagent/consumable/drink/bananahonk/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if((ishuman(M) && (COMIC in M.mutations)) || issmall(M))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/silencer
	name = "Silencer"
	id = "silencer"
	description = "A drink from Mime Heaven."
	color = "#664300" // rgb: 102, 67, 0
	drink_icon = "silencerglass"
	drink_name = "Silencer"
	drink_desc = "A drink from mime Heaven."
	taste_description = "mphhhh"

/datum/reagent/consumable/drink/silencer/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(ishuman(M) && (M.job in list("Mime")))
		update_flags |= M.adjustBruteLoss(-1, FALSE)
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags

/datum/reagent/consumable/drink/chocolatepudding
	name = "Chocolate Pudding"
	id = "chocolatepudding"
	description = "A great dessert for chocolate lovers."
	color = "#800000"
	nutriment_factor = 4 * REAGENTS_METABOLISM
	drink_icon = "chocolatepudding"
	drink_name = "Chocolate Pudding"
	drink_desc = "Tasty"
	taste_description = "chocolate"

/datum/reagent/consumable/drink/vanillapudding
	name = "Vanilla Pudding"
	id = "vanillapudding"
	description = "A great dessert for vanilla lovers."
	color = "#FAFAD2"
	nutriment_factor = 4 * REAGENTS_METABOLISM
	drink_icon = "vanillapudding"
	drink_name = "Vanilla Pudding"
	drink_desc = "Tasty."
	taste_description = "vanilla"

/datum/reagent/consumable/drink/cherryshake
	name = "Cherry Shake"
	id = "cherryshake"
	description = "A cherry flavored milkshake."
	color = "#FFB6C1"
	nutriment_factor = 4 * REAGENTS_METABOLISM
	drink_icon = "cherryshake"
	drink_name = "Cherry Shake"
	drink_desc = "A cherry flavored milkshake."
	taste_description = "cherry milkshake"

/datum/reagent/consumable/drink/bluecherryshake
	name = "Blue Cherry Shake"
	id = "bluecherryshake"
	description = "An exotic milkshake."
	color = "#00F1FF"
	nutriment_factor = 4 * REAGENTS_METABOLISM
	drink_icon = "bluecherryshake"
	drink_name = "Blue Cherry Shake"
	drink_desc = "An exotic blue milkshake."
	taste_description = "blues"

/datum/reagent/consumable/drink/pumpkin_latte
	name = "Pumpkin Latte"
	id = "pumpkin_latte"
	description = "A mix of pumpkin juice and coffee."
	color = "#F4A460"
	nutriment_factor = 3 * REAGENTS_METABOLISM
	drink_icon = "pumpkin_latte"
	drink_name = "Pumpkin Latte"
	drink_desc = "A mix of coffee and pumpkin juice."
	taste_description = "overpriced hipster spices"

/datum/reagent/consumable/drink/gibbfloats
	name = "Gibb Floats"
	id = "gibbfloats"
	description = "Ice cream on top of a Dr. Gibb glass."
	color = "#B22222"
	nutriment_factor = 3 * REAGENTS_METABOLISM
	drink_icon= "gibbfloats"
	drink_name = "Gibbfloat"
	drink_desc = "Dr. Gibb with ice cream on top."
	taste_description = "taste revolution"

/datum/reagent/consumable/drink/pumpkinjuice
	name = "Pumpkin Juice"
	id = "pumpkinjuice"
	description = "Juiced from real pumpkin."
	color = "#FFA500"
	taste_description = "autumn"

/datum/reagent/consumable/drink/blumpkinjuice
	name = "Blumpkin Juice"
	id = "blumpkinjuice"
	description = "Juiced from real blumpkin."
	color = "#00BFFF"
	taste_description = "caustic puke"

/datum/reagent/consumable/drink/grape_soda
	name = "Grape soda"
	id = "grapesoda"
	description = "Beloved of children and teetotalers."
	color = "#E6CDFF"
	taste_description = "grape soda"

/datum/reagent/consumable/drink/caramelsyrup
	name = "Caramel Syrup"
	id = "caramelsyrup"
	description = "A sweet, viscous liquid typically added to desserts or cocktails."
	color = "#b88340"
	nutriment_factor = 2 * REAGENTS_METABOLISM
	taste_description = "caramel"
	drink_name = "Glass of Caramel Syrup"
	drink_desc = "You may be overdoing it on the caramel syrup a bit, unless you're into that kind of thing."

/datum/reagent/consumable/drink/chocolatesyrup
	name = "Chocolate Syrup"
	id = "chocolatesyrup"
	description = "A sweet, viscous liquid typically added to desserts or cocktails."
	color = "#654321"
	nutriment_factor = 2 * REAGENTS_METABOLISM
	taste_description = "sweet chocolate"
	drink_name = "Glass of Chocolate Syrup"
	drink_desc = "You may be overdoing it on the chocolate syrup a bit, unless you're into that kind of thing."

/datum/reagent/consumable/drink/vanillasyrup
	name = "Vanilla Syrup"
	id = "vanillasyrup"
	description = "A sweet, viscous liquid typically added to desserts or cocktails."
	color = "#f3e5ab"
	nutriment_factor = 2 * REAGENTS_METABOLISM
	taste_description = "sweet vanilla"
	drink_name = "Glass of Vanilla Syrup"
	drink_desc = "You may be overdoing it on the vanilla syrup a bit, unless you're into that kind of thing."

/datum/reagent/consumable/drink/raspberryjuice
	name = "Raspberry Juice"
	id = "raspberryjuice"
	description = "Juiced from real raspberries."
	color = "#e30b5d"
	taste_description = "tanginess"
	drink_name = "Glass of Raspberry Juice"
	drink_desc = "High in iron and very tangy."

/datum/reagent/consumable/drink/raspberryjuice/on_mob_life(mob/living/M)
	if(prob(10))
		M.reagents.add_reagent("iron", 0.8)
	return ..()

/datum/reagent/consumable/drink/pearjuice
	name = "Pear Juice"
	id = "pearjuice"
	description = "Juiced from real pears."
	color = "#d1e231"
	taste_description = "pear"
	drink_name = "Glass of Pear Juice"
	drink_desc = "A very mild, smooth juice."

/datum/reagent/consumable/drink/peachjuice
	name = "Peach Juice"
	id = "peachjuice"
	description = "Juiced from real peaches."
	color = "#ffe5b4"
	taste_description = "peach"
	drink_name = "Glass of Peach Juice"
	drink_desc = "A sweet, tasty treat in liquid form."

/datum/reagent/consumable/drink/mangojuice
	name = "Mango Juice"
	id = "mangojuice"
	description = "Juiced from real mangoes."
	color = "#ffc324"
	taste_description = "a tropical getaway"
	drink_name = "Glass of Mango Juice"
	drink_desc = "Juice from a well-known tropical fruit. Mild and tangy."

/datum/reagent/consumable/drink/grapefruitjuice
	name = "Grapefruit Juice"
	id = "grapefruitjuice"
	description = "Juiced from real grapefruit."
	color = "#EDADAA"
	taste_description = "bitter citrus"
	drink_name = "Glass of Grapefruit Juice"
	drink_desc = "Juice from a grapefruit. Very bitter."

/datum/reagent/consumable/drink/grapejuice
	name = "Grape Juice"
	id = "grapejuice"
	description = "Juiced from real grapes."
	color = "#6f2da8"
	taste_description = "wasted potential"
	drink_name = "Glass of Grape Juice"
	drink_desc = "Not old enough to be alcoholic yet."

/datum/reagent/consumable/drink/cranberryjuice
	name = "Cranberry Juice"
	id = "cranberryjuice"
	description = "Juiced from real cranberries."
	color = "#cb4c78"
	taste_description = "tart berries"
	drink_name = "Glass of Cranberry Juice"
	drink_desc = "Juice from a a very tart, acidic berry. Thought to have mildly antibiotic properties."

// Has a 1 in 4 chance of adding one cycle of spaceacillin, allowing it to slowly cure or delay some diseases and infections.
/datum/reagent/consumable/drink/cranberryjuice/on_mob_life(mob/living/M)
	if(prob(25))
		M.reagents.add_reagent("spaceacillin", 0.2)
	return ..()

/datum/reagent/consumable/drink/caramel_milkshake
	name = "Caramel Milkshake"
	id = "caramel_milkshake"
	description = "Milkshake flavoured with caramelized sugar."
	color = "#b88340"
	taste_description = "frothy milk and caramel"
	drink_name = "Caramel Milkshake"
	drink_desc = "A milkshake flavoured with caramelized sugar."

/datum/reagent/consumable/drink/chocolate_milkshake
	name = "Chocolate Milkshake"
	id = "chocolate_milkshake"
	description = "Milkshake flavoured with chocolate."
	color = "#b88340"
	taste_description = "frothy chocolate milk"
	drink_name = "Chocolate Milkshake"
	drink_desc = "A milkshake flavoured with chocolate."

/datum/reagent/consumable/drink/grenadine_milkshake
	name = "Grenadine Milkshake"
	id = "grenadine_milkshake"
	description = "Milkshake flavoured with grenadine."
	color = "#b88340"
	taste_description = "frothy tangy milk"
	drink_name = "Grenadine Milkshake"
	drink_desc = "A milkshake flavoured with grenadine. Or it would be, if grenadine wasn't so expensive."

/datum/reagent/consumable/drink/morning_star
	name = "Morning Star"
	id = "morning_star"
	description = "A non-alcoholic pineapple-based cocktail sweetened with honey."
	color = "#E0FFFF"
	taste_description = "pineapple and honey"
	drink_name = "Morning Star"
	drink_desc = "A non-alcoholic pineapple-based cocktail sweetened with honey. All of honey's healing properties at a fraction of the calories!"

// Uses honey in the recipe, so has a slightly higher power budget.
/datum/reagent/consumable/drink/morning_star/on_mob_life(mob/living/M)
	var/update_flags = STATUS_UPDATE_NONE
	if(prob(20))
		update_flags |= M.adjustBruteLoss(-3, FALSE)
		update_flags |= M.adjustFireLoss(-1, FALSE)
	return ..() | update_flags


