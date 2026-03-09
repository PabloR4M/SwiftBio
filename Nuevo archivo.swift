import SwiftUI

struct HomeView: View{
    var body: some View{
        VStack{
            HStack(alignment: .center) {
                Image("me")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(red: 0.1, green: 0.1, blue: 0.5), style: StrokeStyle(lineWidth: 15)))
                    .frame(width: 200, height: 200)
                    .padding(50)
                
                VStack(alignment: .leading, spacing: 8) {
                    Spacer()
                    HStack {
                        Text("Hola, yo soy")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Pablo Ramos")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 14)
                            .padding(.vertical, 6)
                            .background(Color(red: 0.1, green: 0.1, blue: 0.5))
                            .cornerRadius(45)
                    }
                    
                    HStack {
                        Image(systemName: "moon.haze")
                            .foregroundColor(.white)
                            .font(.title2)
                        Text("Dreams can save us")
                            .foregroundColor(.white)
                            .font(.title2)
                        Image(systemName: "moon.haze")
                            .foregroundColor(.white)
                            .font(.title2)
                    }
                }
                .frame(height: 130)
                Spacer() 
            }
            Spacer() 
            Divider()
            
        }
        .padding()
        .background(Image("rpd-wallpaper").opacity(0.5))
        .scaledToFit()
    }
        
}
struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
