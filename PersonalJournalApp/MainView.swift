import SwiftUI

struct MainView: View {
    @State var isAddNewNoteClicked: Bool = false
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            TabView {
                
                HomeView().tabItem {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                
                SettingsView().tabItem {
                    VStack{
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                }
            }
            
            Button {
                
                isAddNewNoteClicked = true
                
            } label: {
                Image(systemName: "plus")
                    .font(.title.weight(.semibold))
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .shadow(radius: 4, x: 0, y: 4)
                
            }
            .padding(.bottom, 70)
            .padding(.trailing, 20)
            .sheet(isPresented: $isAddNewNoteClicked){
                AddNewNoteSheet()
                    .presentationDetents([.medium])
            }
            
        }
    }
}

#Preview {
    MainView()
}
