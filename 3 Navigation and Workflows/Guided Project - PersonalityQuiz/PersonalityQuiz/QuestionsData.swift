//
//  QuestionsData.swift
//  PersonalityQuiz
//
//  Created by Tshaka Lekholoane on 04/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: Role
}

enum Role: String {
    case Harvey = "Harvey Specter", Louis = "Louis Litt", Rachel = "Rachel Zane", Mike = "Mike Ross"
    
    var definition: String {
        switch self {
        case .Harvey:
            return "Your bold approach and complete confidence in yourself make you a match for Harvey. Like Harvey, you're great at what you do and you know it. That can come off as a little arrogant to some people, but even if you don't bring your detractors around (which is rare), almost everyone comes to respect your strong moral code, even if you don't like to admit it's there. Just try to remember that there's nothing wrong with showing that you actually care about something other than yourself."
        case .Louis:
            return "Yup, you're a classic Louis - smart, talented, driven, and completely obsessed with getting the recognition you think you've been denied. There are very few lines you won't cross in pursuit of a win, but when that includes being a bully and throwing people under the bus it tends to come back and bite you in the butt. The problem is you're so obsessed with demonstrating your greatness that you can't help but set yourself up for failure. Smart and driven as you may be, tone down the entitlement and be content to share the victory every once in a while!"
        case .Rachel:
            return "Yes, you're a Rachel. Smart, industrious and committed to what you do, but you deserve better. You probably already know this, but you're not willing to cheat to get ahead, even if you've seen others do it. You think of yourself as smart, but being held back has sapped your confidence a little and you don't always stand up for yourself. You need to realize that it's ok to go after what you want. Remember, no one ever got ahead without being bold from time to time."
        case .Mike:
            return "You're definitely a Mike: a reformed underachiever who's vast potential is limited only by your own hang-ups. You've got big talent and a bigger heart, and you admit when you screw up and always work to fix your mistakes. You just need to remember that having the tools to succeed isn't enough if you're not sure if you want to use them."
        }
    }
}
