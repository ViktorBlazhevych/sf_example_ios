/*

  Project: Tasks
  
  Date created: 29 July 2024 | 15:07

  Created by StringFly. Copyright © StringFly. All rights reserved.

*/

import Foundation

public struct Localizations {

	public struct  MainScreen {
		/// value: Main App Screen
		public static var titleScreen: String = NSLocalizedString("MainScreen.titleScreen", comment: "")
		/// value: Hello, {USER}
		public static var helloUser: String = NSLocalizedString("MainScreen.helloUser", comment: "")
		/// value: You have more tasks today.
		public static var yourTodayTask: String = NSLocalizedString("MainScreen.yourTodayTask", comment: "")
		public struct  Buttons {
			/// value: Show Tasks
			public static var details: String = NSLocalizedString("MainScreen.Buttons.details", comment: "")
		}
	}
	public struct  SecondScreen {
		/// value: Task Description
		public static var titleScreen: String = NSLocalizedString("SecondScreen.titleScreen", comment: "")
		/// value: **Your tasks for today:**\n- Drink coffee.\n- Use [app.stringfly.app](https://app.stringfly.app) to save your time.\n- Say *thank you*.\n- Grab a _pizza_ and go hang out with friends.
		public static var taskDescription: String = NSLocalizedString("SecondScreen.taskDescription", comment: "")
		public struct  Buttons {
			/// value: Done
			public static var complete: String = NSLocalizedString("SecondScreen.Buttons.complete", comment: "")
			/// value: ..will do Later
			public static var later: String = NSLocalizedString("SecondScreen.Buttons.later", comment: "")
		}
	}
}