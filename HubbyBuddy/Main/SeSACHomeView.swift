//
//  SeSACHomeView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit
import SnapKit
import MapKit
import CoreLocation

class SeSACHomeView: UIView {
    
    let map = MKMapView()
    let coordinate = CLLocationCoordinate2D(latitude: 40.728, longitude: -74)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        setupConstraints()
       
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup() {
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: false)
    }
    
    func setupConstraints() {
        addSubview(map)
        
        map.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
    
    
}
//    let nicknameView = UIView()
//    let nicknameImageView = UIImageView()
//    let nicknameLabel = UILabel()
//    let nicknameImageView2 = UIImageView()
//
//    let announcementView = UIView()
//    let announcementImageView = UIImageView()
//    let announcementLabel = UILabel()
//
//    let qnaView = UIView()
//    let qnaImageView = UIImageView()
//    let qnalabel = UILabel()
//
//    let inquiryView = UIView()
//    let inquiryImageView = UIImageView()
//    let inquiryLabel = UILabel()
//
//    let notiView = UIView()
//    let notiImageView = UIImageView()
//    let notiLabel = UILabel()
//
//    let agreementsView = UIView()
//    let agreementsImageView = UIImageView()
//    let agreementsLabel = UILabel()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setup()
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//
//    func setup() {
//
//        self.backgroundColor = .systemBackground
//
//        nicknameImageView.image = UIImage(systemName: "home")
//        nicknameImageView.contentMode = .scaleAspectFill
//
//        nicknameLabel.text = "김새싹"
//        nicknameLabel.font = .boldSystemFont(ofSize: 20)
//        nicknameLabel.textColor = .black
//        nicknameLabel.textAlignment = .left
//
//        nicknameImageView2.image = UIImage(systemName: "greaterthan")
//        nicknameImageView2.contentMode = .scaleAspectFill
//
//        announcementImageView.image = UIImage(systemName: "home")
//        announcementImageView.contentMode = .scaleAspectFill
//
//        announcementLabel.text = "공지사항"
//        announcementLabel.font = .systemFont(ofSize: 20)
//        announcementLabel.textColor = .black
//        announcementLabel.textAlignment = .left
//
//        qnaImageView.image = UIImage(systemName: "home")
//        qnaImageView.contentMode = .scaleAspectFill
//
//        qnalabel.text = "자주 묻는 질문"
//        qnalabel.font = .systemFont(ofSize: 20)
//        qnalabel.textColor = .black
//        qnalabel.textAlignment = .left
//
//        inquiryImageView.image = UIImage(systemName: "home")
//        inquiryImageView.contentMode = .scaleAspectFill
//
//        inquiryLabel.text = "1:1 문의"
//        inquiryLabel.font = .systemFont(ofSize: 20)
//        inquiryLabel.textColor = .black
//        inquiryLabel.textAlignment = .left
//
//        notiImageView.image = UIImage(systemName: "home")
//        notiImageView.contentMode = .scaleAspectFill
//
//        notiLabel.text = "알림 설정"
//        notiLabel.font = .systemFont(ofSize: 20)
//        notiLabel.textColor = .black
//        notiLabel.textAlignment = .left
//
//        agreementsImageView.image = UIImage(systemName: "home")
//        agreementsImageView.contentMode = .scaleAspectFill
//
//        agreementsLabel.text = "이용 약관"
//        agreementsLabel.font = .systemFont(ofSize: 20)
//        agreementsLabel.textColor = .black
//        agreementsLabel.textAlignment = .left
//    }
//
//    func setupConstraints() {
//
//        addSubview(nicknameView)
//        addSubview(nicknameImageView)
//        addSubview(nicknameLabel)
//        addSubview(nicknameImageView2)
//        addSubview(announcementView)
//        addSubview(announcementImageView)
//        addSubview(announcementLabel)
//        addSubview(qnaView)
//        addSubview(qnaImageView)
//        addSubview(qnalabel)
//        addSubview(inquiryView)
//        addSubview(inquiryImageView)
//        addSubview(inquiryLabel)
//        addSubview(notiView)
//        addSubview(notiImageView)
//        addSubview(notiLabel)
//        addSubview(agreementsView)
//        addSubview(agreementsImageView)
//        addSubview(agreementsLabel)
//
//        nicknameView.snp.makeConstraints { make in
//            make.top.equalTo(self.safeAreaLayoutGuide)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(96)
//        }
//
//        nicknameImageView.snp.makeConstraints { make in
//            make.top.equalTo(nicknameView.snp.top).offset(24)
//            make.leading.equalTo(nicknameView.snp.leading)
//            make.bottom.equalTo(nicknameView.snp.bottom).offset(-24)
//            make.width.equalTo(48)
//        }
//
//        nicknameLabel.snp.makeConstraints { make in
//            make.top.equalTo(nicknameView.snp.top).offset(24)
//            make.bottom.equalTo(nicknameView.snp.bottom).offset(-24)
//            make.leading.equalTo(nicknameImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(nicknameView.snp.trailing).offset(-40)
//        }
//
//        nicknameImageView2.snp.makeConstraints { make in
//            make.top.equalTo(nicknameView.snp.top).offset(24)
//            make.bottom.equalTo(nicknameView.snp.bottom).offset(-24)
//            make.trailing.equalTo(nicknameView.snp.trailing)
//            make.width.equalTo(30)
//        }
//
//        announcementView.snp.makeConstraints { make in
//            make.top.equalTo(nicknameView.snp.bottom)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(74)
//        }
//
//        announcementImageView.snp.makeConstraints { make in
//            make.top.equalTo(announcementView.snp.top).offset(24)
//            make.bottom.equalTo(announcementView.snp.bottom).offset(-24)
//            make.leading.equalTo(announcementView.snp.leading)
//            make.width.equalTo(26)
//        }
//
//        announcementLabel.snp.makeConstraints { make in
//            make.top.equalTo(announcementView.snp.top).offset(24)
//            make.bottom.equalTo(announcementView.snp.bottom).offset(-24)
//            make.leading.equalTo(announcementImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(announcementView.snp.trailing).offset(-40)
//        }
//
//        qnaView.snp.makeConstraints { make in
//            make.top.equalTo(announcementView.snp.bottom)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(74)
//        }
//
//        qnaImageView.snp.makeConstraints { make in
//            make.top.equalTo(qnaView.snp.top).offset(24)
//            make.bottom.equalTo(qnaView.snp.bottom).offset(-24)
//            make.leading.equalTo(qnaView.snp.leading)
//            make.width.equalTo(26)
//        }
//
//        qnalabel.snp.makeConstraints { make in
//            make.top.equalTo(qnaView.snp.top).offset(24)
//            make.bottom.equalTo(qnaView.snp.bottom).offset(-24)
//            make.leading.equalTo(qnaImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(qnaView.snp.trailing).offset(-40)
//        }
//
//        inquiryView.snp.makeConstraints { make in
//            make.top.equalTo(qnaView.snp.bottom)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(74)
//        }
//
//        inquiryImageView.snp.makeConstraints { make in
//            make.top.equalTo(inquiryView.snp.top).offset(24)
//            make.bottom.equalTo(inquiryView.snp.bottom).offset(-24)
//            make.leading.equalTo(inquiryView.snp.leading)
//            make.width.equalTo(26)
//        }
//
//        inquiryLabel.snp.makeConstraints { make in
//            make.top.equalTo(inquiryView.snp.top).offset(24)
//            make.bottom.equalTo(inquiryView.snp.bottom).offset(-24)
//            make.leading.equalTo(inquiryImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(inquiryView.snp.trailing).offset(-40)
//        }
//
//        notiView.snp.makeConstraints { make in
//            make.top.equalTo(inquiryView.snp.bottom)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(74)
//        }
//
//        notiImageView.snp.makeConstraints { make in
//            make.top.equalTo(notiView.snp.top).offset(24)
//            make.bottom.equalTo(notiView.snp.bottom).offset(-24)
//            make.leading.equalTo(notiView.snp.leading)
//            make.width.equalTo(26)
//        }
//
//        notiLabel.snp.makeConstraints { make in
//            make.top.equalTo(notiView.snp.top).offset(24)
//            make.bottom.equalTo(notiView.snp.bottom).offset(-24)
//            make.leading.equalTo(notiImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(notiView.snp.trailing).offset(-40)
//        }
//
//        agreementsView.snp.makeConstraints { make in
//            make.top.equalTo(notiView.snp.bottom)
//            make.leading.equalToSuperview().offset(15)
//            make.trailing.equalToSuperview().offset(15)
//            make.height.equalTo(74)
//        }
//
//        agreementsImageView.snp.makeConstraints { make in
//            make.top.equalTo(agreementsView.snp.top).offset(24)
//            make.bottom.equalTo(agreementsView.snp.bottom).offset(-24)
//            make.leading.equalTo(agreementsView.snp.leading)
//            make.width.equalTo(26)
//        }
//
//        agreementsLabel.snp.makeConstraints { make in
//            make.top.equalTo(agreementsView.snp.top).offset(24)
//            make.bottom.equalTo(agreementsView.snp.bottom).offset(-24)
//            make.leading.equalTo(agreementsImageView.snp.trailing).offset(10)
//            make.trailing.equalTo(agreementsView.snp.trailing).offset(-40)
//        }
//    }

