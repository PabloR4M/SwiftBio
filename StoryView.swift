import SwiftUI

struct StoryView: View {
    // carrusel
    let timer = Timer.publish(every: 20, on: .main, in: .common).autoconnect()
    @State private var tabSeleccionado = 0
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple.opacity(0.1), Color.blue.opacity(0.05)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 35) {
                    
                    //Frase
                    Group{
                        VStack(spacing: 15) {
                            Image(systemName: "quote.opening")
                                .font(.system(size: 40))
                                .foregroundColor(.purple.opacity(0.5))
                            
                            Text("No dices nada para no entrar en conflicto")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Text("Pero vives en conflicto por no decir nada")
                                .font(.title2)
                                .italic()
                                .foregroundColor(.secondary)
                        }
                        .multilineTextAlignment(.center)
                        .padding( 30)
                        .frame(maxWidth: .infinity)
                        .background(.ultraThinMaterial)
                        .background(Color.white.opacity(0.15))
                        .overlay(
                            VStack {
                                Rectangle().frame(height: 1).foregroundColor(Color.white.opacity(0.5))
                                Spacer()
                                Rectangle().frame(height: 1).foregroundColor(Color.white.opacity(0.5))
                            }
                        )
                        .padding(.top, 1)
                    }
                    
                    // Lo demas
                    Group{
                        TabView(selection: $tabSeleccionado) {
                            
                            tarjetaCarrusel(
                                icono: "",
                                titulo: "Mi Carrera",
                                descripcion: "Soy estudiante de Tecnologias del Software, en FIME. Me gusta aprender cómo funcionan las cosas y programar."
                            )
                            .tag(0)
                            
                            tarjetaCarrusel(
                                icono: "✨",
                                titulo: "Sobre Mi",
                                descripcion: "Me considero una persona creativa y me gustan las artes. Creo que cualquier cosa que pueda expresar una emocion es una forma de arte."
                            )
                            .tag(1)
                            
                            tarjetaCarrusel(
                                icono: "🔎",
                                titulo: "Dato Curioso",
                                descripcion: "Soy una persona nocturan y sobrevivo a base de cafe :)"
                            )
                            .tag(2)
                        }
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(height: 280)
                        .onReceive(timer) { _ in
                            withAnimation(.easeInOut(duration: 0.8)) {
                                tabSeleccionado = (tabSeleccionado + 1) % 3
                            }
                        }
                        
                        Divider()
                        
                        // foto polaroid
                        VStack {
                            Image("me-camera")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 250, height: 250)
                                .clipped()
                            
                            Text("Recientemente despertó mi interés por la fotografía y comencé a aprender.")
                                .font(.caption)
                                .italic()
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding(.top, 10)
                                .padding(.bottom, 15)
                                .padding(.horizontal, 10)
                        }
                        .frame(width: 270)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 5)
                        .padding(.bottom, 60)
                        
                    }
                    .frame(maxWidth: 800)
                        
                }
            }
        }
    }
    
    // funcionbes para carrusel
    func tarjetaCarrusel(icono: String, titulo: String, descripcion: String) -> some View {
        VStack(spacing: 15) {
            Text(icono)
                .font(.system(size: 50))
                .padding(.bottom, -10)
            
            Text(titulo)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(descripcion)
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)
                .padding(.horizontal, 25)
        }
        .padding(30)
        .padding(.top, -30)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.ultraThinMaterial)
        .background(Color.white.opacity(0.15))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.5), lineWidth: 1)
        )
        .padding(.horizontal, 25)
        .padding(.bottom, 45)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
