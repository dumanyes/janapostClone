//
//  OrdersController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 16.12.2023.
//

import UIKit

import SnapKit

class OrdersController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tbviewData = ["Күтілуде", "Қоймада", "Жолда", "Шекара", "Сұрыптау", "Бөлімше", "Алынды"]
    private let gt = [UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt")]
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Тапсырыс"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    private lazy var searchView: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    
    private let searchLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "searchLogo")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let searchLabel: UILabel = {
        let label = UILabel()
        label.text = "Search"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
        return label
    }()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .clear
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private lazy var infoview: UIView = {
        let view = UIView()
        view.backgroundColor = .info
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    private let infotext: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    private lazy var addorder: UIButton = {
        let button = UIButton()
        button.backgroundColor = .addorder
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(addOrderButtonTapped), for: .touchUpInside)
        
        return button
    }()
    private let addordertext: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "+", attributes: [
            .font: UIFont.boldSystemFont(ofSize: 18),
            .foregroundColor: UIColor.white
        ])
        attributedText.append(NSAttributedString(string: " Тапсырыс қосу", attributes: [
            .font: UIFont.systemFont(ofSize: 15),
            .foregroundColor: UIColor.white
        ]))
        
        label.attributedText = attributedText
        return label
    }()
    
    @objc private func addOrderButtonTapped() {
        
        let newScreenViewController = StockController()
        navigationController?.pushViewController(newScreenViewController, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbviewData.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 55.0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell

        cell.titleLabel.text = tbviewData[indexPath.row]
        cell.gtImageView.image = gt[indexPath.row]

           
        if indexPath.row == 0 {
            cell.contentView.addSubview(infoview)
            infoview.addSubview(infotext)
            infoview.snp.makeConstraints { make in
                make.trailing.equalToSuperview().offset(-16)
                make.centerY.equalToSuperview()
                make.width.equalTo(22)
                make.height.equalTo(30)
            }
            infotext.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.centerY.equalToSuperview()
            }
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            let sectionChangeViewController = WaitingController()
            navigationController?.pushViewController(sectionChangeViewController, animated: true)

        case 1,2,3,4,5:
            let addressChangeViewController = StockController()
            navigationController?.pushViewController(addressChangeViewController, animated: true)

        case 6:
            let addressChangeViewController = TakenController()
            navigationController?.pushViewController(addressChangeViewController, animated: true)

        default:
            break
        }
    }
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        setupViews()
        setupConstraints()
        setupTableView()
    }
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        view.addSubview(mainPageLabel)
        
        view.addSubview(searchView)
        searchView.addSubview(searchLogo)
        searchView.addSubview(searchLabel)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        view.addSubview(infoview)
        infoview.addSubview(infotext)
        
        view.addSubview(addorder)
        addorder.addSubview(addordertext)
    }
    private func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-73)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(-20)
            make.width.height.equalTo(25)
        }

        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(7)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(-21)
        }
        searchView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-15)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.height.equalTo(48)
        }
        searchLogo.snp.makeConstraints { make in
            make.leftMargin.equalTo(20)
            make.centerY.equalToSuperview()
            make.width.equalTo(13)
            make.height.equalTo(13)
        }
        searchLabel.snp.makeConstraints { make in
            make.leftMargin.equalTo(48)
            make.centerY.equalToSuperview()
        }
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchView.snp.bottom).offset(20)
            make.leading.bottom.equalToSuperview()
            make.trailing.equalToSuperview().offset(-20)
        }
        infoview.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(25)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        infotext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        addorder.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.centerX.equalToSuperview()
            make.width.equalTo(160)
            make.height.equalTo(34)
        }
        addordertext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
class CustomTableViewCell: UITableViewCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()
    let gtImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupUI() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(gtImageView)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }
        gtImageView.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.height.equalTo(12)
        }
    }
}
