module main
/* 
	Goals:
	[x] Open a window
	[ ] Get WebKit running
	[ ] Open a local HTML file

	This will be heavily documented so people who
	want to reuse this code for other purposes can
	absolutely do so!
*/

// Must import
import gg
import gx
// Later: 
// import os

// Set Window Width and Height
const(
	window_width = 600
	window_height = 450
)

// Create App Struct
struct App{
mut: 
	gg &gg.Context
}

fn main (){
	mut app := &App { gg: 0 }
	app.gg = gg.new_context(
		bg_color: gx.white
		width: window_width
		height: window_height
		create_window: true
		window_title: 'VWK Test'
		frame_fn: frame
	)
	app.gg.run()
}

fn frame(mut context gg.Context){
	context.begin()
	context.end()
}