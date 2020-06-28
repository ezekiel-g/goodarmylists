import style from '../../../../assets/stylesheets/kow.module.css'
import React from 'react'

const ArmyDropdown = props => {

	let armyOptions = props.armies.map(army => {
		return (
			<div
				key={army.id}
				className={style['army-dropdown-option']}
				onClick={() => props.updateSelectedArmy(army)}
			>
				{army.name}
			</div>
		)
	})
	return (
		<div id="army-dropdown-id" className={style['army-dropdown']}>

			<div id="army-options-after-placeholder" className={props.visible}>
				{armyOptions}
			</div>
		</div>
	)
}

export default ArmyDropdown