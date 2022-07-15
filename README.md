# Safe area
Enteder melhor o uso do Safe Area


## Feature
- Aprendi novas maneiras de ativar as constraint
- Centralizar componentes em mesma posição, na view não ira renderizar
- Abaixo eu centralizei os botões  left e right no eixo X, isto evitou o render do botão


```swift
	
NSLayoutConstraint.activate([
    labelCenterTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3), 
    labelCenterTop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			 
			 
    buttonCenterBottom.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 3),
    buttonCenterBottom.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			
    buttonCenterLeft.centerYAnchor.constraint(equalTo: view.centerYAnchor), 
    buttonCenterLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			
    buttonCenterRight.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    buttonCenterRight.centerYAnchor.constraint(equalTo: view.centerYAnchor),
])
		
		

```
