import style from '../../../../assets/stylesheets/kow.module.css'
import React from 'react'

const ArmyButtons = props => {
	let armyButtons = props.armies.map(army => {
		return (
			<div key={parseInt(army.id)}>
				<span
					onClick={() => props.updateSelectedArmy(army)}
					className={style['army-button-label']}
				>
					{army.name}
				</span>
			</div>
		)
	})

	return (
		<div className={style['army-buttons']}>
			<h4 className={style['army-buttons-title']}>
				Which army?
			</h4><br />
			<div>
				<span 
					onClick={props.toggleArmyButtons}
					className={style['clear-or-cancel-label']}
				>
					Cancel
				</span>
			</div><br />			
			{armyButtons}
		</div>
	)
}

export default ArmyButtons