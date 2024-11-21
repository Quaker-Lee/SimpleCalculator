//
//  ViewController.swift
//  simpleCalculator
//
//  Created by 이재건 on 11/21/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        calculator()
    }
    
    // 숫자들이 보일 Label
    let numberLabel = UILabel()
    
    private func calculator() {
        view.backgroundColor = .black
        
        numberLabel.text = "12345"
        numberLabel.textColor = .white
        numberLabel.textAlignment = .right
        numberLabel.font = UIFont.boldSystemFont(ofSize: 60)
        
        [numberLabel]
            .forEach { view.addSubview($0) }
        
        numberLabel.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.leading.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
        }
        
        
    }
    
    
    


}

