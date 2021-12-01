//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Jerry Dai on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
            Section{
                Text("2D Figures")
                    .font(.title)
                
                List{
                    Text("C")
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
