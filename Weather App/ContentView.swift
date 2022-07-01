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
            
            VStack{
                
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
