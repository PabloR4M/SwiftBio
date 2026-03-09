import SwiftUI

struct StoryView: View{
    var body: some View{
        ScrollView{
            VStack{
                Group{
                        Text("No dices nada para no entrar en conflicto")
                            .font(.largeTitle)
                        Text("Pero vives en conflicto por no decir nada")
                            .font(.largeTitle)
                    
                    Divider()//rayita
                }
                Text("GLOSARIO")
                    .padding([.top, .bottom])
                Text("CONSTANTE: Son objetos de programacion o objetos que son invariables")
                    .padding(.bottom)
                Group{
                    HStack{
                        Text("aqui puedes poner algo gracioso")
                        Image("me-camera")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    }
                }
                Group{
                    Text("Chin Chen Wan Chin")
                        .font(.title)
                        .foregroundColor(.cyan)
                    Text("Quier cafe")
                        .italic()
                    Divider()
                }
            }
            .frame(width:1200, height:500)
        }
    }
}
struct StoryView_Previews: PreviewProvider{
    static var previews: some View{
        StoryView()
    }
}

