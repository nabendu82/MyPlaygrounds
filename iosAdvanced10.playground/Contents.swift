//: Playground - noun: a place where people can play

import UIKit

struct screenResolution{
    let height: Int
    let width: Int
}

struct pointsCoordinates{
    let startPoint: CGPoint
    let endPoint: CGPoint
    let color: CGColor
}

class drawingMode{
    let currentScreen: screenResolution
    var pointsToDraw:[pointsCoordinates]?
    
    init(currentScreen: screenResolution){
        self.currentScreen = currentScreen
    }
}
