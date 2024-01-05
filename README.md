# Flutter Cubit Todo Example

## Overview
This Flutter project demonstrates the use of the Cubit state management library to implement a simple todo application. 
The app displays a list of todo items fetched from a simulated data source and uses different states to manage and display these todos.

## Features
- Fetching and displaying a list of todos.
- State management using Cubit.
- Different states for initialization, loading, success, and error handling.

## Getting Started

### Prerequisites
- Flutter installed on your machine.
- A basic understanding of Flutter and Dart.

### Installation
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/rmpalgo/cubit_todo.git
    ```
2. Navigate to the project directory:
    ```bash
   cd cubit_todo
   ```
3. Get the packages:
```bash
flutter pub get
```

### Running the App
Run the app using the following command:
```bash
flutter run
```


## Project Structure

- `lib/`: Contains the source code of the application.
    - `main.dart`: The entry point of the application.
    - `models/`: Contains models
      - `todo.dart`: Contains model for todo
    - `repository/`: Contains repositories.
            - `todo_repository`: Contains todo repo for API call.
    - `todo/`: Contains the Cubit logic for managing todo states.
      - `views/`
            - `todo_page.dart`: A StatefulWidget that displays the list of todos using Cubit.
      - `cubit\`: contains cubit and state todo
            - `todo_cubit.dart`: Defines the `TodoCubit` class.
            - `todo_state.dart`: Defines the various states used by `TodoCubit`.
      

## Usage
The app has a simple UI with an AppBar and a ListView. Todos are displayed in a list. The UI reacts to the different states of the Cubit:
- Shows a loading indicator when fetching todos.
- Displays the list of todos upon successful fetching.
- Shows an error message if there's a problem fetching the todos.

