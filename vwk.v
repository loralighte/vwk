module main
/* 
	Goals:
	[x] Open a window
	[ ] Get WebKit running

	This will be heavily documented so people who
	want to reuse this code for other purposes can
	absolutely do so!
*/

// C Imports
#define WEBVIEW_HEADER
#include <webview.h>
#include <stddef.h>

// Set Window Width and Height
const(
	window_width = 600
	window_height = 450
)

// Create Struct
struct C.webview_t {}
struct C.char {}

fn C.webview_create(debug int, window voidptr) &C.webview_t
fn C.webview_set_title(w &C.webview_t, title &char)
fn C.webview_set_size(w &C.webview_t, width int, height int, hints int)
fn C.webview_navigate(w &C.webview_t, url &char)
fn C.webview_run(w &C.webview_t)
fn C.webview_destroy(w &C.webview_t)

fn main (){
	w := C.webview_create(0, 0)
	C.webview_set_title(w, &char("Webview Example"))
	C.webview_set_size(w, window_width, window_height, 0)
	C.webview_navigate(w, &char("https://en.m.wikipedia.org/wiki/Main_Page"))
	C.webview_run(w)
	C.webview_destroy(w)
}