# IOS13BugWithWindowSafeArea
Bug in ios 13 when minimizing the app in landscape and bringing it back, the safe area insets calculates wrong.

To reproduce:
1) Download the repo.
2) Build.
3) Press "To Landscape Window"
4) Minimize app and expand it back. OR drag the bottom black line that the app would ready to minimize, but dragged back to the normal state.
5) Press "Back to Portrait"
6) Bug occure: Safe area stay from landscape.
