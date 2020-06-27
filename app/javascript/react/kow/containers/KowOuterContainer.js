import style from '../../../../assets/stylesheets/kow.module.css'
import React, { Component } from 'react'
import KowInnerContainer from './KowInnerContainer'

class KowOuterContainer extends Component {
	constructor(props) {
		super(props)
		this.state = {
			armies: [],
			units: [],
			unitOptions: [],
			artefacts: []
		}
	}

	componentDidMount() {
		fetch('/api/v1/kow_armies')
		.then(response => {
			if (response.ok) {
				return response
			} else {
				let errorMessage = `${response.status} (${response.statusText})`,
				error = new Error(errorMessage)
				throw(error)
			}
		})
		.then(response => response.json())
		.then(body => {
			this.setState({ armies: body })
		})
		.catch(error => console.error(`Error in fetch: ${error.message}`))

		fetch('/api/v1/kow_units')
		.then(response => {
			if (response.ok) {
				return response
			} else {
				let errorMessage = `${response.status} (${response.statusText})`,
				error = new Error(errorMessage)
				throw(error)
			}
		})
		.then(response => response.json())
		.then(body => {
			this.setState({ units: body })
		})
		.catch(error => console.error(`Error in fetch: ${error.message}`))
	
		fetch('/api/v1/kow_unit_options')
		.then(response => {
			if (response.ok) {
				return response
			} else {
				let errorMessage = `${response.status} (${response.statusText})`,
				error = new Error(errorMessage)
				throw(error)
			}
		})
		.then(response => response.json())
		.then(body => {
			this.setState({ unitOptions: body })
		})
		.catch(error => console.error(`Error in fetch: ${error.message}`))

		fetch('/api/v1/kow_artefacts')
		.then(response => {
			if (response.ok) {
				return response
			} else {
				let errorMessage = `${response.status} (${response.statusText})`,
				error = new Error(errorMessage)
				throw(error)
			}
		})
		.then(response => response.json())
		.then(body => {
			this.setState({ artefacts: body })
		})
		.catch(error => console.error(`Error in fetch: ${error.message}`))
	}
	render() {
		return (
			<div className="sections-container">	
				<KowInnerContainer
					armies={this.state.armies}
					units={this.state.units}
					unitOptions={this.state.unitOptions}
					artefacts={this.state.artefacts}
				/>
			</div>
		)
	}
}

export default KowOuterContainer