//
//  ViewController.swift
//  AppEventCount
//
//  Created by Tshaka Lekholoane on 07/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    var resignActiveCount = 0
    var enteredBackgroundCount = 0
    var enteredForegroundCount = 0
    var becameActiveCount = 0
    var terminatedCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateView()
    }
    
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) time(s)."
        willResignActiveLabel.text = "applicationWillResignActive has been called \(resignActiveCount) times."
        didEnterBackgroundLabel.text = "applicationDidEnterBackground has been called \(enteredBackgroundCount) times."
        willEnterForegroundLabel.text = "applicationWillEnterForeground has been called \(enteredForegroundCount) times."
        didBecomeActiveLabel.text = "applicationDidBecomeActive has been called \(becameActiveCount) times."
        willTerminateLabel.text = "applicationWillTerminate has been called \(terminatedCount) times."
    }


}

