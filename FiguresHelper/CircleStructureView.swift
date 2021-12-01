//
//  CircleStructureView.swift
//  FiguresHelper
//
//  Created by Jerry Dai on 2021-12-01.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored Properties
    //"radius" is the name
    //"Double" is the date type
    //By adding = 15.00      We are just providing a default value
    //INPUT - we need this from the user
    //we want SwiftUI to update the user interface based on what the user selects
    //To do this,we use a special peice of syntax
    //called a "property wrapper"
    //
    //@State
    //
    //This marks the property
    @State var radius: Double = 15.00
    var area:Double {
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                    Text("15.00")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //the syntax of $ sign says to use this property (radius) and BIND IT to this control
                //To "bind" means that when the control changes, the property's value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })

            }
            
                        
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
