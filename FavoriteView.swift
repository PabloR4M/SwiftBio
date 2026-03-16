import SwiftUI

struct FavoriteView: View{
    var body: some View{
        ScrollView{
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
                    
                    ScrollView(.horizontal){
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
                    
                    ScrollView(.horizontal){
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
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 30){
                            artista(name: "Siddhartha", img: "artista1")
                            artista(name: "The Warning", img: "artista2")
                            artista(name: "The Score", img: "artista3")
                            artista(name: "Atarashi Gakko!", img: "artista4")
                            artista(name: "Kevin Kaarl", img: "artista5")
                            artista(name: "Mon Laferte", img: "artista6")
                        }
                        .padding()
                    }
                    Divider()
                    
                    
                    //LIBROS FAVORITOS
                    HStack{
                        Text("Libros Favoritos")
                            .font(.title2)
                            .foregroundStyle(.secondary)
                        Spacer()
                    }
                    .padding([.top, .leading])
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 30){
                            libro(title: "La biblioteca de la media noche", img: "libro4")
                            libro(title: "The Dark Tower", img: "libro1")
                            libro(title: "Farenheit 451", img: "libro3")
                            libro(title: "The Yellow Sign", img: "libro2")
                            libro(title: "El Horror de Dunwich", img: "libro5")
                            libro(title: "El Jardin de las mariposas", img: "libro6")
                        }
                        .padding()
                    }
                    Divider()
                    
                    
                    //COLORES FAVORITOS
                    DisclosureGroup{ //Desplegable
                        HStack(spacing:30){
                            Color.purple
                                .frame(width: 70, height: 70)
                                .cornerRadius(60)
                                .shadow(radius: 3)
                            Color.green
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
                    Divider()
                    
                }
                .frame(maxWidth: 800) 
                
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
    
    func artista(name: String, img: String) -> some View {
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
                .font(.system(size: 11)).lineLimit(2).frame(width: 100)
        }
    }
}

struct FavoriteView_Previews: PreviewProvider{
    static var previews: some View{
        FavoriteView()
    }
}
