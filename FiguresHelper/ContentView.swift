//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Lillian Yang on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            
            Text("Radius")
                .padding(5)
            
            HStack{
                Spacer()
                Text("\(25)")
                Spacer()
            }
            
            Slider(value: .constant(25.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            Spacer()
            
        }
        
        .navigationTitle("Circle")
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        
    }
}
