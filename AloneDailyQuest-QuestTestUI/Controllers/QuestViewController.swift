//
//  QuestViewController.swift
//  AloneDailyQuest-QuestTestUI
//
//  Created by 오정석 on 20/12/2023.
//

import UIKit

class QuestViewController: UIViewController {
    // MARK: - UI설정(프로필, 테이블뷰)

    // 테이블 뷰 생성
    private let questView = UITableView()
    
    
    //프로필바 생성
    let profileView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //프로필 정보 부분
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let name = UILabel()
        name.textColor = UIColor(red: 0.627, green: 0.282, blue: 0.008, alpha:1)
        name.font = UIFont(name: "DungGeunMo-Regular", size: 16)
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "닉네임"
        return name
    }()
    
    let profileName: UILabel = {
        let name = UILabel()
        name.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        name.font = UIFont(name: "DungGeunMo-Regular", size: 16)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    let levelLabel: UILabel = {
        let level = UILabel()
        level.textColor = UIColor(red: 0.627, green: 0.282, blue: 0.008, alpha: 1)
        level.font = UIFont(name: "DungGeunMo-Regular", size: 16)
        level.translatesAutoresizingMaskIntoConstraints = false
        level.text = "레벨"
        return level
    }()
    
    let profileLevel: UILabel = {
        let level = UILabel()
        level.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        level.font = UIFont(name: "DungGeunMo-Regular", size: 16)
        return level
    }()
    
    //경험치 부분
    let basicView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let stackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [profileImage, nameLabel, profileName, levelLabel, profileLevel])
        stview.spacing = 20
        stview.axis = .horizontal
        stview.distribution = .fill
        stview.alignment = .fill
        stview.translatesAutoresizingMaskIntoConstraints = false
        return stview
    }()
    
    // MARK: - UI설정

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.22, green: 0.784, blue: 0.784, alpha: 1)
        
        setupNaviBar()
        setupQuestViewConstraints()
    }
    
    // 네비게이션바 설정
    func setupNaviBar() {
        title = "일일 퀘스트"
        
        // (네비게이션바 설정관련)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground() //불투명으로
        appearance.backgroundColor = UIColor(red: 0.22, green: 0.784, blue: 0.784, alpha: 1)
        appearance.configureWithTransparentBackground() //네비게이션 바 경계선 지우기
        
        //제목 색상 변경
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1)]
        //제목 폰트 변경
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "DungGeunMo-Regular", size: 30)!]
        
        navigationController?.navigationBar.tintColor = .systemBlue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //네비게이션바 우측 Plus 버튼 만들기
//        let plusButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(plusButtonTapped))
//        plusButton.tintColor = .black
//        navigationItem.rightBarButtonItem = plusButton
        
        

    }
   
    // 테이블뷰 자체의 오토레이아웃
    func setupQuestViewConstraints() {
        view.addSubview(questView)
        questView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),// 프로필 만들면 프로필부터 거리 조절 해야함
            questView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            questView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            questView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
    }
    
    
    
}
