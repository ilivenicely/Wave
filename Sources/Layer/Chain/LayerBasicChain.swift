//
//  LayerBasicChain.swift
//  Wave
//
//  Created by Khoa Pham on 27/05/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

import UIKit

public extension Layer {

  public final class BasicChain: Chainable {

    public var actions: [Action] = []
    public let layer: CALayer

    public init(layer: CALayer) {
      self.layer = layer
    }
  }
}

// MARK: - Configure

// MARK: - Animate

extension Layer.BasicChain: LayerAnimatable {

  public typealias Animation = CABasicAnimation
  
  public func animate(block: CABasicAnimation -> Void) -> Layer.BasicChain {
    var action = Layer.BasicAction()
    action.layer = layer
    block(action.animation)

    return link(action)
  }
}
