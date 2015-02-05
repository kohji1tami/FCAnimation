How to Use
==========
Drag and Drop `FCAnimation.swift` to your project after write following code where you want to animate.

```swift
FCAnimation().performAnimation(view, duration: 0.5, delay: 0.5, type: .Pop)
```

`FCAnimationType` now has below Types.

```swift
enum FCAnimationType {
        case BounceLeft
        case BounceRight
        case BounceUp
        case BounceDown
        case FadeIn
        case FadeOut
        case ZoomIn
        case ZoomOut
        case Pop
        case Stretch
        case Shake
    }
```

LICENSE
=======
FCAnimation is available under the MIT license. See the LICENSE file for more info.

