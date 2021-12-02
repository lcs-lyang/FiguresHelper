//
//  ParallelogramView.swift
//  FiguresHelper
//
//  Created by Lillian Yang on 2021-12-01.
//

import SwiftUI

struct TrapezoidView: View {
    @State var height: Double = 6.0
    @State var a: Double = 7.0
    @State var b: Double = 9.0
    
    var area: Double {
        return 0.5 * (a+b) * height
    }
    
    var body: some View {
        
        VStack (alignment: .leading){
            Text("Find the area of the trapezoid my adjusting the sliders...")
                .padding(10)
            
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
            HStack{
                Spacer()
                
                VStack{
                    Text("Side A:")
                            .bold()
                    Text("\(a)")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.blue)
                }
                
                Spacer()
            }
            Slider(value: $a,
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
                    Text("Side B:")
                            .bold()
                    Text("\(b)")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.blue)
                }
               
                Spacer()
            }
            Slider(value: $b,
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
            
            Text("Area:")
                .bold()
                .font(.title2)
                .padding(10)
            
            Text("\(area) square units")
                .padding(10)
                .font(.title)
                
            }
            
            Spacer()
        }
        .navigationTitle("Trapezoid")
        
    }
}

struct TrapezoidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TrapezoidView()
        }
        
    }
}
