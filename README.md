# question
When drawing a meter-like widget in Processing 2.2.1, I create a series of tick marks, which are the segments of lines radiating from the center of the dial.

When I render the dial in the default java environment, there are some very slight anaomlies.  If you view the image  you can see ticks #133 and #149 (for example) are bit askew from the exected angle.  If I render in javascript, everything is perfect.  Is this a problem in the underlying java graphics library?  (You may need to view the image at full size to see the problem.)


In Java:
![Meter Image](https://github.com/mikeboich/question/blob/master/meter.png)

In the browser:
![Browser Image](https://github.com/mikeboich/question/blob/master/meter-browser.png)

It's not killing me, but for platform intended for artists, I would expect that this would bother some people.

thx

Mike

p.s.  I originally did the drawing by leaving the coordinate system fixed, and calculating the line endpoints as r*sin*(theta), r*cos(theta), and then I changed to just rotating the coordinate system and drawing lines to (r,0), and the image is exactly the same.)