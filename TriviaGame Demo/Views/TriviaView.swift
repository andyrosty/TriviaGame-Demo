//
//  TriviaView.swift
//  TriviaGame Demo
//
//  Created by Andrew Acheampong on 11/2/23.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviamanager: TriviaManager
    var body: some View {
    if triviamanager.reachedEnd {
            VStack(spacing: 20){
                Text("Trivia Game")
                    .lilacTitle()
                Text("Congratulations, you completed the game!🥳🎉")
                
                Text("You score \(triviamanager.score) out of \(triviamanager.length)")
                
                Button{
                    Task.init {
                        await triviamanager.fetchTrivia()
                    }
                }label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.943137, green: 0.943434, blue: 0.8470588))
        } else{
        QuestionView()
            .environmentObject(triviamanager)
    }
        }
}

#Preview {
    TriviaView().environmentObject(TriviaManager())
}
