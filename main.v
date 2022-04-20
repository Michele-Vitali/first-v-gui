import ui

struct App{

	mut: 
		text string
		window &ui.Window

}

fn main(){

	mut app := &App{
		window: 0
	}

	app.window = ui.window(
		width: 800
		height: 600
		title: 'V GUI Application'
		children: [
			ui.column(
				margin: ui.Margin{10, 10, 10, 10}
				width: 20
				spacing: 20
				children: [
					ui.textbox(
						width: 10
						placeholder: 'First name'
					),
					ui.textbox(
						width: 10
						placeholder: 'Last name'
					),
					ui.button(
						text: 'Click me to change the title!'
						onclick: change_title
					)
				]
			)
		]
	)

	ui.run(app.window)

}

fn change_title(mut app App, btn &ui.Button){

	mut str := ""

	if app.window.title == 'V GUI Application'{
		str = 'This is fantastic!'
	}
	else{
		str = 'V GUI Application'
	}

	app.window.set_title(str)

}