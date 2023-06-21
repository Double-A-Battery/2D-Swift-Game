import SwiftUI
struct ContentView: View {
    @State private var hasOffset = false
    @GestureState var dragOffset = CGSize.zero
    @State var position = CGSize.zero
    @State var Xaxis = CGFloat(0)
    @State var Yaxis = CGFloat(0)
    @GestureState var isLongPressed = false
    @State private var counter: Int = 0
    @State private var timer: Timer?
    @State var isLongPressing = false
    var body: some View {
        ZStack{
            Image("PagMan")
                .resizable()
                .frame(width: 1500, height:1500)
                .offset(x: Xaxis, y: Yaxis)
            
            Image("Blue")
                .resizable()
                .frame(width: 10, height: 10)
                .offset(x: 0, y: 0)
            
            Button("UP") {
                if(self.isLongPressing){
                    self.isLongPressing.toggle()
                    self.timer?.invalidate()
                    
                } else {
                Yaxis = Yaxis + 10}
            }
            
            .offset(x: -100, y:250)
            
            Button("DOWN") {
                Yaxis = Yaxis - 10
            }
            .offset(x: -100, y: 350)
            Button("RIGHT") {
                Xaxis = Xaxis - 10
            }
            .offset(x: -40, y:300)
            Button("LEFT") {
                Xaxis = Xaxis + 10
            }
            .offset(x: -160, y:300)
        }
        
    }
}


