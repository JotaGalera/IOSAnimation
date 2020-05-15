import UIKit

class customUIView: UIView {
        
    func paintSimpleAnimationPath() {
        for sublayer in self.layer.sublayers! where sublayer is CAShapeLayer {
            sublayer.removeFromSuperlayer()
        }
        
        let layer = CAShapeLayer()
        layer.path = getPathBS().cgPath
        
        layer.strokeEnd = 1.0
        layer.lineWidth = 2
        layer.borderColor = UIColor.red.cgColor
        layer.shadowColor = UIColor.white.cgColor
        layer.shadowRadius = 12
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.strokeColor = UIColor.blue.cgColor
        layer.fillColor = UIColor.white.cgColor
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 2  //Second
        animation.autoreverses = false //true
        
        
        layer.add(animation, forKey: "line")
        
        self.layer.addSublayer(layer)
    }
    
    func paintCombineAnimationPath(animation: AnimationTypes){
        for sublayer in self.layer.sublayers! where sublayer is CAShapeLayer {
            sublayer.removeFromSuperlayer()
        }
        
        paintBlackCircle()
        
        let layer = CAShapeLayer()
        layer.path = getPathBTry().cgPath
        layer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        layer.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer.lineWidth = 2
//      layer.strokeStart = 0 // Animation starting in %
        let layer2 = CAShapeLayer()
        layer2.path = getPathSTry().cgPath
        layer2.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        layer2.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer2.lineWidth = 2
//      layer2.strokeStart = 0
        
        let animations = getTypeAnimation(animation: animation)
        
        let animation = CAAnimationGroup()
        animation.animations = animations
        animation.duration = 2
        animation.repeatCount = .infinity
        animation.autoreverses = true
        layer.add(animation, forKey: "animation1")
        layer2.add(animation,forKey: "animation2")
        self.layer.addSublayer(layer)
        self.layer.addSublayer(layer2)
    }
    
    func fullAnimationBS(animation: AnimationTypes){
        for sublayer in self.layer.sublayers! where sublayer is CAShapeLayer {
                    sublayer.removeFromSuperlayer()
                }
                
        paintBlackCircle()
        
        let layer = CAShapeLayer()
        layer.path = getPathBTry().cgPath
        layer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        layer.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer.lineWidth = 2
//      layer.strokeStart = 1 // 0|1 : % drawed of the shape at the end
        
        let layer2 = CAShapeLayer()
        layer2.path = getPathSTry().cgPath
        layer2.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        layer2.strokeColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        layer2.lineWidth = 2
//      layer2.strokeStart = 0
        
        let animations = getTypeAnimation(animation: animation)
                
        let animation = CAAnimationGroup()
        animation.animations = animations
        animation.duration = 2
        animation.repeatCount = .infinity
//        animation.autoreverses = false
        layer.add(animation, forKey: "animation1")
        layer2.add(animation,forKey: "animation2")
        self.layer.addSublayer(layer)
        self.layer.addSublayer(layer2)
    }
    
