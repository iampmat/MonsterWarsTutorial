import SpriteKit
import GameplayKit

class Quirk: GKEntity {
  
  init(team: Team) {
    super.init()
    let texture = SKTexture(imageNamed: "quirk\(team.rawValue)")
    let spriteComponent = SpriteComponent(texture: texture)
    addComponent(spriteComponent)
    addComponent(TeamComponent(team: team))
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
