import SwiftUI

struct ContentView: View {
    
    @State var isDragging = false
    @State var position = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
            .frame(width: 250, height: 200)
            .offset(x: position.width, y: position.height)
            .foregroundColor(.blue)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        position = value.translation
                        isDragging = true
                })
                    .onEnded({ value in
                        position = .zero
                        isDragging = false
                    })
            )
    }
}
