//
//  DetailViewController.swift
//  CampusCompanion
//
//  Created by ABDULAZIZ JAMAHALI on 10/14/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
   
    var studentName: String = ""
    var notificationsEnabled: Bool = false
    var selectedRole: String = ""
    var selectedDate: Date = Date()
    var guestCount: Int = 0 // Store incoming guest count

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Campus Events"
         
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        let formattedDate = dateFormatter.string(from: selectedDate)
        
        let notificationStatus = notificationsEnabled ? "on" : "off"
        
     
        messageLabel.textAlignment = .center
        
       
        messageLabel.text = """
        Welcome, \(studentName)! (\(selectedRole))
        Notifications: \(notificationStatus).
        Event: \(formattedDate)
        Guests: \(guestCount)
        """
    }
}
