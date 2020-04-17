//
//  MainViewManager.swift
//  WhoSaidThatAtTheOffice
//
//  Created by Rafael Galdino on 17/04/20.
//  Copyright © 2020 Rafael Galdino. All rights reserved.
//

import NaturalLanguage

class MainViewManager {
    static let model = TheOfficeClassifier()

    static func predictCharacter(text userInput:String) -> String {
        guard let prediction = try? model.prediction(line_text: userInput) else {
            return "Just a Side Character"
        }
        print(prediction.speakerProbability)
        return prediction.speaker
    }
}
