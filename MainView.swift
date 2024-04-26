//
//  MainView.swift
//  Jai Shree Ram
//
//  Created by Omveer Panwar on 02/01/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color(.systemMint).ignoresSafeArea()
            
            VStack(alignment: .leading , spacing: 20) {
                Image("hanuman").resizable().aspectRatio(contentMode: .fit).cornerRadius(10).padding(.all)
                HStack{
                    Text("Jai Shree Ram").font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        
                        Text("Unlimited rating")
                    }.foregroundColor(.orange)
                        .font(.caption)
                    
                    
                    
                }
                Text("Starting my 2024 with the blessings of lord Shree Ram and Hanuman")
                
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }.foregroundColor(.gray)
                    .font(.caption)
                
            }
            .padding()
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 16)
            .padding(.all)
            
        
        }
    }
}

#Preview {
    MainView()
}
