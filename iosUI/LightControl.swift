//
//  LightControl.swift
//  iosUI
//
//  Created by Dennis Kreuzer on 23.02.20.
//  Copyright © 2020 Dennis Kreuzer. All rights reserved.
//

import UIKit

public class LightControl: UIView {

    @IBOutlet private weak var lightImageView: UIImageView!
    @IBOutlet private weak var lightLabel: UILabel!
    @IBOutlet private weak var lightSwitch: UISwitch!
    
    let nibName = "LightControlView"
    var contentView: UIView!

    // MARK: Set Up View
    public override init(frame: CGRect) {
     // For use in code
      super.init(frame: frame)
      setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
       // For use in Interface Builder
       super.init(coder: aDecoder)
      setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = (nib.instantiate(withOwner: self, options: nil).first as! UIView)
        addSubview(contentView)
        
        contentView.center = self.center
        
        lightLabel.text = ""
        lightSwitch.isOn = true
    }
    
    // Provide functions to update view
    @objc
    public func setImage(image: UIImage) {
        self.lightImageView.image = image
    }
    @objc
    public func setLabelText(text: String) {
        self.lightLabel.text = text
    }
    @objc
    public func setSwitchValue(value: Bool) {
        self.lightSwitch.isOn = value
    }
    
    @objc
    @IBAction func lightSwitch_tapped(_ sender: UISwitch) {
        print("Tapped")
    }
    
}
