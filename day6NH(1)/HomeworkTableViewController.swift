//
//  HomeworkTableViewController.swift
//  day6NH(1)
//
//  Created by Lydia Kang on 8/15/22.
//

import UIKit

class HomeworkTableViewController: UITableViewController {
 
    var homeworks : [Homework] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeworks = createHomeworks()
    }
    
    func createHomeworks() -> [Homework] {

      let swift = Homework()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = Homework()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return homeworks.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let homework = homeworks[indexPath.row]
        if homework.important {
            cell.textLabel?.text = "❗️" + homework.name
        } else {
            cell.textLabel?.text = homework.name
        }
        
        return cell
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
