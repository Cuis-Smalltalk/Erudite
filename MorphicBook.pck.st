'From Cuis 5.0 of 7 November 2016 [latest update: #3584] on 22 January 2019 at 8:06:27 pm'!
'Description Please enter a description for this package'!
!provides: 'MorphicBook' 1 3!
SystemOrganization addCategory: #MorphicBook!


!classDefinition: #CrossMorph category: #MorphicBook!
Morph subclass: #CrossMorph
	instanceVariableNames: 'color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphicBook'!
!classDefinition: 'CrossMorph class' category: #MorphicBook!
CrossMorph class
	instanceVariableNames: ''!


!CrossMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 19:39:17'!
drawOn: aCanvas
	
	| crossHeight crossWidth horizontalBar verticalBar |
	
	crossHeight := self morphHeight / 3.0.
	crossWidth := self morphWidth / 3.0.
	horizontalBar := self morphBounds insetBy: 0 @ crossHeight.
	verticalBar := self morphBounds insetBy: crossWidth @ 0.
	aCanvas fillRectangle: horizontalBar color: self color.
	aCanvas fillRectangle: verticalBar color: self color! !

!CrossMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 19:56:16'!
initialize

	super initialize.

	color _ Color orange.
	self morphExtent: self minimumExtent! !

!CrossMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 19:55:38'!
minimumExtent

	^ 200@200! !

!CrossMorph methodsFor: 'as yet unclassified' stamp: 'MM 1/22/2019 19:45:48'!
morphContainsPoint: aPoint

	| crossHeight crossWidth horizontalBar verticalBar |

	crossHeight := self morphHeight / 3.0.
	crossWidth := self morphWidth / 3.0.
	horizontalBar := self morphBounds insetBy: 0 @ crossHeight.
	verticalBar := self morphBounds insetBy: crossWidth @ 0.
	^ (horizontalBar containsPoint: aPoint) or: [ verticalBar
		containsPoint: aPoint ]! !

!CrossMorph methodsFor: 'accessing' stamp: 'MM 1/22/2019 19:49:55'!
color
	^ color! !

!CrossMorph methodsFor: 'accessing' stamp: 'MM 1/22/2019 19:49:47'!
color: anObject
	"Set the value of color"

	color _ anObject! !

!EruditeBook class methodsFor: '*MorphicBook' stamp: 'MM 1/22/2019 20:02:15'!
morphicBook

<book: 'Morphic Book'>

