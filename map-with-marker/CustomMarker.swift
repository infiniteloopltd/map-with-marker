//
//  CustomMarker.swift
//  map-with-marker
//
//  Created by Fiach Reid on 20/04/2018.
//  Copyright © 2018 William French. All rights reserved.
//

import UIKit

class CustomMarker: UIView {

 
    @IBOutlet weak var labelText: UILabel!
    
    class func instanceFromNib() -> CustomMarker {
        return UINib(nibName: "CustomMarker", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CustomMarker
    }

}
