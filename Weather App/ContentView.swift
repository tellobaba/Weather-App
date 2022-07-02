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
                
                }
                .padding(.bottom, 40)
                    
                    HStack(spacing: 20 ){
                        
                        WeatherView(dayOfWeek: "THUR",
                                    weatherName: "cloud.bolt.rain.fill",
                                    temprature: 18)
                        
                        WeatherView(dayOfWeek: "FRI",
                                    weatherName: "sunset.fill",
                                    temprature: 26)
                        
                        WeatherView(dayOfWeek: "SAT",
                                    weatherName: "thermometer.sun.fill",
                                    temprature: 30)
                        
                        WeatherView(dayOfWeek: "SUN",
                                    weatherName: "sun.max.fill",
                                    temprature: 27)
                        
                        WeatherView(dayOfWeek: "MON",
                                    weatherName: "cloud.rain.fill",
                                    temprature: 21)
                        }
                        
            
                        Spacer()
                
                Button{
                    print("clicked")
                } label: {
                    Text("Change")
                        .frame(width: 250, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: . default))
                        .cornerRadius(20)
                    
                    
                }
                Spacer()
                        
                    }
                    Spacer()
                
                }
            }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView: View {
    
    var dayOfWeek: String
    var weatherName: String
    var temprature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .font(.system(size: 25))
            Image(systemName: weatherName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Text("\(temprature)°")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
    }
}
