# todolist
Assignmet Flutter App with Back4App Integration

**Assignment Description:**

In this assignment, we will create a Flutter app that connects to Back4App, a Backend-as-a-Service (BaaS) platform, to manage tasks. we will be responsible for setting up the Back4App backend, creating the Flutter app, and implementing the necessary functionality to interact with the backend.

**Assignment Steps:**

# Set Up Back4App
To initiate the Back4App setup process, we can refer to the guidelines provided at https://www.back4app.com/docs/get-started/new-parse-app.

<img width="1438" alt="Screenshot01" src="https://github.com/Poonam-31/todolist/assets/33808820/1ec9ce4b-e375-4d98-8d2a-f62ac8a43db2">

# Flutter Setup
To initiate the Flutter setup process, we can refer to the guidelines provided at https://docs.flutter.dev/get-started/install.
I utilized Visual Studio Code for completing this assignment.
1. Install Flutter and Dart extensions in VSCode.
2. Open VSCode, create a new Flutter project using the command: Flutter: New Project.
   
   <img width="1440" alt="Screenshot03" src="https://github.com/Poonam-31/todolist/assets/33808820/49b0b159-5570-4a11-b701-e8ec3151051f">

4. Navigate to the project folder in VSCode.
5. Open pubspec.yaml, add required dependencies, and run flutter pub get.
6. Connect a device or use an emulator.
7. Press F5 or run the command: flutter run to launch and test your Flutter app.
   
   <img width="1440" alt="Screenshot05" src="https://github.com/Poonam-31/todolist/assets/33808820/0b26e9af-679d-4209-a205-fad291d9186b">

Established connectivity between the Flutter application and the Back4App backend using secure secret keys.

To allow the application to securely connect to the Back4App servers, you must provide the Parse SDK with the application credentials.

The connection requires updating the string values with your Application Id, Client key, and Server URL.

Locate your Application Id and Client Key credentials navigating to your app Dashboard > App Settings > Security & Keys.

<img width="1440" alt="Screenshot02" src="https://github.com/Poonam-31/todolist/assets/33808820/11e12e19-d336-4f25-9a10-0391a661f8e0">

Copy these credentials and replace in main.dart.

keyApplicationId = Application Id


keyClientKey = Client Key

It should look like this:

<img width="594" alt="Screenshot 2023-11-18 at 7 21 03 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/c3bafdd1-7123-471e-934e-83865382c00d">
