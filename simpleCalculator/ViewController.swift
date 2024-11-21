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
    private let verticalStackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 10
        $0.distribution = .fillEqually
    }
    
    
    private func configureUI() {
        view.backgroundColor = .black
        
        //Label AutoLayout 구현
        view.addSubview(numberLabel)
        numberLabel.snp.makeConstraints {
            $0.height.equalTo(100)
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
        }
        
        //전체 StackView를 넣을 verticalStackView AutoLayout 구현
        view.addSubview(verticalStackView)
        verticalStackView.snp.makeConstraints {
            $0.top.equalTo(numberLabel.snp.bottom).offset(60)
            $0.leading.trailing.equalToSuperview().inset(20)
        }
        
        //버튼 배열 생성
        let btnTitles = [
            ["7", "8", "9", "+"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "*"],
            ["AC", "0", "=", "/"]
        ]
        for titles in btnTitles {   //horizontalStackView에 집어넣음.
            let btns = titles.map { makeBtn(title: $0) }
            let horizontalStackView = makeHorizontalStackView(btns)
            verticalStackView.addArrangedSubview(horizontalStackView)
        }
        
    }
    
    
    
    //StackView 구현을 위한 함수
    private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views).then {
            $0.backgroundColor = .black
            $0.axis = .horizontal
            $0.spacing = 10
            $0.distribution = .fillEqually
        }
        views.forEach {
            $0.snp.makeConstraints {
                $0.width.height.equalTo(80)
            }
        }
        return stackView
    }
    
    //버튼 구현을 위한 함수
    private func makeBtn(title: String) -> UIButton {
        let btn = UIButton().then {
            $0.setTitle(title, for: .normal)
            $0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            $0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
            $0.layer.cornerRadius = 40
            
            //"AC"와 기호들을 포함하고 있다면, 배경색 주황색으로 변경.
            if ["+", "-", "*", "/", "=", "AC"].contains(title) {
                $0.backgroundColor = .orange
            }
        }
        return btn
    }
}



