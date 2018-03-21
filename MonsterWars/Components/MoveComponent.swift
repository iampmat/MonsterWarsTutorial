import SpriteKit
import GameplayKit

class MoveComponent: GKAgent2D, GKAgentDelegate {
  
  let entityManager: EntityManager
  
  init(maxSpeed: Float, maxAcceleration: Float, radius: Float, entityManager: EntityManager) {
    self.entityManager = entityManager
    super.init()
    delegate = self
    self.maxSpeed = maxSpeed
    self.maxAcceleration = maxAcceleration
    self.radius = radius
    print(self.mass)
    self.mass = 0.01
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func agentWillUpdate(_ agent: GKAgent) {
    guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
      return
    }
    
    position = float2(spriteComponent.node.position)
  }
  
  func agentDidUpdate(_ agent: GKAgent) {
    guard let spriteComponent = entity?.component(ofType: SpriteComponent.self) else {
      return
    }
    
    spriteComponent.node.position = CGPoint(position)
  }
}
