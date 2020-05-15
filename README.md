# IOS Animation

### How we can draw shape?

Swift has classes that help us complete our purpose.

___UIBezierPath:___ This class has some shapes paths like rectangles or ovals. Also you can define your custom path in order to create custom shapes.

___CAShapeLayer:___ The shape which will be drawed must be of this type. You can configure its shape by giving it the path.

___CABasicAnimation & CAAnimationGroup:___ With this class you can define your animation for your shapes.

### Custom shape:

___UIBezierPath class___ let you create any shape using different methods:
    
    ·move: in order to define the init point or a new init point.
    ·addLine: join two points
    .addCurve: Use Bezier curves which have 4 points to define it(init point, end point, firt control point and second control point). [Bezier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve) 

[Resource: UIBezierPath by Apple](https://developer.apple.com/documentation/uikit/uibezierpath)

___CAShapeLayer:___ let you setting custom path of the shape. And different characteristics, like color or shadows. 

    ·.path: Set form of shape
    ·.strokeStart: 
    ·.strokeEnd: 
    ·.fillColor
    ·.strokeColor
    ·.lineWidth
    ·.shadowColor
    ·.shadowRadius
    ·.strokeStart and strokeEnd: [By Apple: "The value in this property indicates the relative point along the path at which to begin stroking while the strokeEnd property defines the end point. A value of 0.0 represents the beginning of the path while a value of 1.0 represents the end of the path."](https://developer.apple.com/documentation/quartzcore/cashapelayer/1521929-strokestart)

For more information: [apple](https://developer.apple.com/documentation/quartzcore/cashapelayer)

___CABasicAnimation & CAShapeLayer:___ You can add a simple basic animation(CABasicAnimation) or you can join different animations(CAShapeLayer).

    ·.fromValue: Defines the value the receiver uses to start interpolation.
    ·.toValue: Defines the value the receiver uses to end interpolation.
    ·.duration: seconds it takes for the animation to finish. 
    ·.autoreverse: complete the path and reverse.
    ·.repeatCount: .infinity or a number of times you want to repeat the animation.

### Installation: 

1. Clone the repositorie.
2. Open the project with XCode and Run.
