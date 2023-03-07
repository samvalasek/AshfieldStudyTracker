//
//  LoginView.swift
//  AshfieldStudyTracker
//
//  Created by Sam Valasek on 06/03/2023.
//

import Foundation
import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack { // Content on Gradient Background
                LinearGradient(gradient: Gradient(colors: [Color(.sRGB, red: 221/255, green: 55/255, blue: 49/255), .blue]), startPoint: .bottomLeading, endPoint: .topTrailing)
                    .ignoresSafeArea()
                VStack {
                    Image("ASTLogoRedWhiteBg") // AST Logo Image
                        .resizable()
                        .frame(width: 125.0, height: 125.0)
                        .shadow(radius: 10)
                    Text("Ashfield Study Tracker") //Additional Attributes, sets the font, font weight to bold and colour to white.
                        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        }
                
                ScrollView {
                }
                    }
            ZStack { // Content on White Background
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color.white)
                    .frame(height: (UIScreen.main.bounds.height) * 0.28)
                VStack(spacing: 15) {
                    Button { // Sign in with QR code button
                        // to do
                    } label: {
                        HStack {
                            Image(systemName: "qrcode.viewfinder")
                            Text("Sign in with QR code")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(Color.white)
                        .frame(width:300, height: 56)
                        .background(Color.black)
                        .cornerRadius(CGFloat(10))
                        .shadow(radius: 10)
                        
                    }
                    Button { // FAQ and About Page
                        // to do
                    } label: {
                        HStack {
                            Image(systemName: "lifepreserver")
                                .foregroundColor(Color.red)
                            Text("Support and FAQ")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(Color.black)
                        .frame(width:300, height: 56)
                        .background(Color.white)
                        .cornerRadius(CGFloat(10))
                        .shadow(radius: 10)
                        
                    }
                    
                }
            }
            Text("Version v0.0.1, developed by Sam Valasek.")
                .foregroundColor(Color.black)
                .font(.footnote)
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.white)
                .ignoresSafeArea()
                
        }
        .scaledToFill()
    }
}

struct LoginView_preview: PreviewProvider { // Provides Previews in XCode
    static var previews: some View {
        LoginView()
    }
}
