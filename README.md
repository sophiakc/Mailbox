# W3 Project: *Mailbox*

[Project Instructions](http://courses.codepath.com/courses/ios_for_designers/unit/3#!assignment)

[Assets](https://www.dropbox.com/s/t2lw791unh67wel/Mailbox%20Assets.zip)

[Tutorial](https://www.youtube.com/watch?v=JP9jS8-nOvw&feature=youtu.be)

**Mailbox** has been programmatically animated with Swift (iOS).

Purpose of this project: leverage animations and gestures to implement more sophisticated interactions. We're going to use the techniques from this week to implement the Mailbox interactions.

Submitted by: [*Sophia Kecir Camper*](http://www.sophiakc.com)

Total time spent: **25** cumulated hours

## Required User Stories
* [ ] On dragging the message left...
	* [X] Initially, the revealed background color should be gray.
	* [ ] As the reschedule icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
	* [X] After 60 pts, the later icon should start moving with the translation and the background should change to yellow.
		* [X] Upon release, the message should continue to reveal the yellow background. When the animation it complete, it should show the reschedule options.
	* [X] After 260 pts, the icon should change to the list icon and the background color should change to brown.
		* [ ] Upon release, the message should continue to reveal the brown background. When the animation it complete, it should show the list options.
* [X] User can tap to dismissing the reschedule or list options. After the reschedule or list options are dismissed, you should see the message finish the hide animation. [Time spent: ]
* [ ] On dragging the message right... [Time spent: ]
	* [X] Initially, the revealed background color should be gray.
	* [ ] As the archive icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
	* [X] After 60 pts, the archive icon should start moving with the translation and the background should change to green.
		* [ ] Upon release, the message should continue to reveal the green background. When the animation it complete, it should hide the message.
	* [X] After 260 pts, the icon should change to the delete icon and the background color should change to red.
		* [ ] Upon release, the message should continue to reveal the red background. When the animation it complete, it should hide the message.

## Optional User Stories
* [ ] Panning from the edge should reveal the menu
	* [ ] If the menu is being revealed when the user lifts their finger, it should continue revealing
	* [ ] If the menu is being hidden when the user lifts their finger, it should continue hiding
* [ ] Tapping on compose should animate to reveal the compose view
* [ ] Tapping the segmented control in the title should swipe views in from the left or right
* [ ] Shake to undo. [Time spent: ]


## Video Walkthrough

![Mailbox](Mailbox.gif)



## Notes / Challenges encountered while building the app:
I struggle with the Pan Gesture probably due to wrong nesting of uiview and imageview in the storyboard.
I redid the project several times with no success. 
Eventually Charlie gave me an hand and I could make it.



## License

    Copyright [2016] [Sophiakc.com](http://www.sophiakc.com)

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
