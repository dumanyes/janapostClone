//
//  ViewController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 14.12.2023.
//

import UIKit

import SnapKit

class ViewController: UIViewController{
    

    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Басты бет"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    private let gradientImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gradient")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let pinlogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pinlogo")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.white.cgColor
        return imageView
    }()
    
    private let weLabel: UILabel = {
        let label = UILabel()
        label.text = "Біз Пиндодоныың ресми"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let partnerLabel: UILabel = {
        let label = UILabel()
        label.text = "серіктесіміз"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    
    private lazy var infoview: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var infoview1: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var infoview2: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var infoview3: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    
    
    private let info1: UILabel = {
        let label = UILabel()
        label.text = "3711957+"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let info11: UILabel = {
        let label = UILabel()
        label.text = "Сәлемдеме"
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    private let info2: UILabel = {
        let label = UILabel()
        label.text = "206415"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let info22: UILabel = {
        let label = UILabel()
        label.text = "Қолданушы"
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    private let info3: UILabel = {
        let label = UILabel()
        label.text = "29филиал"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let info33: UILabel = {
        let label = UILabel()
        label.text = "Қазақстан бойынша"
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    private let info4: UILabel = {
        let label = UILabel()
        label.text = "7жыл"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let info44: UILabel = {
        let label = UILabel()
        label.text = "Тәжірибе"
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    private lazy var biginfo1: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var biginfo2: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    
    private let moneyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "info1")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    private let locationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "location")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "4.7$ / "
        label.font = UIFont.boldSystemFont(ofSize: 14)

        return label
    }()
    private let priceLabel1: UILabel = {
        let label = UILabel()
        label.text = "1 кг"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let priceLabel2: UILabel = {
        let label = UILabel()
        label.text = "Біздің тариф"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let locationLabel1: UILabel = {
        let label = UILabel()
        label.text = "Филиалдардың"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let locationLabel2: UILabel = {
        let label = UILabel()
        label.text = "Мекенжайлары"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let arrow: UILabel = {
        let label = UILabel()
        label.text = ">"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var aboutus: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "Біз туралы"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    
    private let label2: UILabel = {
        let label = UILabel()
        label.text = "JAÑA POST - танымал Кытай платформаларынан селемдемелердін артурлі турлерін тасымалдайтын сенімді жене жылдам жеткізу кызметі, оны баска жеткізу кызметтері эркашан жылдам жане сенімді баскара бермейді."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 10
        return label
    }()
    private lazy var playView: UIView = {
        let view = UIView()
        view.backgroundColor = .jp
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var playView2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.jp.cgColor
        return view
    }()
    private let playText1: UILabel = {
        let label = UILabel()
        label.text = "Видеоны көру"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    private let playText2: UILabel = {
        let label = UILabel()
        label.text = "Толық көру"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .jp
        return label
    }()
    private let playImage1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "play.circle")
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .white
        return imageView
    }()
    private let playImage2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "arrow.up.forward.app")
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .jp
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
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 2000)
        setupUI()
    }
}

private extension ViewController {
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        
        contentView.addSubview(logoImageView)
        contentView.addSubview(mainPageLabel)
        contentView.addSubview(gradientImageView)
        
        gradientImageView.addSubview(pinlogoImageView)
        gradientImageView.addSubview(weLabel)
        gradientImageView.addSubview(partnerLabel)
        
        contentView.addSubview(infoview)
        contentView.addSubview(infoview1)
        contentView.addSubview(infoview2)
        contentView.addSubview(infoview3)
        
        infoview.addSubview(info1)
        infoview.addSubview(info11)
        
        infoview1.addSubview(info2)
        infoview1.addSubview(info22)
        
        infoview2.addSubview(info3)
        infoview2.addSubview(info33)
        
        infoview3.addSubview(info4)
        infoview3.addSubview(info44)
        
        contentView.addSubview(biginfo1)
        contentView.addSubview(biginfo2)
        
        biginfo1.addSubview(moneyImageView)
        biginfo1.addSubview(priceLabel)
        biginfo1.addSubview(priceLabel1)
        biginfo1.addSubview(priceLabel2)
        
        biginfo2.addSubview(locationImageView)
        biginfo2.addSubview(locationLabel1)
        biginfo2.addSubview(locationLabel2)
        biginfo2.addSubview(arrow)
        
        contentView.addSubview(aboutus)
        aboutus.addSubview(label1)
        aboutus.addSubview(label2)
        aboutus.addSubview(playView)
        aboutus.addSubview(playView2)
        playView.addSubview(playText1)
        playView.addSubview(playImage1)
        playView2.addSubview(playText2)
        playView2.addSubview(playImage2)
    
    }
    
    func setupConstraints() {
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.height.equalTo(scrollView)
        }
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-73)
            make.top.equalTo(contentView.safeAreaLayoutGuide).inset(-20)
            make.width.height.equalTo(25)
        }

        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(7)
            make.top.equalTo(contentView.safeAreaLayoutGuide).offset(-21)
        }
        
        gradientImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImageView.snp.bottom).inset(-15)
            make.width.equalTo(350)
            make.height.equalTo(145)
            make.leftMargin.equalTo(25)
            make.rightMargin.equalTo(25)
        }
        
        pinlogoImageView.snp.makeConstraints { make in
            make.top.equalTo(gradientImageView).inset(13)
            make.left.equalTo(gradientImageView).inset(13)
            make.width.height.equalTo(35)
        }
        
        weLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().offset(13)
            make.centerY.equalToSuperview()
        }
        partnerLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().offset(13)
            make.top.equalTo(weLabel.snp.bottom).inset(-10)
        }
        infoview.snp.makeConstraints { make in
            make.top.equalTo(gradientImageView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
            make.width.equalTo(160)
            make.height.equalTo(80)
        }
        infoview1.snp.makeConstraints { make in
            make.top.equalTo(gradientImageView.snp.bottom).offset(20)
            make.trailing.equalToSuperview().offset(-25)
            make.width.equalTo(160)
            make.height.equalTo(80)
        }
        infoview2.snp.makeConstraints { make in
            make.top.equalTo(infoview.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(25)
            make.width.equalTo(160)
            make.height.equalTo(80)
        }
        infoview3.snp.makeConstraints { make in
            make.top.equalTo(infoview1.snp.bottom).offset(8)
            make.trailing.equalToSuperview().offset(-25)
            make.width.equalTo(160)
            make.height.equalTo(80)
        }
        info1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-12)
        }
        info11.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(17)
        }
        info2.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-12)
        }
        info22.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(17)
        }
        info3.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-12)
        }
        info33.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(17)
        }
        info4.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-12)
        }
        info44.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(17)
        }
        
        biginfo1.snp.makeConstraints { make in
            make.top.equalTo(infoview2.snp.bottom).offset(17)
            make.leading.equalToSuperview().offset(25)
            make.width.equalTo(165)
            make.height.equalTo(100)
        }
        biginfo2.snp.makeConstraints { make in
            make.top.equalTo(infoview3.snp.bottom).offset(17)
            make.trailing.equalToSuperview().offset(-25)
            make.width.equalTo(165)
            make.height.equalTo(100)
        }
        
        moneyImageView.snp.makeConstraints { make in
            make.top.equalTo(biginfo1).inset(10)
            make.left.equalTo(biginfo1).inset(13)
            make.width.height.equalTo(29)
        }
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(moneyImageView.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(13)
            
        }
        priceLabel1.snp.makeConstraints { make in
            make.top.equalTo(moneyImageView.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(55)
            
        }
        priceLabel2.snp.makeConstraints { make in
            make.top.equalTo(priceLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(13)
            
        }
        locationImageView.snp.makeConstraints { make in
            make.top.equalTo(biginfo2).inset(10)
            make.left.equalTo(biginfo2).inset(13)
            make.width.height.equalTo(29)
        }
        locationLabel1.snp.makeConstraints { make in
            make.top.equalTo(locationImageView.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(13)
            
        }
        locationLabel2.snp.makeConstraints { make in
            make.top.equalTo(locationLabel1.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(13)
            
        }
        arrow.snp.makeConstraints { make in
            make.top.equalTo(biginfo2).inset(13)
            make.trailing.equalToSuperview().inset(15)
        }
        
        aboutus.snp.makeConstraints { make in
            make.top.equalTo(biginfo1.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.height.equalTo(240)
        }

        label1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
        }
        label2.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(40)
        }
        playView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.top.equalTo(label2.snp.bottom).offset(10)
            make.height.equalTo(45)
            
            make.width.equalToSuperview().multipliedBy(0.5).offset(-15)
        }

        playView2.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalTo(label2.snp.bottom).offset(10)
            make.height.equalTo(45)
            make.width.equalToSuperview().multipliedBy(0.5).offset(-15)
        }
        playText1.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(12)
            make.centerY.equalToSuperview()
        }
        playText2.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-6)
            make.centerY.equalToSuperview()
        }
        playImage1.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
        }
        playImage2.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-15)
            make.centerY.equalToSuperview()
        }
    }
}

