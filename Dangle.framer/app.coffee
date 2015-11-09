# This imports all the layers for "Framer Dangle" into framerDangleLayers1
$ = Framer.Importer.load "imported/Framer Dangle"

#grid layers
housebox = new Layer
	x: 60, y: 350, width: 274, height: 278, opacity: 0
ecbox = new Layer
	x: 372, y: 321, width: 374, height: 378, opacity: 0
schoolbox = new Layer
	x: 14, y: 684, width: 374, height: 377, opacity: 0
backArrow = new Layer
	opacity: 0
#nav bar layers
taskBox = new Layer
	x: 237, y: 1240, width: 52, height: 55, opacity: 0


#All Household

#make household come to life
$.household.visible = true

#hide household
$.household.opacity = 0
$.tasks.opacity = 1

#add animation options
$.tasks.states.animationOptions =
	time: 0.5
$.household.states.animationOptions =
	time: 0.5

#add animation to household click
$.tasks.states.add
	detail: { x: -1000, opacity: 0 }
	show: { x: 0, opacity: 1 }
$.household.states.add
	detail: { opacity: 1 }
	hide: {opacity: 0}
housebox.on Events.Click, ->
	$.tasks.states.switch("detail")
	$.household.states.switch("detail")
#go back
backArrow.on Events.Click, ->
	$.household.states.switch("hide")
	$.tasks.states.switch("show")
	
#All Extracurricular

#make extracurricular come to life
$.extrac.visible = true

#hide ec
$.extrac.opacity = 0

#animation for exc click
$.extrac.states.add 
	detail: { opacity: 1 }
	hide: {opacity: 0}

ecbox.on Events.Click, -> 
	$.tasks.states.switch("detail")
	$.extrac.states.switch("detail")
#go back
backArrow.on Events.Click, ->
	$.extrac.states.switch("hide")
	$.tasks.states.switch("show")

#All School

#make extracurricular come to life
$.school.visible = true

#hide ec
$.school.opacity = 0

#animation for exc click
$.school.states.add 
	detail: { opacity: 1 }
	hide: {opacity: 0}

schoolbox.on Events.Click, -> 
	$.tasks.states.switch("detail")
	$.school.states.switch("detail")
#go back
backArrow.on Events.Click, ->
	$.school.states.switch("hide")
	$.tasks.states.switch("show")

	


