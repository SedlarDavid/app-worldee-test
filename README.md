# app_worldee_test 
![alt text](https://www.worldee.com/images/logo/dark-horizontal.svg "worldee.com") 

## Getting Started
This project containes test task for starting worldee developers. Before you try to run this app you will need to install [Flutter](https://flutter.dev/) and some IDE e.g. [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/). 

## Prerequisites
It does not really matter how you are going to solve this task, which libraries you will be using or which if any state management pattern. But for better perspective take a look at `flutter_control` [package](https://pub.dev/packages/flutter_control) and `mobx` [package](https://pub.dev/packages/mobx) which we are using in worldee app development.

## Test task 
1. Checkout `f_firstCharOfFirstName_lastName` branch (e.g `f_d_sedlar`)
2. Create page as much similar as possible to [UI design](https://xd.adobe.com/view/55a9858f-2dd0-4dff-af48-e236037aa575-00fa/) 
3. Try to implement some animantions e.g. moving line on filters or bottom bar, slivers,... 
4. Connect page to proper test endpoints listed bellow 
5. Implement search and layout change with given API 
6. Create PR

## Api endpoints 
* `top-users` -> `GET` www.test.worldee.com/api/profiles/top 
* `top-trips` -> `GET` www.test.worldee.com/api/trips/top 
* `search-users` -> `GET` www.test.worldee.com/api/profiles   | ?name=(query) | &order=(asc,dsc) | &limit=(countOfResults) |
