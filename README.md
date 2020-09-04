# app_worldee_test 
![alt text](https://www.worldee.com/images/logo/dark-horizontal.svg "worldee.com") 

## Getting Started
This project is a starting point for a worldee application. Before you try to run this app you will need to install [Flutter](https://flutter.dev/) and some IDE e.g. [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/). 

## Prerequisites
It does not really matter how you are going to solve this task, which libraries you will be using or which if any state management pattern. But for better perspective take a look at `flutter_control` [package](https://pub.dev/packages/flutter_control) which we are using in worldee app development.

## Test task 
1. Checkout `f_task` branch 
2. Create page as much similar as possible to [UI design](https://drive.google.com/file/d/1SD4mH6LHpWY7msarvgieB9gouXzGU91t/view?usp=sharing) 
3. Try to implement some animantions e.g. moving line on filters or bottom bar, slivers,... 
4. Connect page to proper test endpoints listed bellow 
5. Implement search and layout change with given API 

## Api endpoints 
* `top-users` -> `GET` www.test.worldee.com/api/profiles/top 
* `top-trips` -> `GET` www.test.worldee.com/api/trips/top 
* `search-users` -> `GET` www.test.worldee.com/api/profiles   | ?name=(query) | &order=(asc,dsc) | &limit=(countOfResults) |
