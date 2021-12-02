//
//  CylinderView.swift
//  FiguresHelper
//
//  Created by Lillian Yang on 2021-12-01.
//

import SwiftUI

struct CylinderView: View {
    
    @State var radius: Double = 8.0
    @State var height: Double = 7.0
    
    var surfaceArea: Double {
        return (Double.pi*radius*radius) + (Double.pi*2*radius*height)
    }
    
    var volume: Double {
        (Double.pi*radius*radius) * height
    }
    
    var body: some View {
        
        VStack (alignment: .leading){
            Text("Find the volume and surface area of your trapezoid by adjusting the sliders...")
                .padding(10)
            
            Group{
            HStack{
                Spacer()
                
                VStack{
                    Text("Radius:")
                            .bold()
                    Text("\(radius)")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            Slider(value: $radius,
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
                .padding()
                
            }
            
            Group{
            HStack{
                Spacer()
                
                VStack{
                    Text("Height:")
                            .bold()
                    Text("\(height)")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            Slider(value: $height,
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
                .padding()
                
            }
            
            Group{
            Text("Surface Area:")
                .bold()
                .font(.title2)
                .padding(10)
            
            Text("\(surfaceArea) square units")
                .padding(10)
                .font(.title)
                
                Text("Volume:")
                    .bold()
                    .font(.title2)
                    .padding(10)
                
                Text("\(volume) cube units")
                    .padding(10)
                    .font(.title)
                
            }
        }
        .navigationTitle("Cylinder")
    }
        
}

struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CylinderView()
        }
        
    }
}
