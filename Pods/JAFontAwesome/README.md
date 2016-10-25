JAFontAwesome
===================

Font awesome is, well, awesome. If you don't know about it, [go here](https://github.com/FortAwesome/Font-Awesome), we'll wait. 

This category makes it drop-dead simple to use in iOS.

## Installation
First, you'll need to tell Xcode that you want to include the FontAwesome font.  the font file and add it to your Xcode project.

1. [Download `fontawesome-webfont.ttf`](https://github.com/FortAwesome/Font-Awesome/tree/master/fonts).
2. Drag it into your Xcode project. When prompted, make sure these options are selected: 'Copy items if needed,' 'Create groups,' and there is a tickmark next to your target.
3. In your `Info.plist`, look for `Fonts provided by application` or `UIAppFonts`. If it doesn't exist, add it, making sure that it is an `array`.
4. Add a new string to the `UIAppFonts` array: `fontawesome-webfont.ttf`.
	
Next, assuming CocoaPods is already installed, simply add JAFontAwesome to your podfile and then run `pod update`:

	pod 'JAFontAwesome'

If you need to install CocoaPods, [go here](https://guides.cocoapods.org/using/getting-started.html).

Finally, add the `NSString+FontAwesome` category to the project:

```objc
#import "NSString+FontAwesome.h"
```

##Usage

First, let's create a label and define the size and font:
```objc
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
label.font = [UIFont fontWithName:kFontAwesomeFamilyName size:20];
```
Now, we can use enums to display an icon..

```objc
label.text = [NSString fontAwesomeIconStringForEnum:FAGithub];
```

..or you can reference them by using the class identifiers listed [here](http://fortawesome.github.io/Font-Awesome/cheatsheet/), like so:

```objc
label.text = [NSString fontAwesomeIconStringForIconIdentifier:@"fa-github"];
```	

Enjoy!


License
-------------------

Originally forked from Alex Drone's [ios-fontawesome](https://github.com/alexdrone/ios-fontawesome) and uses the String+FontAwesome.swift addition from [Riz](https://github.com/rsattar/ios-fontawesome). This project also uses the FontAwesome fix made by [Pit Garbe](https://github.com/leberwurstsaft/FontAwesome-for-iOS).

A mention of 'Font Awesome - http://fortawesome.github.com/Font-Awesome' in human-readable source code is considered acceptable attribution (most common on the web). If human readable source code is not available to the end user, a mention in an 'About' or 'Credits' screen is considered acceptable (most common in desktop or mobile software.)