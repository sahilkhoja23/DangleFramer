# This imports all the layers for "Framer Dangle" into framerDangleLayers1
$ = Framer.Importer.load "imported/Framer Dangle"

housebox = new Layer
	x: 60, y: 350, width: 274, height: 278, opacity: 0
backArrow = new Layer
	opacity: 0

#show household
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
