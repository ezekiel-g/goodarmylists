import style from '../../../../assets/stylesheets/wmr.module.css'
import paypal from '../../../../assets/images/paypal.gif'
import React, { Component } from 'react'
// import { Link } from 'react-router-dom'
// import Select from 'react-select'
// import Modal from 'react-modal'

class WmrInnerContainer extends Component {
	constructor(props) {
		super(props)
		this.state = {

		}
		this.clearList = this.clearList.bind(this)
	}

	clearList() {

	}

	
	render() {
		let armyDisplay = this.props.armies.map(army => {
			return (
				<div key={army.id}>{army.name}</div>
			)
		})

		return (		
			<div>
				<div
					id="everything-except-print-section-id"
					className={style['everything-except-print-section']}
				>
					{armyDisplay}
				</div>
				<div id="print-section-id" className={style['print-section']}></div>
			</div>
		)
	}	
}

export default WmrInnerContainer