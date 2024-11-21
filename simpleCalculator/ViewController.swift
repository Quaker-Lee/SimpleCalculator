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
    
    //StackView
    private let horizontalStackView = UIStackView().then {
        $0.axis = .horizontal
        $0.backgroundColor = .black
        $0.spacing = 10
        $0.distribution = .fillEqually
    }
    //숫자버튼들 모음
    let btn7 = UIButton().then {
        $0.setTitle("7", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        $0.layer.cornerRadius = 10
    }
    let btn8 = UIButton().then {
        $0.setTitle("8", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        $0.layer.cornerRadius = 10
    }
    let btn9 = UIButton().then {
        $0.setTitle("9", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        $0.layer.cornerRadius = 10
    }
    let btnPlus = UIButton().then {
        $0.setTitle("+", for: .normal)
        $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        $0.layer.cornerRadius = 10
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
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
        }
        
        view.addSubview(horizontalStackView)
        horizontalStackView.snp.makeConstraints {
            $0.top.equalTo(numberLabel.snp.bottom).offset(60)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        [btn7, btn8, btn9, btnPlus].forEach {
            horizontalStackView.addArrangedSubview($0)
            $0.snp.makeConstraints {
                $0.width.height.equalTo(80)
            }
        }
        
        
        
    }
    
    
    
    
//    //구현을 위한 함수들
//    //StackView 구현을 위한 함수
//    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
//        let stackView = UIStackView(arrangedSubviews: views).then {
//            $0.backgroundColor = .black
//            $0.axis = .horizontal
//            $0.spacing = 10
//            $0.distribution = .fillEqually
//        }
//        return stackView
//    }
//    
//    //버튼 구현을 위한 함수
//    private func btns(title: String) -> UIButton {
//        let btn = UIButton().then {
//            $0.setTitle(title, for: .normal)
//            $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
//            $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//            $0.frame.size = CGSize(width: 80, height: 80)
//            $0.layer.cornerRadius = 40
//        }
//        return btn
//    }
    
    
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
//    //버튼 구현을 위한 함수
//    private func btns(title: String) -> UIButton {
//        let btn = UIButton().then { make in
//            make.setTitle(title, for: .normal)
//        }
//        //btn.setTitle(title, for: .normal)
//        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
//        btn.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        btn.frame.size.height = 80
//        btn.frame.size.width = 80
//        btn.layer.cornerRadius = 40
//        
//        return btn
//    }



}