^(EruditeBook basicNew title: 'Morphic Book'; sections: ((OrderedCollection new) add: (EruditeBookSection basicNew title: 'Introduction'; document: ((EruditeDocument contents: '!!!! Morphic

Morphic is the name given to Cuis graphical interface. Morphic is written in Smalltalk, so it is fully portable between operating systems. As a consequence, Cuis looks exactly the same on Unix, MacOS and Windows. What distinguishes Morphic from most other user interface toolkits is that it does not have separate modes for composing and running the interface: all the graphical elements can be assembled and disassembled by the user, at any time. (We thank Hilaire Fernandes for permission to base this chapter on his original article in French.)') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'The history of Morphic'; document: ((EruditeDocument contents: '!!!! The history of Morphic

Morphic was developed by John Maloney and Randy Smith for the Self programming language, starting around 1993. Maloney later wrote a new version of Morphic for Squeak, but the basic ideas behind the Self version are still alive and well in Pharo Morphic: directness and liveness. Directness means that the shapes on the screen are objects that can be examined or changed directly, that is, by clicking on them using a mouse. Liveness means that the user interface is always able to respond to user actions: information on the screen is continuously updated as the world that it describes changes. A simple example of this is that you can detach a menu item and keep it as a button.
Bring up the World Menu and meta-click once on it to bring up its morphic halo, then meta-click again on a menu item you want to detach, to bring up that item&#8217;s halo. (Recall that you should set halosEnabled in the Preferences browser.) Now drag that item elsewhere on the screen by grabbing the black handle (see Figure 13.1), as shown in Figure 13.2.

All of the objects that you see on the screen when you run Pharo are Morphs, that is, they are instances of subclasses of class Morph . Morph itself is a large class with many methods; this makes it possible for subclasses to implement interesting behaviour with little code. You can create a morph to represent any object, although how good a representation you get depends on the object!!

To create a morph to represent a string object, execute the following code:

[[[(StringMorph contents:''Morph'') openInHand]]] doIt

This creates a Morph to represent the string ''Morph'' , and then opens it (that is, displays it) in the world, which is the name that Pharo gives to the screen. You should obtain a graphical element (a Morph ), which you can manipulate by meta-clicking.

Of course, it is possible to define morphs that are more interesting graphical representations than the one that you have just seen. The method asMorph has a default implementation in class Object class that just creates a String-Morph . So, for example, Color tan asMorph returns a StringMorph labeled with the result of Color tan printString . Let&#8217;s change this so that we get a coloured rectangle instead.

[[[RectangleLikeMorph new color: Color blue; openInWorld]]] doIt') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Manipulating morphs'; document: ((EruditeDocument contents: '!!!! Manipulating morphs

Morphs are objects, so we can manipulate them like any other object in Pharo: by sending messages, we can change their properties, create new subclasses of Morph, and so on.
Every morph, even if it is not currently open on the screen, has a position and a size. For convenience, all morphs are considered to occupy a rectangular region of the screen; if they are irregularly shaped, their position and size are those of the smallest rectangular box that surrounds them, which is known as the morph&#8217;s bounding box, or just its bounds. The position method returns a Point that describes the location of the morph&#8217;s upper left corner (or the upper left corner of its bounding box). The origin of the coordinate system is
the screen&#8217;s upper left corner, with y coordinates increasing down the screen and x coordinates increasing to the right. The extent method also returns a point, but this point specifies the width and height of the morph rather than a location.

[[[joe := RectangleLikeMorph new color: Color blue.
joe openInWorld.
bill := RectangleLikeMorph new color: Color red.
bill openInWorld.
]]] doIt

Then type joe position and then Print it. To move joe, execute repeatedly:

[[[joe morphPosition: joe morphPosition + (10@3)]]] doIt

It is possible to do a similar thing with size. joe extent answers joe''s size; to have joe grow, execute:

[[[joe morphExtent: (joe morphExtent * 1.1)]]] doIt

To change the color of a morph, send it the color: message with the desired Color object as argument, for instance, [[[joe color: Color orange]]] doIt . To add transparency, try [[[joe color: (Color orange alpha: 0.5)]]] doIt.
To make bill follow joe, you can repeatedly execute this code:
[[[bill morphPosition: (joe morphPosition + (100@0))]]] doIt.
If you move joe using the mouse and then execute this code, bill will move so
that it is 100 pixels to the right of joe.') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Composing morphs'; document: ((EruditeDocument contents: '!!!! Composing morphs

One way of creating new graphical representations is by placing one morph inside another. This is called composition; morphs can be composed to any depth.
You can place a morph inside another by sending the message {addMorph: ::selector} to
the container morph.
Try adding a morph to another one:

[[[ellipse := EllipseMorph new color: Color yellow.
joe addMorph: ellipse
]]] doIt.

If you now try to grab the balloon with the mouse, you will find that you actually grab joe, and the two morphs move together: the balloon is embedded inside joe. It is possible to embed more morphs inside joe. In addition to doing this programmatically, you can also embed morphs by direct manipulation.') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Creating and drawing your own morphs'; document: ((EruditeDocument contents: '!!!! Creating and drawing your own morphs

While it is possible to make many interesting and useful graphical representations by composing morphs, sometimes you will need to create something completely different.
To do this you define a subclass of Morph and override the drawOn: method to change its appearance.
The morphic framework sends the message {drawOn: ::selector} to a morph when it needs to redisplay the morph on the screen. The parameter to {drawOn: ::selector} is a kind of {MorphicCanvas::class}; the expected behaviour is that the morph will draw itself on that canvas, inside its bounds. Let''s use this knowledge to create a cross-shaped morph.
Using the browser, define a new class CrossMorph inheriting from {Morph::class}:

{CrossMorph::class}[embed]

We can define the {CrossMorph>>drawOn: ::method} method like this:

{CrossMorph>>drawOn: ::method}[embed]

Sending the {morphBounds::selector} message to a morph answers its bounding box, which is an instance of {Rectangle::class}. Rectangles understand many messages that create other rectangles of related geometry. Here, we use the {insetBy: ::selector} message with a point as its argument to create first a rectangle with reduced height, and then another rectangle with reduced width.

To test your new morph, execute:

[[[CrossMorph new openInWorld]]] doIt

However, you will notice that the sensitive zone -where you can click to grab the morph- is still the whole bounding box. Let''s fix this.
When the Morphic framework needs to find out which Morphs lie under
the cursor, it sends the message {morphContainsPoint: ::selector} to all the morphs whose bounding boxes lie under the mouse pointer. So, to limit the sensitive zone of the morph to the cross shape, we need to override the {morphContainsPoint: ::selector} method.
Define the following method in class {CrossMorph::class}:

{CrossMorph>>morphContainsPoint: ::method}[embed]

This method uses the same logic as {drawOn: ::selector}, so we can be confident that the points for which containsPoint: answers true are the same ones that will be colored in by drawOn . Notice how we leverage the {morphContainsPoint: ::selector} method in class Rectangle to do the hard work.

Execute the following code:
[[[CrossMorph new openInWorld;
morphBounds: (0@0 corner: 200@200);
color: (Color blue alpha: 0.4)]]] doIt') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); add: (EruditeBookSection basicNew title: 'Interaction and animation'; document: ((EruditeDocument contents: '!!!! Interaction and animation

To build live user interfaces using morphs, we need to be able to interact with them using the mouse and keyboard. Moreover, the morphs need to be able respond to user input by changing their appearance and position; - that is, by animating themselves.

!!!!!! Mouse events

When a mouse button is pressed, Morphic sends each morph under the mouse pointer the message {handlesMouseDown: ::selector}. If a morph answers true , then Morphic immediately sends it the {mouseButton1Down:localPosition: ::selector} message; it also sends the {mouseButton1Up:localPosition: ::selector} message when the user releases the mouse button. If all morphs answer false, then Morphic initiates a drag-and-drop operation. As we will discuss below, the {mouseButton1Down:localPosition: ::selector} and {mouseButton1Up:localPosition: ::selector} messages are sent with an argument - a {MouseEvent::class} object- that encodes the details of the mouse action.
Let''s extend {CrossMorph::class} to handle mouse events. We start by ensuring that all crossMorphs answer true to the {handlesMouseDown: ::selector} message.') images: ((Dictionary new)); yourself); subsections: ((OrderedCollection new)); yourself); yourself); updateParents; yourself)! !
