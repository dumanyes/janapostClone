//
//  AboutAppController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 18.12.2023.
//

import UIKit
import SnapKit

class AboutAppController: UIViewController {

    private let tbviewData = ["Сәлемдеме статусы"]
    private let subtitles = ["Базаға енді"]
    private let icons = [UIImage(named: "bookmark")]
    private let gt = [UIImage(named: "gt")]

    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Біз туралы"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let labelLogo: UILabel = {
        let label = UILabel()
        label.text = "Jana Post"
        label.font = UIFont.boldSystemFont(ofSize: 37)
        label.textColor = .jp
        return label
    }()
    private let label1: UILabel = {
        let label = UILabel()
        label.text = "JANA POST - миссиямыз Қытай - Қазақстан арасындағы қарапайым заттар тасымал жүйесін цифрландыру аркылы тауардың дербес ақпаратымен тұтынушы мекенжайына дейін қамтамасыз ету."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
        

    private let label2: UILabel = {
        let label = UILabel()
        label.text = "• Pin Duo Duo (F#3 3)-ның тимді бағасы мен тауардың мол таңдауы мен"
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label3: UILabel = {
        let label = UILabel()
        label.text = "• JAÑA POST-тың жылдам жеткізу мен 24/7 қызмет көрсету жүйесі."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label4: UILabel = {
        let label = UILabel()
        label.text = "Өз саласының үздіктері өзара келісім арқылы халықаралақ деңгейдегі ресми серіктес атанды."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label5: UILabel = {
        let label = UILabel()
        label.text = "Біз - JANA POST"
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label6: UILabel = {
        let label = UILabel()
        label.text = "• Карголық жүйені уақыт талабына бейімдеп, халықаралық логистикалық компанияға айналдырған команда."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label7: UILabel = {
        let label = UILabel()
        label.text = "• Кытай маркетплейсімен ресми серіктестік алган алғашқы компания."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label8: UILabel = {
        let label = UILabel()
        label.text = "• Қазақстан бойынша 30 дан аса филиалдарға ие компания."
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50
        
        return label
    }()
    private let label9: UILabel = {
        let label = UILabel()
        label.text = "Бұл - JANA POST"
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = UIScreen.main.bounds.width - 50  
        
        return label
    }()
    
    private lazy var number: UIButton = {
        let button = UIButton()
        button.backgroundColor = .jp
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        return button
    }()

    private let numberText: UILabel = {
        let label = UILabel()
        label.text = "+7 777 027 53 40"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        view.addSubview(mainPageLabel)
        view.addSubview(labelLogo)

        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        view.addSubview(label6)
        view.addSubview(label7)
        view.addSubview(label8)
        view.addSubview(label9)
        
        view.addSubview(number)
        number.addSubview(numberText)
        
        
    }

    private func setupConstraints() {
        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(-21)
            
        }
        logoImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.top.equalTo(mainPageLabel.snp.bottom).offset(20)
            make.width.height.equalTo(35)
        }
        labelLogo.snp.makeConstraints { make in
            make.top.equalTo(mainPageLabel.snp.bottom).offset(15)
            make.leading.equalTo(logoImageView.snp.trailing).offset(12)
            
        }
        label1.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
            
        }
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
        }
        label3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(25)
        }
        label4.snp.makeConstraints { make in
            make.top.equalTo(label3.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
        }
        label5.snp.makeConstraints { make in
            make.top.equalTo(label4.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
        }
        label6.snp.makeConstraints { make in
            make.top.equalTo(label5.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(25)
        }
        label7.snp.makeConstraints { make in
            make.top.equalTo(label6.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(25)
        }
        label8.snp.makeConstraints { make in
            make.top.equalTo(label7.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(25)
        }
        label9.snp.makeConstraints { make in
            make.top.equalTo(label8.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(25)
        }
        
        number.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.height.equalTo(45)
        }
        numberText.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

