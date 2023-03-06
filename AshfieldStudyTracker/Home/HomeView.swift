//
//  HomeView.swift
//  AshfieldStudyTracker
//
//  Created by Sam Valasek on 06/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        let username = "Sam";
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 221/255, green: 55/255, blue: 49/255), .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                    .ignoresSafeArea()
                    .frame(height: 120)
                HStack {
                    Text("Hello " + username + ",")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    Spacer()
                    Circle()
                        .frame(width:60)
                        .ignoresSafeArea()
                    
                }.padding(40)
                    
            }
            Spacer()
            ZStack(alignment: .center) {
                VStack {
                    Button {
                        // t
                    } label: {
                        VStack {
                            Image(systemName: "house")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                                .frame(height: 26)
                                .clipped()
                            Text("Home")
                        }
                        .foregroundColor(Color("AshfieldRed"))
                    }
                    .background() {
                        Rectangle()
                            .background(Material.bar)                    }

                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
