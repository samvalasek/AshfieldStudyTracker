//
//  TextCarousel.swift
//  AshfieldStudyTracker
//
//  Created by Sam Valasek on 06/03/2023.
//

import SwiftUI
struct TextCarousel: View {
    var CarouselFacts = [
        "Losing sleep leads to worse memory recall. Your brain stores new information as you sleep, be sure to get plenty of rest.",
        "Make sure to recall new things, your brain loses information if it is not used in a while",
        "Be sure to learn something new. Once you know something, your brain reduces blood flow and this leads to daydreaming."
        ]
    var activeItem = 0;
    var body: some View {
        ScrollView {
            Text(CarouselFacts[activeItem])
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50.0)
        }
    }
}

struct TextCarousel_Previews: PreviewProvider {
    static var previews: some View {
        TextCarousel()
    }
}
