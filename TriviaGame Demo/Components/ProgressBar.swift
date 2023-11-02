//
//  ProgressBar.swift
//  TriviaGame Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue:1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                .cornerRadius(10)
                
        Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
                
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}