//
//  DetailViewController.swift
//  wanderfulindonesia
//
//  Created by Armstrong on 14/06/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailTitle: UILabel!
    @IBOutlet var detailDescription: UILabel!
    
    var academy: AcademyModel? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let result = academy {
              detailTitle.text = result.name
              detailDescription.text = result.description
              detailImageView.image = result.image
            }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
