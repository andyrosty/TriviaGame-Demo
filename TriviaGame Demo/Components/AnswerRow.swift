//
//  AnswerRow.swift
//  TriviaGame Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct AnswerRow: View {
    @EnvironmentObject var triviamanager: TriviaManager
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(hue: 0.71, saturation: 0.094, brightness: 0.1)
    
    var body: some View {
        HStack(spacing: 20){
                Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviamanager.answerSelected ? (isSelected ? Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ?(answer.isCorrect ? green:red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviamanager.answerSelected{
                isSelected = true
                triviamanager.selectAnswer(answer: answer)
            }
            
        }
    }
}

#Preview {
    AnswerRow(answer: Answer(text: "Single", isCorrect: false)).environmentObject(TriviaManager())
}
