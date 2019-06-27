//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Tshaka Lekholoane on 04/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
    
    @IBAction func rangedAnswerButtonPressed() {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed() {
        
        let currentAnswers = questions[questionIndex].answers
        
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        
        nextQuestion()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question \(questionIndex + 1)/7"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        func updateSingleStack(using answers: [Answer]) {
            singleStackView.isHidden = false
            singleButton1.setTitle(answers[0].text, for: .normal)
            singleButton2.setTitle(answers[1].text, for: .normal)
            singleButton3.setTitle(answers[2].text, for: .normal)
            singleButton4.setTitle(answers[3].text, for: .normal)
        }
        
        func updateMultipleStack(using answers: [Answer]) {
            multipleStackView.isHidden = false
            multiSwitch1.isOn = false
            multiSwitch2.isOn = false
            multiSwitch3.isOn = false
            multiSwitch4.isOn = false
            multiLabel1.text = answers[0].text
            multiLabel2.text = answers[1].text
            multiLabel3.text = answers[2].text
            multiLabel4.text = answers[3].text
        }
        
        func updateRangedStack(using answers: [Answer]) {
            rangedStackView.isHidden = false
            rangedSlider.setValue(0.5, animated: false)
            rangedLabel1.text = answers.first?.text
            rangedLabel2.text = answers.last?.text
        }
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    var questions: [Question] = [
        
        Question(text: "You get pulled over for going 56 in a 55 mph zone. How do you handle it?",
                 type: .single,
                 answers: [
                    Answer(text: "Smooth-talk the cop into ripping up the ticket.", type: .Mike),
                    Answer(text: "Try to appeal to the officer's sense of fairness.", type: .Louis),
                    Answer(text: "Point out the stupidity of giving a ticket.", type: .Harvey),
                    Answer(text: "Just take the ticket. Why argue?", type: .Rachel)]),
        
        Question(text: "How much do you enjoy car rides?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I dislike them", type: .Rachel),
                    Answer(text: "I get a little nervous", type: .Louis),
                    Answer(text: "I barely notice them", type: .Mike),
                    Answer(text: "I love them", type: .Harvey)
            ]),
        
        Question(text: "Which activities do you enjoy?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Mudding", type: .Louis),
                    Answer(text: "Cuddling", type: .Rachel),
                    Answer(text: "Reading", type: .Mike),
                    Answer(text: "Music", type: .Harvey)
            ]),
        
        Question(text: "It's your friend's birthday! What do you buy her?",
                 type: .single,
                 answers: [
                    Answer(text: "Something that says you paid a lot of money for this gift.", type: .Harvey),
                    Answer(text: "Something you bought at the last minute.", type: .Mike),
                    Answer(text: "Something she never thought she'd ever actually own.", type: .Louis),
                    Answer(text: "Something you put a lot of time and thought into.", type: .Rachel)]),
        
        Question(text: "What food do you like?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Bagels", type: .Harvey),
                    Answer(text: "Pizza", type: .Mike),
                    Answer(text: "Sushi", type: .Rachel),
                    Answer(text: "Steak", type: .Louis)
                        ]),

        Question(text: "How much do you enjoy a challenge?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I do not", type: .Louis),
                    Answer(text: "Not much", type: .Rachel),
                    Answer(text: "Bring it on", type: .Mike),
                    Answer(text: "I love one", type: .Harvey)
            ]),
        
        Question(text: "How do you feel about lying?",
                 type: .single,
                 answers: [
                    Answer(text: "As long as it's in the service of a good cause.", type: .Harvey),
                    Answer(text: "Lying is like breathing.", type: .Louis),
                    Answer(text: "It makes you uncomfortable.", type: .Rachel),
                    Answer(text: "A lie is just a different side to the story.", type: .Mike)])
    ]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultsSegue" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.responses = answersChosen
        }
    }
}
