import SpriteKit
import GameplayKit

class Castle: GKEntity {
  
  init(imageName: String, team: Team) {
    super.init()
    
    let spriteComponent = SpriteComponent(texture: SKTexture(imageNamed: imageName))
    addComponent(spriteComponent)
    addComponent(TeamComponent(team: team))
    addComponent(CastleComponent())
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
