# CelebrusAssessment
The task was to create a single page mobile application that displays news articles from the newsapi

The UI Consists of a list which displays the title of the article, and two buttons, one button reads the title to the user, the other button opens the articles url provided by the API

## Installation ##
Compatible with XCode 14 and above, Can be used with iphone and ipad devices running iOS 17 and later, There seems to be ongoing issues with iphone simulators and using the Speech synthesis, to get around this issue I had to install voices onto the simulator. This was done by going to settings > Accessiblity > Speak selection > Voices > English > English (US) > Fred

## Frameworks ##
SwiftUI
AVFoundation


## Architecture ##
This application uses a MVVM architecture

## Testing ##
This application features unit tests for various scenarios resulting in success or failure of the API call, using mock responses via dummy data json files.

## Extra details ##
There are currently a few bugs with opening the article webpages and searching the api as this is my first experience with querying api's using a search bar, which I aim to resolve soon. 

I have added small test cases to ensure the networking capabilities work effectively given various scenarios.
