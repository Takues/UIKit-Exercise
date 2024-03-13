//
//  AppsTableViewCell.swift
//  UIKitExercise
//
//  Created by Takudzwa Zindoga on 13/3/2024.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    //    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    //    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    //    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    //    @IBOutlet weak var descriptionLabel: UILabel!

    func configureCell(book: Book) {

        titleLabel.text = book.title
        descriptionLabel.text = book.description
        descriptionLabel.sizeToFit()
        authorLabel.text = "Author: \(book.author)"
        releaseDateLabel.text = "Release year: \(book.yearRelease)"

    }



    static let identifier = "BooksTableViewCellIdentifier"
    static let nib = UINib(nibName: "BooksTableViewCell", bundle: Bundle.main)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
