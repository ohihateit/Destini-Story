//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var storyText: UILabel!
    
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButton.setBackgroundImage(UIImage(named: "choice1Background"), for: .normal)
        firstButton.setTitleColor(UIColor.white, for: .normal)
        firstButton.titleLabel?.font = .systemFont(ofSize: 18)
        firstButton.titleEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        secondButton.setBackgroundImage(UIImage(named:"choice2Background"), for: .normal)
        secondButton.setTitleColor(UIColor.white, for: .normal)
        secondButton.titleLabel?.font = .systemFont(ofSize: 18)
        storyText.font = .systemFont(ofSize: 21)
        secondButton.titleEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    private func updateUI() {
        let currentStoryPart = storyBrain.getCurrentStoryPart()
        
        storyText.text = currentStoryPart.title
        firstButton.setTitle(currentStoryPart.choice1, for: .normal)
        secondButton.setTitle(currentStoryPart.choice2, for: .normal)
    }
}

