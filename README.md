# todolist
Assigment Flutter App with Back4App Integration

**Assignment Description:**

In this assignment, we will create a Flutter app that connects to Back4App, a Backend-as-a-Service (BaaS) platform, to manage tasks. we will be responsible for setting up the Back4App backend, creating the Flutter app, and implementing the necessary functionality to interact with the backend.

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

**Application Features**
This task management app allows you to input tasks with titles and descriptions, and it includes a feature for deleting tasks.

**Web Application**

Enter task details:
<img width="1440" alt="Screenshot 2023-11-18 at 8 29 02 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/2e0771ec-da34-43e8-9dfe-49f89101f413">

Add task to the list:
<img width="1440" alt="Screenshot 2023-11-18 at 8 30 46 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/0dc15fed-9c6d-4ba2-af36-e6dbf8c790b5">

Back4App Database:
<img width="1440" alt="Screenshot 2023-11-18 at 8 33 45 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/994731db-74b4-44ee-be68-c937c38d5f80">

Back4App Database after task deleted from the list: 

<img width="652" alt="Screenshot 2023-11-18 at 8 55 56 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/87428cc0-d528-4a73-bced-eb803916d711">

<img width="1440" alt="Screenshot 2023-11-18 at 8 35 01 pm" src="https://github.com/Poonam-31/todolist/assets/33808820/72ce25c6-5515-41c7-b76c-d2e1d60aef6a">


