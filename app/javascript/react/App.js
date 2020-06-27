import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import GamesContainer from './GamesContainer'
import KowOuterContainer from './kow/containers/KowOuterContainer'

const App = props => {
	return (
		<div>
			<BrowserRouter>
				<Switch>
					<Route path='/' exact component={GamesContainer} />
					<Route path='/kow' exact component={KowOuterContainer} />
				</Switch>
			</BrowserRouter>
		</div>
	)
}

export default App