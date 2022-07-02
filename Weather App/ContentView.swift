//
//  ContentView.swift
//  Weather App
//
//  Created by Oluwatomiwa Olatunji on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow]),
                startPoint: .topLeading,
                           endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                HStack{
                Image(systemName: "location.fill")
                    .foregroundColor(.white)
                    .padding([.top, .leading, .bottom])
                Text("Lagos, Nigeria")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                }
                VStack{
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("26°")
                        .font(.system(size: 70, weight: .heavy))
                        .foregroundColor(.white)
                
                Spacer()
                    
                    HStack{
                        
                        VStack{
                            Text("WED")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.medium)
                            Image(systemName: "cloud.rain.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("21°")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("THUR")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            Image(systemName: "cloud.bolt.rain.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("18°")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("FRI")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.medium)
                            Image(systemName: "cloud.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("26°")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("SAT")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.medium)
                            Image(systemName: "thermometer.sun.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("30°")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        VStack{
                            Text("SUN")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.medium)
                            Image(systemName: "sun.max.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("27°")
                                .font(.title)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        
                    }
                    Spacer()
                
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
