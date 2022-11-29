//
//  StartButton.swift
//  NossoMeio
//
//  Created by Natan Rodrigues on 19/11/22.
//

import Foundation
import SpriteKit

class StartButton: SKNode {
    
    var image: SKSpriteNode?
    var actionBegan: (() -> Void)?
    var actionEnded: (() -> Void)?
    
    init(image: SKSpriteNode, actionBegan: @escaping () -> Void, actionEnded: @escaping () -> Void) {
        self.image = image
        self.actionBegan = actionBegan
        self.actionEnded = actionEnded
        super.init()
        //pode receber interação com o usuário
        self.isUserInteractionEnabled = true
        self.addChild(image)
    }
    
    //inicializador para ajudar a criar o botao pela cena
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.actionBegan?()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.actionEnded?()
    }
    
}
