import SwiftUI

struct MainView: View {
    @State var privateNoteData:[Note] = []
    @State var publicNoteData:[Note] = []
    @State var isAddNewNoteClicked: Bool = false
    
    @State var isPrivate: Bool = false
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            TabView {
                
                HomeView(
                    publicNoteData: $publicNoteData,
                    privateNoteData:  $privateNoteData,
                    isPrivate: $isPrivate
                ).tabItem {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                
                SettingsView(isPrivate: $isPrivate).tabItem {
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
                AddNewNoteSheet(
                    publicNoteData: $publicNoteData,
                    privateNoteData:  $privateNoteData,
                    isAddNewNoteClicked: $isAddNewNoteClicked,
                    isPrivate: $isPrivate
                )
                    .presentationDetents([.medium])
            }
            
        }
    }
}

#Preview {
    MainView()
}
