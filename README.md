# TriviaGame-Demo 
![App Logo](screenshots/app_logo.png)

## Introduction
TriviaGame-Demo is an engaging iOS trivia game that tests your knowledge on a wide range of topics.
The app fetches trivia questions from the Open Trivia Database API (https://opentdb.com/) and presents them to the user in a fun and interactive way. 


## Features
- Fetches trivia questions from the Open Trivia Database API.
- Multiple categories and difficulty levels to choose from.
- User-friendly interface with engaging animations.
- Keeps track of user scores and progress.

## Screenshots
![Simulator Screenshot - iPhone 15 Pro - 2023-11-03 at 02 32 53](https://github.com/andyrosty/TriviaGame-Demo/assets/16139474/225ba2e4-b2e0-460f-8cb5-34b88c2c6977)
![Simulator Screenshot - iPhone 15 Pro - 2023-11-03 at 02 39 34](https://github.com/andyrosty/TriviaGame-Demo/assets/16139474/a77454fa-b001-43fa-92b8-e26bb5505382)
![Simulator Screenshot - iPhone 15 Pro - 2023-11-03 at 02 39 42](https://github.com/andyrosty/TriviaGame-Demo/assets/16139474/04cf2870-7e40-4d00-80bd-61fb97ac6ceb)
![Simulator Screenshot - iPhone 15 Pro - 2023-11-03 at 02 32 45](https://github.com/andyrosty/TriviaGame-Demo/assets/16139474/b6b45259-a537-4161-be60-704f487ec1b0)




## Trivia Data
The app fetches trivia questions from the Open Trivia Database API. You can modify the API endpoint and parameters in the `TriviaAPI.swift` file to customize the trivia data according to your preferences.

```swift
static let apiURL = "https://opentdb.com/api.php"
