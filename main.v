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
				spacing: 100
				children: [
					ui.textbox(
						width: 300
						placeholder: 'First name'
					),
					ui.textbox(
						width: 300
						placeholder: 'Last name'
					)
				]
			)
		]
	)

	ui.run(app.window)

}