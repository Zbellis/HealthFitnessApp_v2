//
//  InterfaceController.swift
//  HealthFitnessAppV2 WatchKit Extension
//
//  Created by Zachary Ellis on 7/10/22.
//

import WatchKit
import Foundation
import HealthKit

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var currentHRLbl: WKInterfaceLabel!
    var heartRateMeasurementService = HeartRateMeasurementService()
    
   
    @IBAction func runHRStats() {
        _ = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { [self] timer in
            
            currentHRLbl.setText(String(heartRateMeasurementService.currentHeartRate))
        }
    }
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.

    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
