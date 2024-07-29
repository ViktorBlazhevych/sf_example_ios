
import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack(spacing: 20){
           
            Text(Localizations.MainScreen.titleScreen);
            Text(Localizations.MainScreen.helloUser.replacingOccurrences(of: "{USER}", with: "Alissa Moon"));
            Text(Localizations.MainScreen.yourTodayTask);
            Button(Localizations.MainScreen.Buttons.details) {
                showingAlert = true
            }
        
        }
        .padding()
        .alert(Localizations.SecondScreen.titleScreen,
               isPresented: $showingAlert) {
            Button(Localizations.SecondScreen.Buttons.later ) { }
                }
                message: {
                    Text(Localizations.SecondScreen.taskDescription)
                }
    }
}
