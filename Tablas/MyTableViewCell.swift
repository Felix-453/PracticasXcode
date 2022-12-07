//
//  MyTableViewCell.swift
//  Tablas
//
//  Created by IMAC17 on 01/12/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelTexto: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
