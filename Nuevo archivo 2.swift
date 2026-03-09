import SwiftUI

struct FavoriteView: View{
    var body: some View{
        ScrollView{
            VStack{
                Text("Favoritos")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top,40)
                
                HStack{
                    Text("Pasatiempos")
                        .font(.title2)
                    Spacer()
                }
                .padding([.top, .leading])
                
                ScrollView(.horizontal){
                    HStack(spacing: 30){
                        Text("🎸")
                            .font(.system(size:40))
                        Text("📸")
                            .font(.system(size:40))
                        Text("🎧")
                            .font(.system(size:40))
                        Text("🎮")
                            .font(.system(size:40))
                        Text("🎨")
                            .font(.system(size:40))
                    }
                }
                .padding()
                Divider()
                
                HStack{
                    Text("Comidas")
                        .font(.title2)
                    Spacer()
                }
                .padding([.top, .leading])
                
                ScrollView(.horizontal){
                    HStack(spacing: 30){
                        Text("🥭")
                            .font(.system(size:40))
                        Text("🌮")
                            .font(.system(size:40))
                        Text("🥜")
                            .font(.system(size:40))
                    }
                }
                .padding()
                Divider()
                
                DisclosureGroup{ //Desplegable
                    HStack(spacing:30){
                        Color.purple
                            .frame(width: 70, height: 70)
                            .cornerRadius(60)
                        Color.green
                            .frame(width: 70, height: 70)
                            .cornerRadius(60)
                        
                    }
                    .padding(.vertical)
                    
                } label: {
                    Text("Colores")
                        .font(.title2)
                }
            }
        }
    }
}
struct FavoriteView_Previews: PreviewProvider{
    static var previews: some View{
        FavoriteView()
    }
}
