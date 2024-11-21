//
//  ViewController.swift
//  simpleCalculator
//
//  Created by 이재건 on 11/21/24.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    
    
    //숫자들이 보일 Label
    private let numberLabel = UILabel().then {
        $0.text = "12345"
        $0.textColor = .white
        $0.textAlignment = .right
        $0.font = UIFont.boldSystemFont(ofSize: 60)
    }
    
//    var btn7 = UIButton()
//    let btn8 = UIButton()
//    let btn9 = UIButton()
//    
//    let btnPlus = UIButton()
    
  
    
    private func configureUI() {
        view.backgroundColor = .black
        
//        [numberLabel]
//            .forEach { view.addSubview($0) }
        view.addSubview(numberLabel)
        numberLabel.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.leading.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
        }
        
        //btn7 = btns(title: "7")
        
    }
    
    
    
    
//    //구현을 위한 함수들
//    //StackView 구현을 위한 함수
//    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
//        let stackView = UIStackView(arrangedSubviews: views)
//        stackView.backgroundColor = .black
//        stackView.axis = .horizontal
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        
//        
//        return stackView
//    }
//    
//    //버튼 구현을 위한 함수
//    private func btns(title: String) -> UIButton {
//        let btn = UIButton()
//        btn.setTitle(title, for: .normal)
//        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
//        btn.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        btn.frame.size.height = 80
//        btn.frame.size.width = 80
//        btn.layer.cornerRadius = 40
//        
//        return btn
//    }


}

