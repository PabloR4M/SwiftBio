import SwiftUI

struct HomeView: View{
    var body: some View{
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    Image("rpd-wallpaper")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                        .clipped() 
                    
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple.opacity(0.1), Color.blue.opacity(0.05)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.59)
                }
                .ignoresSafeArea()
                
                
                HStack(alignment: .top, spacing: 30) {
                    
                    VStack(spacing: 0) {
                        Text("Hola, yo soy")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding()
                        
                        Image("me")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 230, height: 230)
                            .clipped()
                            .padding(8)
                            .overlay(Rectangle().stroke(Color.white.opacity(0.5), lineWidth: 5))
                        
                        Text("Pablo Ramos")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.horizontal, 14)
                            .padding(.vertical, 6)
                            .padding()
                        //.background(Color(red: 0.3, green: 0.1, blue: 0.5))
                            .cornerRadius(45)
                        
                        HStack {
                            Image(systemName: "moon.haze")
                                .font(.title3)
                            Text("Dreams can save us")
                                .font(.headline)
                                .fontWeight(.bold)
                            Image(systemName: "moon.haze")
                                .font(.title3)
                        }
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .frame(width: 250) 
                        .background(Color(red: 0.3, green: 0.1, blue: 0.5))
                    }
                    .padding(.horizontal, 20)
                    .background(Color(red: 0.3, green: 0.1, blue: 0.5).opacity(0.4))
                    .cornerRadius(30)
                    
                }
                .padding(.horizontal, 30)
                .offset(y: -geometry.size.height * 0.05)
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
