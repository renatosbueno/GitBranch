//
//  ViewController.swift
//  GitBranch
//
//  Created by Swift on 15/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = message()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func message() -> String {
        // resgatar hora atual
        let now = Date()
        // Criar datas de comparação
        guard let midDay = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: now) else {
            return ""
        }
        guard let sixOClock = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: now) else {
            return ""
        }
        
        if now >= midDay && now <= sixOClock {
            return "Boa Tarde"
        } else if now >= sixOClock {
            return "Boa noite"
        } else {
            return "Bom dia"
        }
    }

}

