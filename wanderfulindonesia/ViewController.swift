//
//  ViewController.swift
//  wanderfulindonesia
//
//  Created by Armstrong on 14/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var screenTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        screenTableView.dataSource = self
        screenTableView.delegate = self
        screenTableView.register(
          UINib(nibName: "ScreenTableViewCell", bundle: nil), // Isi dengan nama file XIB
          forCellReuseIdentifier: "RowCell" // Isi dengan Identifier Cell yang telah ditentukan
        )
    }
    @IBAction func goToProfile(_ sender: Any) {
        let urlDicoding = "https://www.dicoding.com"
          if let url = URL(string: urlDicoding), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
          }
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyAcademyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
          withIdentifier: "RowCell",
          for: indexPath
        ) as? ScreenTableViewCell { // Mencari UITableViewCell berdasarkan Identifier.
          
            // MARK: Menetapkan nilai gambar dan nama untuk setiap cell/item.
             let academy = dummyAcademyData[indexPath.row]
             cell.rowLabel.text = academy.name
             cell.rowImageView.image = academy.image
        
             // MARK: Mengembalikan cell agar bisa ditampilkan dalam TableView.
             return cell
            
        } else {
          return UITableViewCell() // Mengembalikan UITableViewCell jika tidak ditemukan.
        }
    }
 
}

// Detail
extension ViewController: UITableViewDelegate {
  func tableView(
    _ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath
  ) {
    performSegue(withIdentifier: "moveToDetail", sender: dummyAcademyData[indexPath.row])
  }
    // send data to segue
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
      ) {
        if segue.identifier == "moveToDetail" {
          if let detaiViewController = segue.destination as? DetailViewController {
            detaiViewController.academy = sender as? AcademyModel
          }
        }
      }
}
