//
//  CustomTableViewCell.swift
//  interview
//
//  Created by alien on 2019/5/30.
//  Copyright © 2019 Playsport Inc. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var user: User? {
        didSet {
            if let string = user?.avatar, let image = getImage(from: string) {
                customImageView.image = image
                print("----")
                print(image)
            } else {
                customImageView.image = nil
            }
            nameLabel.text = user?.name
            genderLabel.text = user?.sex
            descriptionLabel.text = user?.description
        }
    }

    func getImage(from urlLink: String) -> UIImage? {
        guard let url = URL(string: urlLink) else { return nil }
        var image: UIImage?
        do {
            guard let data = try? Data(contentsOf: url) else { return nil}
            image = UIImage(data: data)
        }
        
        return image
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
