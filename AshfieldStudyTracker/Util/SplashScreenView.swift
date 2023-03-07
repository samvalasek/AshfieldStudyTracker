//
//  SplashScreenView.swift
//  AshfieldStudyTracker
//
//  Created by Sam Valasek on 07/03/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var frameSize = 0
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LoginView()
        } else {
            VStack {
                VStack {
                    Image("ASTLogoRedWhiteBg")
                        .resizable()
                        .frame(width: 125, height: 125)
                        .shadow(radius: 10)
                    Text("Ashfield Study Tracker")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                }//vstack
                    .frame(height: UIScreen.main.bounds.height * 0.72)
                    .ignoresSafeArea()
                Spacer()
            } // outer vstack
            .transition(.asymmetric(insertion: .opacity, removal: .opacity))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
