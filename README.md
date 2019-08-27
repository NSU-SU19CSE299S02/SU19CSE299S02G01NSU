<p align="center">
  <img width="300" height="300" src="http://old.unb.com.bd/media/imgAll/August2017/BG/NSU-Logo-201709100837.JPG">
</p>
<p align="center" style = "font-family:calibri;font-size:11px" >
Project Name: Middle East Visa Language Translator </br>
Course Number: CSE299</br>
Section: 2</br>
Group: 1</br>
Faculty Name: Shaikh Shawon Arefin Shimon</br>
Semester: Summer 19</br>
Member 1</br>
Name: Md. Shafiqul Islam</br>
NSU ID: 161 0786 042</br>
NSU E-Mail: md.shafiqul@northsouth.edu</br>
Member 2
</br>
Name: Asha Das
</br>
NSU ID: 162 0095 042 
</br>
NSU E-Mail: asha.das@northsouth.edu 
</br>
Git Repository Link
</br>
https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU
</br>
Date Created: 25th June 2019
</br>
</p>


----
![Preview](https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU/blob/master/Project%20Code/Assets/app-icon/ios-marketing.png)
# Visa Scanner

#### A minimal visa scanner application built that will scan the visa and translate the language in English to help users.

Download the Xcode Project From : [Xcode Project](https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU)

![Preview](./visual_designs/show.png)

## Built With
[![Platform](http://img.shields.io/badge/platform-ios-blue.svg?style=flat
)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Firestore](https://img.shields.io/badge/Database-Firestore-yellow)](https://firebase.google.com)

 - [Swift 4](https://swift.org/blog/swift-4-0-released/)
 - [Objective C](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
 - [Firestore](https://firebase.google.com/)

### Documentations
 - [Project Proposal](https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU/blob/master/Documentation/Project%20Proposal.docx)
 - [UML Diagram](https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU/blob/master/Documentation/UML%20Visa.png)

## Walkthrough
### Sign In / Sign Up View

![Preview](./visual_designs/signIn.gif)

The Sign-In/Sign-Up view is pretty straight forward. Component's own states are maintained to display forms. Using google sign in an user can sign in to the app.


### Home View

![Preview](./visual_designs/post.gif)

After a successful sign in or sign up, the user will be directed to the Home view. These view are created using the Xcode(https://developer.apple.com/xcode/) maintained by Swift state. Based on user's sign-in status, the user will be displayed the Home View or the Sign In / Sign Up View.

The Home View is consists of four tabs -

 - The Universal Timeline
 - Create New Post
 - Own Posts
 - Settings

These are swipeable tabs that are created by using the library [react-native-scrollable-tab-view](https://github.com/skv-headless/react-native-scrollable-tab-view). The top navigation bar is a customized one which I hacked from one of the examples of the library.

The "Universal Timeline" component is a scroll view with "pull to refresh" functionality by using the [refresh control](https://facebook.github.io/react-native/docs/refreshcontrol.html). All the data are coming from Firebase NoSQL database. The next "Create New Post" component is used for creating a new post to the timeline. "Own Posts" will display own post count and own posts. Long press on any post from "Own Post" component will alert the user about deleting that post. Lastly, the "Settings" component is used to Sign Out the user or Delete account.


## How to create your own copy of this app?
### Prerequisites
To create an own copy of this application, you have some prerequisites. They are -

 - At first you need an Apple Machine like [macos mojave](https://cleanmymac.macpaw.com/19?campaign=cmmx_search_mojave_lowcpc_en&ci=804997884&adgroupid=59549465256&adpos=1t1&ck=macos%20mojave&targetid=kwd-520276011510&match=p&gnetwork=g&creative=338314487886&placement=&placecat=&accname=cmm&gclid=CjwKCAjw44jrBRAHEiwAZ9igKInZNZVQdjpTSIcqlKnd0LC5kFSyFDtI40RVtKEEjr2YPcRP7_pj2RoCUwEQAvD_BwE).
 - [Xcode](https://developer.apple.com/xcode/) installed on your system.
 - [Swift-4](https://swift.org/blog/swift-4-0-released/) installed on your system. 
 - [Github Desktop](https://desktop.github.com) installed on your system and a Git(https://github.com) account.
 - A google account for having [Firebase Web](https://firebase.google.com/docs/web/setup) configuration.

### Make own copy
First clone the repository using:

    git clone https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU

Then install the necessary dependencies.

At this point you need to have the configurations for a Firebase App. Just go to [Firebase Console](https://firebase.google.com/docs/web/setup) and follow the instructions.
Then run the Xcode server.

Open your emulator and wait until it completely boot up. Then run the app from your local machine.

Now, you have your own copy of this application!

## Path for Future Work
* Add search functionality
* Add unit tests for both backend and frontend
* Ability to change the name and logo of the site from admin panel.
* Make the installation process more interactive
* Add multiple theme support.

## License
[MIT License](https://github.com/ilmoislamnsu/SU19CSE299S02G01NSU/blob/master/LICENSE).




## Credits
I barely create the application. I just created the front end shell and done some integration with firebase. All the credits goes to all library creators and contributors to those libraries. I'm really grateful to all of them.

 - [macos mojave](https://cleanmymac.macpaw.com/19?campaign=cmmx_search_mojave_lowcpc_en&ci=804997884&adgroupid=59549465256&adpos=1t1&ck=macos%20mojave&targetid=kwd-520276011510&match=p&gnetwork=g&creative=338314487886&placement=&placecat=&accname=cmm&gclid=CjwKCAjw44jrBRAHEiwAZ9igKInZNZVQdjpTSIcqlKnd0LC5kFSyFDtI40RVtKEEjr2YPcRP7_pj2RoCUwEQAvD_BwE).
 - [Xcode](https://developer.apple.com/xcode/)
 - [Swift-4](https://swift.org/blog/swift-4-0-released/)
 - [Objective C](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html)
 - [Git](https://github.com)
 - [Firebase](https://firebase.google.com/)
 

Made by [Shafiqul Islam](https://github.com/ilmoislamnsu) and [Asha Das](https://github.com/AshaDas)
Owned by [Shaikh Shawon Arefin Shimon](https://github.com/nsusas3)
