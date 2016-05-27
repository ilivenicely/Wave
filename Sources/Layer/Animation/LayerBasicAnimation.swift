//
//  LayerBasicAnimation.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public struct BasicAnimation {

    var animation = CABasicAnimation()
  }
}

extension Layer.BasicAnimation: Action {

  public func run(nextActions: [Action]) {
    Wave.run(nextActions)
  }
}
