//
//  Extensions.swift
//  TriviaGame Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import Foundation
import SwiftUI

extension Text{
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
