import SwiftUI

struct ContentView: View {
    var progress: CGFloat = 0.25// Bind to your user's heart rate value
    
    let outerBarWidth: CGFloat = 200 // Width of the outer bar
    let barHeight: CGFloat = 10 // Height of both bars
    let cornerRadius: CGFloat = 5 // Rounded corner radius
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle() // Gray background bar
                    .foregroundColor(.gray)
                    .frame(width: outerBarWidth, height: barHeight)
                    .cornerRadius(cornerRadius)
                
                // Colored progress bar
                Rectangle()
                    .foregroundColor(.blue) // Change this to your desired color
                    .frame(width: outerBarWidth * progress, height: barHeight)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        // Label showing progress percentage
                        Text("\(Int(progress * 100))%")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                            .position(x: outerBarWidth * progress / 2 - 10, y: barHeight / 2)

                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
