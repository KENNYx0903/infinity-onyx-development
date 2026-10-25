# Freeform edge recovery

The accepted recovery strip is drawn in the same WindowDecorLinearLayout surface as the window, reusing its dots. It is not an independent overlay. The strip is 80% of the original caption thickness, fades over 160 ms, and retains approximately 21 dp visible at the edge.

YouTube uses native surface scale 1 and adjusted density to keep visual/input/global coordinate spaces aligned; other apps retain the prior scale. Commit native bounds after movement, preserve synchronized resize and bottom navigation insets. Removing the bottom inset was a rejected diagnostic experiment.
