//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by kenjimaeda on 15/07/22.
//

import UIKit

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
	}
	
	func setupViews(){
		let labelCenterTop = makeLabel("Top")
		let buttonCenterBottom = makeButton("Eu sou um botao")
		let buttonCenterLeft = makeButton("Eu sou left")
		let buttonCenterRight = makeButton("Eu sou right")
		
		view.addSubview(labelCenterTop)
		view.addSubview(buttonCenterBottom)
		view.addSubview(buttonCenterLeft)
		view.addSubview(buttonCenterRight)
		
		//outra maneira de ativar nossas constraint
		NSLayoutConstraint.activate([
			labelCenterTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
			labelCenterTop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			buttonCenterBottom.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 3),
			buttonCenterBottom.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
			//cuidado se ambos ocuparem mesmo espaco nao ira aparecer na view
			//exemplo se centralizar buttonCenterRight e buttonCenterLeft no center
			//nao ira aparecer
			buttonCenterLeft.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			buttonCenterLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			
			buttonCenterRight.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			buttonCenterRight.centerYAnchor.constraint(equalTo: view.centerYAnchor),
		])
		
		
		
	}
	
	
	func makeLabel (_ text: String) -> UILabel {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.systemFont(ofSize: 17)
		label.textColor = .black
		label.text = text
		return label
	}
	
	func makeButton(_ text: String) -> UIButton {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle(text, for: .normal)
		//aplica cor ao botao
		button.setTitleColor(.black,for: .normal)
		return button
	}
	
	
}

