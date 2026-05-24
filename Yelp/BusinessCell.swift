//
//  BusinessCell.swift
//  Yelp
//
//  Created by Gerard Recinto on 12/1/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
  @IBOutlet weak var categoriesLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  @IBOutlet weak var reviewsCountLabel: UILabel!
  @IBOutlet weak var ratingImageView: UIImageView!
  @IBOutlet weak var distanceLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var thumbImageView: UIImageView!

  var business: Business? {
    didSet {
      nameLabel.text = business?.name
      categoriesLabel.text = business?.categories
      addressLabel.text = business?.address
      distanceLabel.text = business?.distance
      reviewsCountLabel.text = "\(business?.reviewCount ?? 0) Reviews"
      if let imageURL = business?.imageURL {
        thumbImageView.setImageWith(imageURL)
      }
      if let ratingURL = business?.ratingImageURL {
        ratingImageView.setImageWith(ratingURL)
      }
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()
    thumbImageView.layer.cornerRadius = 3
    nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}
