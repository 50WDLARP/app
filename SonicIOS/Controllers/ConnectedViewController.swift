//
//  ConnectedViewController.swift
//  Cool Beans
//
//  Created by Kyle on 11/14/14.
//  Copyright (c) 2014 Kyle Weiner. All rights reserved.
//

import UIKit

class ConnectedViewController: UIViewController, PTDBeanDelegate {

    var connectedBean: PTDBean?

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var sonicView: SonicView!

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Update the name label.
        sonicView.nameLabel.text = connectedBean?.name
        sonicView.connectedBean = connectedBean
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        connectedBean?.readTemperature()
    }

    // MARK: Actions

    func updateAcc(){
        connectedBean?.readTemperature()
        connectedBean?.readAccelerationAxes()
    }

    // MARK: PTDBeanDelegate
    
    func bean(bean: PTDBean!, serialDataReceived data:NSData) {
        let theString:NSString = NSString(data: data, encoding: NSASCIIStringEncoding)!
        let distFloat = theString.floatValue * 340.0 / 2 / 1e6
        
        sonicView.distance.text = distFloat.description
        print(theString)
    }

    // MARK: Helper

    func updatesonicView() {


    }

    func updateBean() {
        connectedBean?.setLedColor(sonicView.containerView.backgroundColor)
    }

}