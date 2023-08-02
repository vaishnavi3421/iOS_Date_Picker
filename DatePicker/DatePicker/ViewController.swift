//
//  ViewController.swift
//  DatePicker
//
//  Created by Sanjay, Vaishnavi on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dataPic: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataPic.locale = .current
        dataPic.date = Date()
        dataPic.preferredDatePickerStyle = .compact
        
        dataPic.addTarget(self, action: #selector(dateselected), for: .valueChanged)
     
    }

    @IBAction func butsagtap(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0 : dataPic.preferredDatePickerStyle = .compact
        case 1 :dataPic.preferredDatePickerStyle = .inline
        case 2 :dataPic.preferredDatePickerStyle = .wheels
            
        default : break
            
        }
        
       
        }
    @objc
    func dateselected(){
        let dateformatter = DateFormatter()
     //   dateformatter.dateFormat = .medium
        dateformatter.timeStyle = .none
        let date = dateformatter.string(from: dataPic.date)
        label.text = date
      //  print(dataPic.date)
    }
    
        
    }


