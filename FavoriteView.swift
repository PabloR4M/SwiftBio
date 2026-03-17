import SwiftUI

struct FavoriteView: View{
    //carrusel automatico
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    @State private var juegoActual = 1
    @State private var libroActual = 1
    
    let listaJuegos = [
        ("Resident Evil CV", "juego1"), ("Resident Evil 7", "juego2"), ("Cyberpunk 2077", "juego3"),
        ("Gow Chains of Olympus", "juego4"), ("Assassins Creed II","juego5"), ("Terraria","juego6"),
        ("Hellblade","juego7"), ("Persona 3","juego8"), ("Metal Gear Peace Walker","juego9"),
        ("The Cave","juego10"), ("GTA IV","juego11")
    ]
    
    let listaLibros = [
        ("La Biblioteca de la Media Noche", "libro4"), ("The Dark Tower", "libro1"),
        ("Farenheit 451", "libro3"), ("The Yellow Sign", "libro2"),
        ("El Horror de Dunwich", "libro5"), ("El Jardin de las Mariposas", "libro6")
    ]
    
    var body: some View{
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color.purple.opacity(0.1), Color.blue.opacity(0.05)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                
                
                
                VStack{
                    Text("Favoritos")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top,40)
                    
                    Group{
                        
                        //PASATIEMPOS
                        HStack{
                            Text("Pasatiempos")
                                .font(.title2)
                                .foregroundStyle(.secondary)
                            Spacer()
                        }
                        .padding([.top, .leading])
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 30){
                                glassEmoji("🎸")
                                glassEmoji("📸")
                                glassEmoji("🎧")
                                glassEmoji("🎮")
                                glassEmoji("🎨")
                            }
                            .padding()
                        }
                        Divider()
                        
                        
                        //COMIDAS FAVORITAS
                        HStack{
                            Text("Comidas")
                                .font(.title2)
                                .foregroundStyle(.secondary)
                            Spacer()
                        }
                        .padding([.top, .leading])
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 30){
                                glassEmoji("🥭")
                                glassEmoji("🌮")
                                glassEmoji("🥜")
                            }
                            .padding()
                        }
                        Divider()
                        
                        
                        //ARTISTAS FAVORITOS
                        HStack{
                            Text("Artistas Favoritos")
                                .font(.title2)
                                .foregroundStyle(.secondary)
                            Spacer()
                        }
                        .padding([.top, .leading])
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 30){
                                artista(name: "Siddhartha", img: "artista1", url: "https://open.spotify.com/intl-es/artist/2aqFBHOpM9uIgBpUsdq09x")
                                artista(name: "The Warning", img: "artista2", url: "https://open.spotify.com/intl-es/artist/2SmW1lFlBJn4IfBzBZDlSh")
                                artista(name: "The Score", img: "artista3", url: "https://open.spotify.com/intl-es/artist/2q3GG88dVwuQPF4FmySr9I")
                                artista(name: "Atarashi Gakko!", img: "artista4", url: "https://open.spotify.com/intl-es/artist/4OfU76YhPU04wlmbVFFgTJ")
                                artista(name: "Kevin Kaarl", img: "artista5", url: "https://open.spotify.com/intl-es/artist/6OBGbSaBUvQtk9wpQfDbOE")
                                artista(name: "Mon Laferte", img: "artista6", url: "https://open.spotify.com/intl-es/artist/4boI7bJtmB1L3b1cuL75Zr")
                            }
                            .padding()
                        }
                        Divider()
                        
                        
                        //LIBROS FAVORITOS DESLEGABLES
                        DisclosureGroup{ //Desplegable
                            ScrollViewReader{ proxy in
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 30) {
                                        ForEach(0..<listaLibros.count, id: \.self) { index in
                                            libro(title: listaLibros[index].0, img: listaLibros[index].1)
                                                .id(index)
                                        }
                                    }
                                    .padding(.top, 20)
                                    .padding(.horizontal, 20) 
                                }
                                .onReceive(timer) { _ in
                                    withAnimation(.easeInOut(duration: 1.0)) { 
                                        if (libroActual == 0){
                                            libroActual = libroActual + 2
                                        } else {
                                            libroActual = (libroActual + 1) % (listaLibros.count - 1)
                                        }
                                        proxy.scrollTo(libroActual, anchor: .center)
                                    }
                                }
                            }
                        } label: {
                            Text("Libros Favoritos")
                                .font(.title2)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(.ultraThinMaterial)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2) 
                        .padding(.horizontal) 
                        .tint(.purple)
                        
                        // VIDEOJUEGOS FAVORITOS DESPLEGABLES
                        DisclosureGroup { //Desplegable
                            ScrollViewReader { proxy in
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 30) {
                                        ForEach(0..<listaJuegos.count, id: \.self) { index in
                                            libro(title: listaJuegos[index].0, img: listaJuegos[index].1)
                                                .id(index)
                                        }
                                    }
                                    .padding(.top, 20)
                                    .padding(.horizontal, 20) 
                                }
                                .onReceive(timer) { _ in
                                    withAnimation(.easeInOut(duration: 1.0)) { 
                                        if (juegoActual == 0){
                                            juegoActual = juegoActual + 2
                                        } else {
                                            juegoActual = (juegoActual + 1) % (listaJuegos.count - 1) 
                                        }
                                        proxy.scrollTo(juegoActual, anchor: .center)
                                    }
                                }                                
                            }
                        } label: { 
                            Text("Videojuegos Favoritos")
                                .font(.title2)   
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(.ultraThinMaterial)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2) 
                        .padding(.horizontal) 
                        .tint(.purple)
                        
                        
                        //COLORES FAVORITOS
                        DisclosureGroup{ //Desplegable
                            HStack(spacing:30){
                                Color.purple
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(60)
                                    .shadow(radius: 3)
                                Color.red
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(60)
                                    .shadow(radius: 3)
                            }
                            .padding(.vertical)
                            
                        } label: {
                            Text("Colores")
                                .font(.title2)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(.ultraThinMaterial)
                        .background(Color.white.opacity(0.15))
                        .cornerRadius(15)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2) 
                        .padding(.horizontal) 
                        .tint(.purple)
                        Divider()
                        
                    }
                    .frame(maxWidth: 850) 
                    
                }
            }
        }
    }
    
    
    
    
    
    // FUNCIONES PARA QUE SE VEA BONITO:)
    func glassEmoji(_ emoji: String) -> some View {
        Text(emoji)
            .font(.system(size: 40))
            .frame(width: 80, height: 80)
            .background(.ultraThinMaterial)
            .background(Color.white.opacity(0.15))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white.opacity(0.5), lineWidth: 1))
    }
    
    
    func artista(name: String, img: String, url: String) -> some View {
        
        //al presionar el artista redirecciona a un link
        Link(destination: URL(string: url) ?? URL(string: "https://open.spotify.com")!) {
            VStack{
                Image(img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .padding(5) 
                    .overlay(Circle().stroke(Color.purple, lineWidth: 3))
                Text(name)
                    .font(.system(size: 12)).fontWeight(.medium)
                    .foregroundColor(.primary) 
            }
        }
    }
    
    
    
    
    func libro(title: String, img: String) -> some View {
        VStack{
            Image(img)
                .resizable()
                .frame(width: 100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
            Text(title)
                .font(.system(size: 11)).lineLimit(2).frame(width: 90)
        }
    }
}



struct FavoriteView_Previews: PreviewProvider{
    static var previews: some View{
        FavoriteView()
    }
}
