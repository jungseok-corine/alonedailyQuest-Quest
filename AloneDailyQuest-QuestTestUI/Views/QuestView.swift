//
//  QuestView.swift
//  AloneDailyQuest-QuestTestUI
//
//  Created by 오정석 on 20/12/2023.
//

import UIKit

class QuestView: UIView {
    // MARK: - UI 구현

    var profileView: UIView = {
        let profileView = UIView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.layer.backgroundColor = UIColor(red: 1, green: 0.941, blue: 0.859, alpha: 1).cgColor
        return profileView
    }()
    
    
    
    
    // MARK: - 생성자 셋팅

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.22, green: 0.784, blue: 0.784, alpha: 1)
        makeUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func makeUI() {
        
        

    }

    
    // MARK: - 오토레이아웃 설정
    
    func setupProfileConstraints() {
        NSLayoutConstraint.activate([
            profileView.heightAnchor.constraint(equalToConstant: 100),
            profileView.widthAnchor.constraint(equalToConstant: 390),
            profileView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            profileView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20)
        ])
        
        
        
    }

    
    
    
    
    
    
}
