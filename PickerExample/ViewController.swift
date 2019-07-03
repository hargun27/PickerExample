//
//  ViewController.swift
//  PickerExample
//
//  Created by Hargun Marya on 2019-07-03.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource
{
    

    @IBOutlet weak var lblCourseNmae: UILabel!
    @IBOutlet weak var pickerCourseName: UIPickerView!
    var courseArray = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]
    override func viewDidLoad() {
     
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.pickerCourseName.delegate = self
        self.pickerCourseName.dataSource = self
    }
    // no of components
func numberOfComponents(in pickerView: UIPickerView) -> Int {
    //return 1
    return 2
}
    // no of items in picker view
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseArray.count
        
    }
    //fetch the selected item
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblCourseNmae.text = courseArray[row]
    }
    //set the value for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //return courseArray[row]
        return "\(row + 1) - \(courseArray[row])"
        
    }

}

