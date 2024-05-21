//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Wang, Alyssa on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var yearNum = 2020
     
    @State private var imageStr = ""
    @State private var imageNum = 0
    
    var body: some View {
        VStack {
            
            Text(String(yearNum))
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
                .padding()
            
            Spacer()
            Image("image" + String(imageNum))
                .resizable()
                .scaledToFit()
                .padding()
          
    
            
            Spacer()
            HStack {
                Button("<") {
                    
                    yearNum-=1
                    imageNum-=1
                    
                     if (imageNum == -1) {
                         imageNum = 11
                     }
    
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .padding()
                
                Spacer()
                Button(">") {
                    
                    yearNum+=1
                    imageNum+=1
                    
                     if (imageNum == 12) {
                         imageNum = 0
                     }
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .padding()
                
                
                
              
            
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