    private func getPathBS() -> UIBezierPath {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 70.00, y: 91.0))
        path.addLine(to: CGPoint(x: 70.00, y: 127.0))
        path.addCurve(to: CGPoint(x: 70.00, y: 109.0), controlPoint1: CGPoint(x: 90.00, y: 127.0), controlPoint2: CGPoint(x: 90.00, y: 109.0))
        path.addCurve(to: CGPoint(x: 70.00, y: 91.0), controlPoint1: CGPoint(x: 90.00, y: 109.0), controlPoint2: CGPoint(x: 90.00, y: 91.0))
        
        path.move(to: CGPoint(x: 120.00, y: 99.0))
        path.addCurve(to: CGPoint(x: 100.00, y: 99.0), controlPoint1: CGPoint(x: 120.00, y: 89.0), controlPoint2: CGPoint(x: 100.00, y: 89.0))
        path.addCurve(to: CGPoint(x: 110.00, y: 109.0), controlPoint1: CGPoint(x: 102.00, y: 104.0), controlPoint2: CGPoint(x: 105.00, y: 106.0))
        path.addCurve(to: CGPoint(x: 120.00, y: 119.0), controlPoint1: CGPoint(x: 122.00, y: 115.0), controlPoint2: CGPoint(x: 120.00, y: 123.0))
        path.addCurve(to: CGPoint(x: 100.00, y: 120.0), controlPoint1: CGPoint(x: 120.00, y: 130.0), controlPoint2: CGPoint(x: 100.00, y: 130.0))
        
        return path
    }
        
    private func getPathB() -> UIBezierPath {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 70.00, y: 91.0))
        path.addLine(to: CGPoint(x: 70.00, y: 127.0))
        path.addCurve(to: CGPoint(x: 70.00, y: 109.0), controlPoint1: CGPoint(x: 90.00, y: 127.0), controlPoint2: CGPoint(x: 90.00, y: 109.0))
        path.addCurve(to: CGPoint(x: 70.00, y: 91.0), controlPoint1: CGPoint(x: 90.00, y: 109.0), controlPoint2: CGPoint(x: 90.00, y: 91.0))
        
        return path
    }
    
    private func getPathBTry() -> UIBezierPath {
        let path = UIBezierPath()
        let initPoint = CGPoint(x: 172.00, y: 389.0)
        var nextPoint = initPoint
        var controlPoint1 = CGPoint()
        var controlPoint2 = CGPoint()
        
        path.move(to: initPoint)
        nextPoint.y += 36
        path.addLine(to: nextPoint)
        nextPoint.y = initPoint.y + 18
        controlPoint1.x = initPoint.x + 18
        controlPoint1.y = initPoint.y + 36
        controlPoint2.x = initPoint.x + 18
        controlPoint2.y = initPoint.y + 18
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2:controlPoint2)
        nextPoint.y = initPoint.y
        controlPoint1.x = initPoint.x + 18
        controlPoint1.y = initPoint.y + 18
        controlPoint2.x = initPoint.x + 18
        controlPoint2.y = initPoint.y
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        
        return path
    }
    
    private func getPathS() -> UIBezierPath {
        let path = UIBezierPath()
        
        
        path.move(to: CGPoint(x: 120.00, y: 99.0))
        path.addCurve(to: CGPoint(x: 100.00, y: 99.0), controlPoint1: CGPoint(x: 120.00, y: 89.0), controlPoint2: CGPoint(x: 100.00, y: 89.0))
        path.addCurve(to: CGPoint(x: 110.00, y: 109.0), controlPoint1: CGPoint(x: 102.00, y: 104.0), controlPoint2: CGPoint(x: 105.00, y: 106.0))
        path.addCurve(to: CGPoint(x: 120.00, y: 119.0), controlPoint1: CGPoint(x: 122.00, y: 115.0), controlPoint2: CGPoint(x: 120.00, y: 123.0))
        path.addCurve(to: CGPoint(x: 100.00, y: 120.0), controlPoint1: CGPoint(x: 120.00, y: 130.0), controlPoint2: CGPoint(x: 100.00, y: 130.0))
        
        return path
    }
    
    private func getPathSTry() -> UIBezierPath {
        let path = UIBezierPath()
        
        let initPoint = CGPoint(x: 212.00, y: 397.0)
        var nextPoint = initPoint
        var controlPoint1 = CGPoint()
        var controlPoint2 = CGPoint()
        
        path.move(to: initPoint)
        nextPoint.x = initPoint.x - 20
        nextPoint.y = initPoint.y
        controlPoint1.x = initPoint.x
        controlPoint1.y = initPoint.y - 10
        controlPoint2.x = initPoint.x - 20
        controlPoint2.y = initPoint.y - 10
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        nextPoint.x = initPoint.x - 10
        nextPoint.y = initPoint.y + 10
        controlPoint1.x = initPoint.x - 18
        controlPoint1.y = initPoint.y + 6
        controlPoint2.x = initPoint.x - 15
        controlPoint2.y = initPoint.y + 7
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        nextPoint.x = initPoint.x
        nextPoint.y = initPoint.y + 20
        controlPoint1.x = initPoint.x + 2
        controlPoint1.y = initPoint.y + 16
        controlPoint2.x = initPoint.x
        controlPoint2.y = initPoint.y + 24
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        nextPoint.x = initPoint.x - 20
        nextPoint.y = initPoint.y + 21
        controlPoint1.x = initPoint.x
        controlPoint1.y = initPoint.y + 31
        controlPoint2.x = initPoint.x - 20
        controlPoint2.y = initPoint.y + 31
        path.addCurve(to: nextPoint, controlPoint1: controlPoint1, controlPoint2: controlPoint2)
        
        return path
    }
    
    private func getTypeAnimation(animation: AnimationTypes)->[CABasicAnimation]{
        let startAnimation = CABasicAnimation(keyPath: "strokeStart")
        let endAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        switch animation {
        case .full:
            startAnimation.fromValue = 1.0
            startAnimation.toValue = 0.0
            
            endAnimation.fromValue = 1.0
        case .cut:
            startAnimation.fromValue = 0
            startAnimation.toValue = 0.8
            
            endAnimation.fromValue = 0.2
            endAnimation.toValue = 1.0
        default:
            break
        }
        
        return [startAnimation,endAnimation]
    }
    
    private func paintBlackCircle() {
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 147.0, y: 369.0, width: 80.0, height: 80.0))

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = ovalPath.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.black.cgColor
        self.layer.addSublayer(shapeLayer)
        
    }
}
