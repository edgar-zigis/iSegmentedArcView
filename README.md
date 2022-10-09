# iSegmentedArcView


Unique progress view with rich customisation options! You can set any number of segments, each individual segment can be customised with custom angles and opacity animation option!
##### Minimum iOS version 11.0

![alt text](https://github.com/edgar-zigis/SegmentedArcView/blob/master/preview.png?raw=true)

### Carthage

```
github "edgar-zigis/iSegmentedArcView" ~> 1.0.0
```
### Cocoapods

```
pod 'iSegmentedArcView', '~> 1.0.0'
```
### Swift Package Manager

```
dependencies: [
    .package(url: "https://github.com/edgar-zigis/iSegmentedArcView.git", .upToNextMajor(from: "1.0.0"))
]
```
### Usage
``` swift
let segmentedArcView = iSegmentedArcView()
segmentedArcView.title = "Outstanding credit"
segmentedArcView.value = "150 €"
segmentedArcView.titleTextColor = .darkGray
segmentedArcView.valueTextColor = .black
segmentedArcView.titleTextFont = .systemFont(ofSize: 20)
segmentedArcView.valueTextFont = .boldSystemFont(ofSize: 55)
segmentedArcView.titleVerticalOffset = 0
segmentedArcView.valueVerticalOffset = 0
segmentedArcView.blinkAnimationSettings = BlinkAnimationSettings(
    minAlpha: 0.4,
    maxAlpha: 1,
    duration: 2
)
segmentedArcView.segments = [
    ArcSegment(color: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)),
    ArcSegment(color: UIColor(red: 235/255, green: 63/255, blue: 37/255, alpha: 1)),
    ArcSegment(color: UIColor(red: 239/255, green: 201/255, blue: 86/255, alpha: 1), animate: true),
    ArcSegment(color: UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1))
]
segmentedArcView.useCustomSweepAgles = false
```
### Remarks
It can be used both programmatically and with storyboards. Samples are available at **Tests/iSegmentedArcViewTests**
