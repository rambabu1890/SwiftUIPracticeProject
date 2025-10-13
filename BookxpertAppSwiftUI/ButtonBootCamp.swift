//
//  ButtonBootCamp.swift
//  BookxpertAppSwiftUI
//
//  Created by Rambabu on 27/06/25.
//

import SwiftUI

struct ButtonBootCamp: View {
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
               
                Button("Button One") {
                    print("Hello wrold One")
                        
                }.foregroundStyle(.white)
                    .fontWeight(.bold)
                
                Button("Button Two") {
                    print("Hello wrold Two")
                }.foregroundColor(.green)
                
                Button {
                    print("Hello world four")
                } label: {
                    Text("Save".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding()
                    
                        .padding(.horizontal, 50)
                        .background(Color.blue
                            .cornerRadius(20))
                        .frame(height: 50)
                }
                
                ButtonFiveAndSix
                
            }
        }
    }

    
    func buttonPressed() {
        print("Button Pressed!")
    }
    var ButtonFiveAndSix:some View {
        VStack(spacing: 20){
            Button {
                print("Hello world five")
            } label: {
                Circle()
                    .fill(Color.white)
                    .shadow(color:.gray, radius: 5)
                    .frame(width: 75, height: 75)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.blue)
                            .font(.largeTitle)                    )
                
            }
            
            
            
            Button {
                buttonPressed()
            } label: {
                Text("Button Six")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 150, height: 50)
                    .background(
                        Capsule()
                            .stroke(style: StrokeStyle(lineWidth: 3))
                            .foregroundColor(.gray)
                        
                    )
            }.disabled(false)
            
        }
    }
    
}

#Preview {
    ButtonBootCamp()
}
