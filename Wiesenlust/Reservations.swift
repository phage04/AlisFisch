//
//  Reservations.swift
//  Wiesenlust
//
//  Created by Lyle Christianne Jover on 13/07/2016.
//  Copyright © 2016 Wiesenlust. All rights reserved.
//

import UIKit

class Reservations: UIViewController{
    
    
    
    @IBOutlet weak var bottomLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var peopleTxt: UITextField!
    
    @IBOutlet weak var peopleView: UIView!
    
    @IBOutlet weak var dateTimeTxt: UITextField!
    
    @IBOutlet weak var dateTimeView: UIView!
    
    @IBOutlet weak var mobileTxt: UITextField!
    
    @IBOutlet weak var mobileView: UIView!
    @IBOutlet weak var sendBtn: UIButton!
    
    let userCalendar = NSCalendar.currentCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem =
            UIBarButtonItem(image:UIImage(named: "backBtn1x.png"), style:.Plain, target:self, action:#selector(Reservations.backButtonPressed(_:)));
        
        navigationItem.rightBarButtonItem =
            UIBarButtonItem(image:UIImage(named: "menuBtn1x.png"), style:.Plain, target:self, action:nil)
        
        
        titleLbl.font = UIFont(name: font1Thin, size: 48)
        titleLbl.textColor = COLOR2
        titleLbl.text = "Make a free reservation"
        
        nameView.backgroundColor = COLOR2
        nameTxt.placeholder = "Name"
        nameTxt.font = UIFont(name: font1Regular, size: 18)
        nameTxt.textColor = COLOR2
        peopleView.backgroundColor = COLOR2
        peopleTxt.placeholder = "Number of people"
        peopleTxt.font = UIFont(name: font1Regular, size: 18)
        peopleTxt.textColor = COLOR2
        dateTimeView.backgroundColor = COLOR2
        dateTimeTxt.placeholder = "Reservation date"
        dateTimeTxt.font = UIFont(name: font1Regular, size: 18)
        dateTimeTxt.textColor = COLOR2
        mobileView.backgroundColor = COLOR2
        mobileTxt.placeholder = "Mobile number"
        mobileTxt.font = UIFont(name: font1Regular, size: 18)
        mobileTxt.textColor = COLOR2
        bottomLbl.font = UIFont(name: font1Regular, size: 14)
        bottomLbl.textColor = COLOR2
        bottomLbl.text = "You'll receive a call/sms from us once your reservation is confirmed."
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Reservations.dismissKeyboard))
        view.addGestureRecognizer(tap)
        


        
    }
    


    

    @IBAction func editingBegunDateTime(sender: UITextField) {
        let inputView = UIView(frame: CGRectMake(0, 0, self.view.frame.width, 240))
  
        let datePickerView  : UIDatePicker = UIDatePicker(frame: CGRectMake((self.view.frame.size.width/2) - (320/2), 40, 0, 0))
        
        datePickerView.datePickerMode = UIDatePickerMode.DateAndTime
        datePickerView.minuteInterval = 15
        
        let dateFromNow = userCalendar.dateByAddingUnit(
            [.Day],
            value: 90,
            toDate: NSDate(),
            options: [])
        
        datePickerView.maximumDate = dateFromNow
        datePickerView.minimumDate = NSDate()
        
        inputView.addSubview(datePickerView)
        inputView.backgroundColor = UIColor.whiteColor()
        datePickerView.backgroundColor = UIColor.whiteColor()
        

        sender.inputView = inputView
        datePickerView.addTarget(self, action: #selector(Reservations.handleDatePicker(_:)), forControlEvents: UIControlEvents.ValueChanged)
        
        let timeFromNow = userCalendar.dateByAddingUnit(
            [.Hour],
            value: 1,
            toDate: NSDate(),
            options: [])
        
        if let unwrappedDate = timeFromNow {
            datePickerView.setDate(unwrappedDate, animated: false)
        }
        
        
        handleDatePicker(datePickerView)
        
    }
    
    func handleDatePicker(sender: UIDatePicker) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = DATE_FORMAT2
        dateTimeTxt.text = dateFormatter.stringFromDate(sender.date)
        dateTimeTxt.font = UIFont(name: font1Regular, size: 18)
        dateTimeTxt.textColor = COLOR2
    }


    @IBAction func sendBtnPressed(sender: AnyObject) {
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func backButtonPressed(sender:UIButton) {
        navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
