import React from "react"
import ReactDOM from "react-dom/client"
import Alpha from "./util/alpha.js"
import { sprintf } from "sprintf-js"
import sleep from "es7-sleep"
import $ from 'jquery'
import "./css/sort.css"

class App extends React.Component {
	
	constructor() {
		
		super();
		
	}
	
	state = {
		
	}
	
	
	render() {
		return(
			<>
			
			</>
		)
	}
	
}


let root = ReactDOM.createRoot(document.querySelector("#root"))

root.render(<App/>)