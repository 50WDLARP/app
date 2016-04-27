//
//  SonicView.swift
//  Cool Beans
//
//  Created by Kyle on 11/14/14.
//  Copyright (c) 2014 Kyle Weiner. All rights reserved.
//

import UIKit

class SonicView: UIView {
    
    var connectedBean: PTDBean?
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distance : UILabel!

    @IBOutlet weak var back_button: UIButton!
    @IBOutlet weak var tag_button: UIButton!
    @IBOutlet weak var castle_button: UIButton!
    @IBOutlet weak var play_button: UIButton!
    @IBOutlet weak var pause_button: UIButton!
    
    @IBAction func Back(sender: UIButton) {
        print("Back")
        sender.hidden = true
        castle_button.hidden = false
        tag_button.hidden = false
        play_button.hidden = true
    }
    
    
    @IBAction func Tag(sender: UIButton) {
        print("Tag")
        sender.hidden = true
        castle_button.hidden = true
        play_button.hidden = false
        back_button.hidden = false
    }
    
    @IBAction func Castle(sender: UIButton) {
        print("Castle")
        /*sender.hidden = true
        tag_button.hidden = true
        play_button.hidden = false
        back_button.hidden = false*/
    }
    
    @IBAction func Play(sender: UIButton) {
        print("Play")
        sender.hidden = true
        back_button.hidden = true
        pause_button.hidden = false
        connectedBean!.sendSerialData("T".dataUsingEncoding( NSUTF8StringEncoding))
    }
    
    
    @IBAction func Pause(sender: UIButton) {
        print("Pause")
        sender.hidden = true
        play_button.hidden = false
        back_button.hidden = false
    }
    
    // MARK: Lifecycle

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let bundle = NSBundle(forClass: self.dynamicType)
        self.addSubview(bundle.loadNibNamed("SonicView", owner: self, options: nil)[0] as! UIView)
        //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];
    }

}
