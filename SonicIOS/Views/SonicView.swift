//
//  SonicView.swift
//  Cool Beans
//
//  Created by Kyle on 11/14/14.
//  Copyright (c) 2014 Kyle Weiner. All rights reserved.
//

import UIKit

class SonicView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distance : UILabel!

    @IBOutlet weak var tag_button: UIButton!
    @IBOutlet weak var castle_button: UIButton!
    @IBOutlet weak var play_button: UIButton!
    @IBOutlet weak var pause_button: UIButton!
    
    @IBAction func Back(sender: UIButton) {
        print("Back")
    }
    
    @IBOutlet weak var play_view: UIView!
    
    
    @IBAction func Tag(sender: UIButton) {
        print("Tag")
        sender.hidden = true
        castle_button.hidden = true;
        play_button.hidden = false;
        pause_button.hidden = false;
    }
    
    @IBAction func Castle(sender: UIButton) {
        print("Castle")
        sender.hidden = true
        tag_button.hidden = true
        play_button.hidden = false
        pause_button.hidden = false
    }
    
    @IBAction func Back2(sender: UIButton) {
        print("Back 2")
    }
    
    @IBAction func Play(sender: UIButton) {
        print("Play")
    }
    
    
    @IBAction func Pause(sender: UIButton) {
        print("Pause")
    }
    
    // MARK: Lifecycle

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let bundle = NSBundle(forClass: self.dynamicType)
        self.addSubview(bundle.loadNibNamed("SonicView", owner: self, options: nil)[0] as! UIView)
    }

}
