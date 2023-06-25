What is state management?
ans- State management in Flutter refers to the management and manipulation of data and behavior within an application, with various approaches such as StatefulWidget, Provider, BLoC, MobX, Redux, and GetX.




step-1
* add provider package in your code

 - flutter pub add provider

step-2
* create a provider class

- provider.dart
eg:- class A with ChangeNotifier{}

step-3
* initiaize our provider(wrap your material app using provider)

- main.dart
eg:- ChangenNotifierProvider(create:(context)=>A(),child:MaterialApp())

step-4
*then call it in your ui
eg:-Text(Provider.of<A>(context).name)


Assignment

1- Write counter app using provider as a statemanagment?
2-create a ui that contain three text , each text should be change on a button click?
hint:- MultiProvider