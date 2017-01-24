# Example Project to show how to manually trigger a layout pass on a UIView in iOS

The goal of this sample project is to prove that the call

`anyView.layoutIfNeeded()`

immediately calls the `layoutSubviews()` method on `anyView` if its layout has been invalidated before by calling

`anyView.setNeedsLayout()`.

It's directly related to a question I posted on Stackoverflow:
http://stackoverflow.com/q/41834350/2062785

