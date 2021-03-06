//
//  ActualContentView.swift
//  FiguresHelper
//
//  Created by Lillian Yang on 2021-12-01.
//

//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Russell Gordon on 2021-11-29.
//
import SwiftUI

struct CircleView: View {
    
    //MARK: Stored properties
    //"radius is the name
    //"Double is the data type
    //By adding = 15.00 we are just providing a default value
    //Input - we need this from the user
    //We want SwiftUI to update the user interface based on what the user selects.
    //To do this, we use a special piece of syntax called a "property wrapper"
    //
    //@State
    //
    //This marks the property as being one that SwiftUI should "watch" for changes
    @State var radius: Double = 15.0
    
    //MARK: Comoputed properties
    
    var area: Double {
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
                    Text("\(String(format:"%.0f", radius) )")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                //constant is the value that shows in the preview
                //The syntax of $ says to use this property (radius) and BIND IT to this control
                //To "bind" means taht when the control changes, the property's value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 1.0,
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
            
            Text("\(String(format: "%.2f", area) ) square units")
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
