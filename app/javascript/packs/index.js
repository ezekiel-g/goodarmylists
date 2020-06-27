import sword from '../../assets/images/sword.ico'
import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter, Route } from 'react-router-dom'
import Favicon from 'react-favicon'
import App from '../react/App'

document.addEventListener('DOMContentLoaded', () => {
	ReactDOM.render(<App />, document.getElementById('app'))
})