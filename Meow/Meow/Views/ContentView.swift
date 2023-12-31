import SwiftUI

struct ContentView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            Image("home")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Welcome to Meow")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Text("The “Adopt a Cat” app for your next fluffy friend")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
        
                Spacer()
                
                NavigationLink(destination: ListView()) {
                    Text("Get Started")
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        .environmentObject(ListViewModel())
    }
}
