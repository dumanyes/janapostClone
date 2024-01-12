//
//  AddressChangeController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 18.12.2023.
//

import UIKit
import SnapKit

class AddressChangeController: UIViewController {
    private let address1: UILabel = {
        let label = UILabel()
        label.text = "Алатау ауданы - JP023"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let phoneText1: UILabel = {
        let label = UILabel()
        label.text = "8 747 567 45 56"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let clock1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "clock")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let clockText1: UILabel = {
        let label = UILabel()
        label.text = "10:00 - 20:00 Демалыссыз"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let priceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "dollarsign.circle")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let priceText1: UILabel = {
        let label = UILabel()
        label.text = "Қытыайдан бөлімшеге дейін -  4.55$/1кг"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let gpsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "location")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let gpsText1: UILabel = {
        let label = UILabel()
        label.text = "Аққент ш/а 68"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let lineView1: UIView = {
        let imageView = UIView()
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let address2: UILabel = {
        let label = UILabel()
        label.text = "Алатау ауданы - JP029"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let phoneImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let phoneText2: UILabel = {
        let label = UILabel()
        label.text = "8 771 105 73 30"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let clock2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "clock")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let clockText2: UILabel = {
        let label = UILabel()
        label.text = "09:00 - 20:00 Демалыссыз"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let priceImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "dollarsign.circle")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let priceText2: UILabel = {
        let label = UILabel()
        label.text = "Қытыайдан бөлімшеге дейін -  4.55$/1кг"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let gpsImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "location")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let gpsText2: UILabel = {
        let label = UILabel()
        label.text = "Қалқаман ш/а 7B"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let lineView2: UIView = {
        let imageView = UIView()
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let address3: UILabel = {
        let label = UILabel()
        label.text = "Наурызбай ауданы - JP032"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let phoneImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let phoneText3: UILabel = {
        let label = UILabel()
        label.text = "8 771 555 73 40"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let clock3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "clock")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let clockText3: UILabel = {
        let label = UILabel()
        label.text = "10:00 - 20:00 Демалыссыз"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let priceImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "dollarsign.circle")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let priceText3: UILabel = {
        let label = UILabel()
        label.text = "Қытыайдан бөлімшеге дейін -  4.55$/1кг"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let gpsImageView3: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "location")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let gpsText3: UILabel = {
        let label = UILabel()
        label.text = "Дарабоз  55"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let lineView3: UIView = {
        let imageView = UIView()
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let address4: UILabel = {
        let label = UILabel()
        label.text = "Шұғыла мкр - JP035"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let phoneImageView4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "phone")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let phoneText4: UILabel = {
        let label = UILabel()
        label.text = "8 771 555 55 60"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let clock4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "clock")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let clockText4: UILabel = {
        let label = UILabel()
        label.text = "09:00 - 20:00 Демалыссыз"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let priceImageView4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "dollarsign.circle")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let priceText4: UILabel = {
        let label = UILabel()
        label.text = "Қытыайдан бөлімшеге дейін -  4.55$/1кг"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let gpsImageView4: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "location")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        return imageView
    }()
    private let gpsText4: UILabel = {
        let label = UILabel()
        label.text = "Shugyla city 340/4 k11"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let lineView4: UIView = {
        let imageView = UIView()
        imageView.backgroundColor = .black
        return imageView
    }()
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.backgroundColor = .white
        view.addSubview(scrollView)
                
        contentView.backgroundColor = .white
        scrollView.addSubview(contentView)
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 30000)
        setupUI()
    }

    private func setupUI() {
        setupViews()
        setupConstraints()
        
    }

    private func setupViews() {
        view.backgroundColor = .white
        contentView.addSubview(phoneImageView)
        contentView.addSubview(address1)
        contentView.addSubview(phoneText1)
        contentView.addSubview(clock1)
        contentView.addSubview(clockText1)
        contentView.addSubview(gpsImageView)
        contentView.addSubview(gpsText1)
        contentView.addSubview(priceImageView)
        contentView.addSubview(priceText1)
        contentView.addSubview(lineView1)
        
        contentView.addSubview(phoneImageView2)
        contentView.addSubview(address2)
        contentView.addSubview(phoneText2)
        contentView.addSubview(clock2)
        contentView.addSubview(clockText2)
        contentView.addSubview(gpsImageView2)
        contentView.addSubview(gpsText2)
        contentView.addSubview(priceImageView2)
        contentView.addSubview(priceText2)
        contentView.addSubview(lineView2)
        
        contentView.addSubview(phoneImageView3)
        contentView.addSubview(address3)
        contentView.addSubview(phoneText3)
        contentView.addSubview(clock3)
        contentView.addSubview(clockText3)
        contentView.addSubview(gpsImageView3)
        contentView.addSubview(gpsText3)
        contentView.addSubview(priceImageView3)
        contentView.addSubview(priceText3)
        contentView.addSubview(lineView3)
        
        contentView.addSubview(phoneImageView4)
        contentView.addSubview(address4)
        contentView.addSubview(phoneText4)
        contentView.addSubview(clock4)
        contentView.addSubview(clockText4)
        contentView.addSubview(gpsImageView4)
        contentView.addSubview(gpsText4)
        contentView.addSubview(priceImageView4)
        contentView.addSubview(priceText4)
        contentView.addSubview(lineView4)
        
//        contentView.addSubview(phoneImageView5)
//        contentView.addSubview(address5)
//        contentView.addSubview(phoneText5)
//        contentView.addSubview(clock5)
//        contentView.addSubview(clockText5)
//        contentView.addSubview(gpsImageView5)
//        contentView.addSubview(gpsText5)
//        contentView.addSubview(priceImageView5)
//        contentView.addSubview(priceText5)
//        contentView.addSubview(lineView5)

        
    }

    private func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.height.equalTo(scrollView)
        }

        address1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(contentView.safeAreaLayoutGuide).offset(10)
        }
        phoneImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(address1.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        phoneText1.snp.makeConstraints { make in
            make.leading.equalTo(phoneImageView.snp.trailing).offset(10)
            make.top.equalTo(address1.snp.bottom).offset(20)
        }
        clock1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(phoneImageView.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        clockText1.snp.makeConstraints { make in
            make.leading.equalTo(clock1.snp.trailing).offset(10)
            make.top.equalTo(phoneImageView.snp.bottom).offset(20)
        }
        priceImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(clock1.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        priceText1.snp.makeConstraints { make in
            make.leading.equalTo(priceImageView.snp.trailing).offset(10)
            make.top.equalTo(clock1.snp.bottom).offset(20)
        }
        gpsImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(priceImageView.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        gpsText1.snp.makeConstraints { make in
            make.leading.equalTo(gpsImageView.snp.trailing).offset(10)
            make.top.equalTo(priceImageView.snp.bottom).offset(20)
        }
        lineView1.snp.makeConstraints { make in
            make.top.equalTo(gpsText1.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
        address2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(lineView1.snp.bottom).offset(10)
        }
        phoneImageView2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(address2.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        phoneText2.snp.makeConstraints { make in
            make.leading.equalTo(phoneImageView2.snp.trailing).offset(10)
            make.top.equalTo(address2.snp.bottom).offset(20)
        }
        clock2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(phoneImageView2.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        clockText2.snp.makeConstraints { make in
            make.leading.equalTo(clock2.snp.trailing).offset(10)
            make.top.equalTo(phoneImageView2.snp.bottom).offset(20)
        }
        priceImageView2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(clock2.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        priceText2.snp.makeConstraints { make in
            make.leading.equalTo(priceImageView2.snp.trailing).offset(10)
            make.top.equalTo(clock2.snp.bottom).offset(20)
        }
        gpsImageView2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(priceImageView2.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        gpsText2.snp.makeConstraints { make in
            make.leading.equalTo(gpsImageView2.snp.trailing).offset(10)
            make.top.equalTo(priceImageView2.snp.bottom).offset(20)
        }
        lineView2.snp.makeConstraints { make in
            make.top.equalTo(gpsText2.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
        
        address3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(lineView2.snp.bottom).offset(10)
        }
        phoneImageView3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(address3.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        phoneText3.snp.makeConstraints { make in
            make.leading.equalTo(phoneImageView3.snp.trailing).offset(10)
            make.top.equalTo(address3.snp.bottom).offset(20)
        }
        clock3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(phoneImageView3.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        clockText3.snp.makeConstraints { make in
            make.leading.equalTo(clock3.snp.trailing).offset(10)
            make.top.equalTo(phoneImageView3.snp.bottom).offset(20)
        }
        priceImageView3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(clock3.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        priceText3.snp.makeConstraints { make in
            make.leading.equalTo(priceImageView3.snp.trailing).offset(10)
            make.top.equalTo(clock3.snp.bottom).offset(20)
        }
        gpsImageView3.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(priceImageView3.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        gpsText3.snp.makeConstraints { make in
            make.leading.equalTo(gpsImageView3.snp.trailing).offset(10)
            make.top.equalTo(priceImageView3.snp.bottom).offset(20)
        }
        lineView3.snp.makeConstraints { make in
            make.top.equalTo(gpsText3.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
        
        address4.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(lineView3.snp.bottom).offset(10)
        }
        phoneImageView4.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(address4.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        phoneText4.snp.makeConstraints { make in
            make.leading.equalTo(phoneImageView4.snp.trailing).offset(10)
            make.top.equalTo(address4.snp.bottom).offset(20)
        }
        clock4.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(phoneImageView4.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        clockText4.snp.makeConstraints { make in
            make.leading.equalTo(clock4.snp.trailing).offset(10)
            make.top.equalTo(phoneImageView4.snp.bottom).offset(20)
        }
        priceImageView4.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(clock4.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        priceText4.snp.makeConstraints { make in
            make.leading.equalTo(priceImageView4.snp.trailing).offset(10)
            make.top.equalTo(clock4.snp.bottom).offset(20)
        }
        gpsImageView4.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(priceImageView4.snp.bottom).offset(20)
            make.width.height.equalTo(20)
        }
        gpsText4.snp.makeConstraints { make in
            make.leading.equalTo(gpsImageView4.snp.trailing).offset(10)
            make.top.equalTo(priceImageView4.snp.bottom).offset(20)
        }
        lineView4.snp.makeConstraints { make in
            make.top.equalTo(gpsText4.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
    }
}

