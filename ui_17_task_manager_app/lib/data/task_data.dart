class TaskData {
  final String title;
  final String description;
  final bool? isTodaysTask;
  List<SubTask> subtasks;
  TaskData(
      {required this.title, required this.description, required this.subtasks,this.isTodaysTask});
}

class SubTask {
  final String title;
  final String description;
  final String deadline;
  bool isCompleted;
  SubTask(
      {required this.title,
      required this.description,
      required this.deadline,
      required this.isCompleted});
}

List<TaskData> taskDataList = [
  TaskData(
      title: "Mobile App",
      description:
          "Creation of app for Indian client with flutter which will have payment integration and smooth animation with amazing User interface",
      subtasks: [
        SubTask(
            title: "UI | UX Design",
            description: "Making a ui design with material components",
            deadline: "Aug 07 2024",
            isCompleted: true),
        SubTask(
            title: "Prototyping",
            description: "Making a rough prototype to understand the design as well as the ux design of the app ",
            deadline: "Aug 12 2024",
            isCompleted: true),
        SubTask(
            title: "App Color Theme",
            description: "Making a color theme for entire app with dynamic interaction",
            deadline: "Aug 16 2024",
            isCompleted: true),
        SubTask(
            title: "Login Screen",
            description: "Developing a login screen with api integration with error handling  ",
            deadline: "Aug 18 2024",
            isCompleted: true),
        SubTask(
            title: "Home Screen",
            description: "Developing a login screen with api integration with error handling ",
            deadline: "Aug 20 2024",
            isCompleted: true),
        SubTask(
            title: "Profile Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Aug 22 2024",
            isCompleted: true),

      ]),
  TaskData(
      title: "Game App",
      isTodaysTask: true,
      description:
      "Creation of app for Uk client including an ui/ux design with  in few days it has to be completed. The client is very important for the future so they has to treated well. One of the projects this company ever had so have to be very care full with everything.",
      subtasks: [
        SubTask(
            title: "UI | UX Design",
            description: "Making a ui design with material components",
            deadline: "Sep 07 2024",
            isCompleted: true),
        SubTask(
            title: "Prototyping",
            description: "Making a rough prototype to understand the design as well as the ux design of the app ",
            deadline: "Sep 12 2024",
            isCompleted: true),
        SubTask(
            title: "App Theme",
            description: "Making a color theme for entire app with dynamic interaction",
            deadline: "Sep 16 2024",
            isCompleted: false),
        SubTask(
            title: "Login Screen",
            description: "Developing a login screen with api integration with error handling  ",
            deadline: "Sep 18 2024",
            isCompleted: false),
        SubTask(
            title: "Home Screen",
            description: "Developing a login screen with api integration with error handling ",
            deadline: "Sep 20 2024",
            isCompleted: false),
        SubTask(
            title: "Profile Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 22 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false)
      ]),
  TaskData(
      title: "Web App",
      description:
      "Creation of Web app for Indian client with React which will have  smooth animation with amazing User interface apart from that this project is need to be completed soon",
      subtasks: [
        SubTask(
            title: "UI | UX Design",
            description: "Making a ui design with material components",
            deadline: "Aug 24 2024",
            isCompleted: true),
        SubTask(
            title: "Prototyping",
            description: "Making a rough prototype to understand the design as well as the ux design of the app ",
            deadline: "Aug 26 2024",
            isCompleted: true),
        SubTask(
            title: "App Color Theme",
            description: "Making a color theme for entire app with dynamic interaction",
            deadline: "Sep 07 2024",
            isCompleted: false),
        SubTask(
            title: "Login Screen",
            description: "Developing a login screen with api integration with error handling  ",
            deadline: "Sep 08 2024",
            isCompleted: false),
        SubTask(
            title: "Home Screen",
            description: "Developing a login screen with api integration with error handling ",
            deadline: "Sep 20 2024",
            isCompleted: false),
        SubTask(
            title: "Profile Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 22 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false)
      ]),
  TaskData(
      title: "Mobile App2",
      isTodaysTask: true,
      description:
      "Creation of app for Indian client with flutter which will have payment integration and smooth animation with amazing User interface",
      subtasks: [
        SubTask(
            title: "UI | UX Design",
            description: "Making a ui design with material components",
            deadline: "Sep 07 2024",
            isCompleted: false),
        SubTask(
            title: "Prototyping",
            description: "Making a rough prototype to understand the design as well as the ux design of the app ",
            deadline: "Sep 12 2024",
            isCompleted: false),
        SubTask(
            title: "App Color Theme",
            description: "Making a color theme for entire app with dynamic interaction",
            deadline: "Sep 16 2024",
            isCompleted: false),
        SubTask(
            title: "Login Screen",
            description: "Developing a login screen with api integration with error handling  ",
            deadline: "Sep 18 2024",
            isCompleted: false),
        SubTask(
            title: "Home Screen",
            description: "Developing a login screen with api integration with error handling ",
            deadline: "Sep 20 2024",
            isCompleted: false),
        SubTask(
            title: "Profile Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 22 2024",
            isCompleted: false),
        SubTask(
            title: "Setting Screen",
            description: "Making a Ui Design with Material components",
            deadline: "Sep 25 2024",
            isCompleted: false)
      ])
];
