//
//  ContentView.swift
//  Magic 8 Ball (SwiftUI)
//
//  Created by Eduard Tokarev on 28.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var ballArray = [ #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4")]
    
    var body: some View {
        ZStack {
            VStack {
                Text("Ask Me Anything")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .frame(maxHeight: .infinity)

                Button("Ask") {
                    ballArray.shuffle()
                }
                .font(.system(size: 40))
                .foregroundColor(Color(.systemCyan))
                .frame(width: 115, height: 80, alignment: .center)
                .background(Color(.white))
                .frame(maxHeight: .infinity)
            }
            .ignoresSafeArea()
            
            Image(uiImage: ballArray.randomElement() ?? UIImage())
            
        }
        
        .background(
            Color(.systemCyan)
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
