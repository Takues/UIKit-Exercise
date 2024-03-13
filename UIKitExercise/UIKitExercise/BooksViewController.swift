//
//  AppsViewController.swift
//  UIKitExercise
//
//  Created by Takudzwa Zindoga on 13/3/2024.
//

import UIKit


struct Book {
    var author: String
    var title: String
    var description: String
    var yearRelease: String
}

let mockedBooks: [Book] = [
    Book(author: "John .C. Maxwell", title: "Leadershift", description: "Dive into a masterclass that reveals the shifts you should make over the course of you career to keep innovating, improving, and influencing others to the highest levels of success in today’s unprecedented business climate.", yearRelease: "2019"),
    Book(author:"David Allen", title: "Getting Things Done", description: "Getting Things Done is a personal productivity system developed by David Allen and published in a book of the same name. GTD is described as a time management system. Allen states there is an inverse relationship between things on your mind and those things getting done.", yearRelease: "2015"),
    Book(author: "Robert Greene", title: "48 laws Of Power ", description: "The 48 Laws of Power by Robert Greene is a self-help book offering advice on how to gain and maintain power, using lessons drawn from parables and the experiences of historical figures. Power depends on the relationships between a person and those he or she seeks to control.", yearRelease: "1998")
]

class BooksViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Apps"
        self.navigationController?.navigationBar.prefersLargeTitles = true

        tableView.register(BooksTableViewCell.nib, forCellReuseIdentifier: BooksTableViewCell.identifier)
        tableView.estimatedRowHeight = 200
        tableView.rowHeight  = UITableView.automaticDimension

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mockedBooks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: BooksTableViewCell.identifier, for: indexPath) as? BooksTableViewCell else {
            return UITableViewCell()
        }

        let ourBookFromRow = mockedBooks[indexPath.row]
        cell.configureCell(book: ourBookFromRow)
        return cell
    }
}

        /*
         let cell = UITableViewCell()

         // Configure the cell...
         let app = mockedBooks[indexPath.row]
         cell.textLabel?.text = String(app.releaseDate)
         return cell*?
         }


         /*
          // Override to support conditional editing of the table view.
          override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
          // Return false if you do not want the specified item to be editable.
          return true
          }
          */

         /*
          // Override to support editing the table view.
          override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
          if editingStyle == .delete {
          // Delete the row from the data source
          tableView.deleteRows(at: [indexPath], with: .fade)
          } else if editingStyle == .insert {
          // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
          }
          }
          */

         /*
          // Override to support rearranging the table view.
          override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

          }
          */

         /*
          // Override to support conditional rearranging of the table view.
          override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
          // Return false if you do not want the item to be re-orderable.
          return true
          }
          */

         /*
          // MARK: - Navigation

          // In a storyboard-based application, you will often want to do a little preparation before navigation
          override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          // Get the new view controller using segue.destination.
          // Pass the selected object to the new view controller.
          }
          */

         }*/
