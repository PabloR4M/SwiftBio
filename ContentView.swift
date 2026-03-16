import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{//Solo admite etiquetas, texto e imagen
            HomeView()//instancia
                .tabItem{
                    Label("Inicio", systemImage: "house.circle")
                }
            StoryView()//instancia
                .tabItem{
                    Label("Semblanza", systemImage: "questionmark.circle")
                }
            FavoriteView()//instancia
                .tabItem{
                    Label("Gustitos", systemImage: "bookmark.circle")
                }
                
        }
        
    }
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
