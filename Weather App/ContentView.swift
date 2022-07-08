//
//  ContentView.swift
//  Weather App
//
//  Created by Oluwatomiwa Olatunji on 01/07/2022.
//
 
import SwiftUI

struct ContentView: View {
    
@State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView (topColor: isNight ? .black : .blue,
                            bottomColor: isNight ? .gray : .yellow)
            
            VStack {
                HStack{
                CityTextView (cityName: "Lagos, Nigeria", cityIcon: "location.fill")
                }
                VStack{
                   CityWeatherView (cityWeather: "cloud.sun.rain.fill", cityTemp: 26)
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
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change",
                                  textColor: .blue,
                                  backgroundColor: .white)
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

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, .yellow]),
                       startPoint: .topLeading,
                       endPoint: .bottom)
        .ignoresSafeArea()
    }
}

struct CityTextView: View{
    
    var cityName : String
    var cityIcon : String
    var body: some View {
        Image(systemName: cityIcon)
            .foregroundColor(.white)
            .padding([.top, .leading, .bottom])
        Text(cityName)
            .font(.title)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .padding()
    }
}

struct CityWeatherView: View{
    
    var cityWeather : String
    var cityTemp: Int
    var body: some View{
            Image(systemName: cityWeather)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(cityTemp)°")
                .font(.system(size: 70, weight: .heavy))
                .foregroundColor(.white)
    }
}


