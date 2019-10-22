//
//  ViewController.swift
//  screen-structure-practice
//
//  Created by jinsei_shima on 2019/09/12.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit
import EasyPeasy

class ViewController1: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "hoge"

    let button = UIButton(type: .system)
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    button.setTitle("hoge", for: .normal)

    view.addSubview(button)

    button.easy.layout(
      Center()
    )
  }

  @objc func tap() {

    let controller = ViewController3()
//    controller.hidesBottomBarWhenPushed = true
    controller.modalPresentationStyle = .overFullScreen
    present(controller, animated: true, completion: nil)

  }

}


