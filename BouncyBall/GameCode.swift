import Foundation


var barriers: [Shape] = []
var targets: [Shape] = []

let ball = OvalShape(width: 150, height: 150)

let barrierWidth = 300.0
let barrierHeight = 25.0

let barrierPoints = [
    Point(x: 0, y: 0  ),
Point(x: 0, y: barrierHeight),
    Point(x: barrierWidth, y: barrierHeight),
    Point(x: barrierWidth, y: 0)

] // end barrier points

let barrier = PolygonShape(points: barrierPoints)

let funnelPoints = [
Point(x: 0, y: 50),
Point(x: 80, y: 50),
Point(x: 60, y: 0),
Point(x: 20, y: 0)
] // end funnel

let funnel = PolygonShape(points: funnelPoints)
let targetPoints = [
Point(x: 10, y: 0),
Point(x: 0, y: 10),
Point(x: 10, y: 20),
Point(x: 20, y: 10)
] // Polygon shape

let target = PolygonShape(points: targetPoints)

fileprivate func setupBall() {
    //add circle to the scene
    ball.position = Point(x: 250, y: 400  )
    scene.add(ball)
    ball.hasPhysics = true
    ball.fillColor = .blue
    ball.onCollision = ballCollided(with:)
    ball.stopAllMotion()
    ball.isDraggable = false
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    ball.onTapped = resetGame
    ball.bounciness = 0.6
    
} // end setupBall

fileprivate func addBarrier(at position: Point, width: Double, height:Double, angle:Double) {
    // setupBall is a function that is
    
    let barrierPoints = [
        Point(x: 0, y: 0  ),
    Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)

    ] // end barrier points

    let barrier = PolygonShape(points: barrierPoints)
    barriers.append(barrier)
    // end barrier
    
    
    // add barrier to scene
    barrier.position = Point(x: 200, y: 150 )
    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    barrier.angle = 0.1
    
} // end setupBarrier

    
    


fileprivate func setupFunnel() {
    // add funnel to scene
    funnel.position = Point(x: 200, y: scene.height - 25)
    scene.add(funnel)
    funnel.onTapped = dropBall
    funnel.isDraggable = false
} // end set up funnel


func addTarget(at position: Point){
    
    let targetPoints = [
    Point(x: 10, y: 0),
    Point(x: 0, y: 10),
    Point(x: 10, y: 20),
    Point(x: 20, y: 10)
    ] // Polygon shape
    
    let target = PolygonShape(points: targetPoints)
    targets.append(target)
    

    // add target to scene
    target.position = Point(x: 200, y: 400)
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow
    scene.add(target)
    target.name = "target"
   target.isDraggable = false // can take off comment after printPositionof
    
} // end

func setup() {
    
    setupBall()
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)
    addBarrier(at: Point(x: 300, y: 100), width: 120, height: 25, angle: -0.5)
    
    addTarget(at: Point(x: 150, y: 400))
    addTarget(at: Point(x: 100, y: 250))
    
    setupFunnel() // wont use () due to the parenthesis calling the function
    
    resetGame()
    scene.onShapeMoved = printPosition(of:)
    
}
// drops the balls by mobing it into the funnel's position
    func dropBall() {
        ball.position = funnel.position
        ball.stopAllMotion()
        
        for barrier in barriers{
            barrier.isDraggable = false
        }//end for loop
        
    }

func ballCollided(with otherShape: Shape) {
    
    if otherShape.name != "target" { return }
        
        otherShape.fillColor = .green
    
} // end ballCollided

func ballExitedScene() {
    //barrier.isDraggable = true
    for barrier in barriers {
        barrier.isDraggable = true
        
    }
}// end exited


// Resets the game by moving the ball below the scene
// which will unlock the barriers
func resetGame(){
    
    ball.position = Point(x: 0, y: -80)
  
    
} // end reset game

func printPosition(of shape: Shape){
    
    print(shape.position)
}
