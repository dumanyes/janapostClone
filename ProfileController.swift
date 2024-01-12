//
//  ProfileController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 16.12.2023.
//

import UIKit

import SnapKit
class ProfileController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    private let tbviewData = ["Бөлімше өзгерту", "Мекенжай", "Қосымша туралы", "Тілді өзгерту", "Шығу"]
    private let subtitles = ["Базаға енді"]
    private let icons = [UIImage(named: "bookmark")]
    private let images = [UIImage(named: "gt"), UIImage(named: "gt"), UIImage(named: "gt"), nil]
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Профиль"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private let number: UILabel = {
        let label = UILabel()
        label.text = "+7775559595"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    private let receivertext: UILabel = {
        let label = UILabel()
        label.text = "Алушылар тізімі"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    private let receiverTextSub: UILabel = {
        let label = UILabel()
        label.text = "Жаңа алушы қосу"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
        return label
    }()
    private let gt: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gt")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let editnumber: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "editnumber")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var receiver: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    private lazy var language: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        view.isUserInteractionEnabled = false
        return view
    }()
    private let kaz: UILabel = {
        let label = UILabel()
        label.text = "Қазақша"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()
    private let drop: UILabel = {
        let label = UILabel()
        label.text = "⌄"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = .gray
        return label
    }()
    private let kazflag: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "kazflag")
        imageView.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var editNumberButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(editNumberTapped), for: .touchUpInside)
        return button
    }()
    @objc private func editNumberTapped() {
        let alertController = UIAlertController(title: "Телефон өзгерту", message: nil, preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Номер жазыңыз"
            textField.text = self.number.text
            textField.keyboardType = .phonePad
        }
        let saveAction = UIAlertAction(title: "Сақтау", style: .default) { _ in
            if let newPhoneNumber = alertController.textFields?.first?.text {
                if self.isValidPhoneNumber(newPhoneNumber) {
                    self.number.text = newPhoneNumber
                } else {
                    self.presentErrorAlert()
                }
                
            }
        }
        let cancelAction = UIAlertAction(title: "Артқа", style: .cancel, handler: nil)
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    private func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        let minPhoneNumberLength = 12
        let maxPhoneNumberLength = 12
        let trimmedPhoneNumber = phoneNumber.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedPhoneNumber.count >= minPhoneNumberLength && trimmedPhoneNumber.count <= maxPhoneNumberLength
    }
    private func presentErrorAlert() {
        let errorAlert = UIAlertController(title: "Error", message: "Қате номер, + тан бастап 12 сан жазыңыз", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        errorAlert.addAction(okAction)
        present(errorAlert, animated: true, completion: nil)
    }
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .clear
        tableView.register(CustomTableViewCell2.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbviewData.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 65
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell2
        if indexPath.row == tbviewData.count - 2 {
            cell.isUserInteractionEnabled = false
        }
        if indexPath.row == tbviewData.count - 1 {
            cell.isUserInteractionEnabled = false
        }
        cell.titleLabel.text = tbviewData[indexPath.row]
        if indexPath.row < images.count{
            cell.gtImageView.image = images[indexPath.row]
        } else {
            cell.gtImageView.image = nil
        }
        if indexPath.row == tbviewData.count - 1 {
            cell.titleLabel.textColor = .red
        }
        if indexPath.row == tbviewData.count - 2 {
            cell.accessoryView = language
        } else {
            cell.accessoryView = nil
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
            case 0:
                let sectionChangeViewController = ChangeLocationController()
                navigationController?.pushViewController(sectionChangeViewController, animated: true)

            case 1:
                let addressChangeViewController = AddressChangeController()
                navigationController?.pushViewController(addressChangeViewController, animated: true)

            case 2:
                let addressChangeViewController = AboutAppController()
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
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(receiverTapped))
        receiver.addGestureRecognizer(tapGesture)
        receiver.isUserInteractionEnabled = true
    }
    
    @objc private func receiverTapped() {
        let receiverListViewController = ReceiverListController()
        navigationController?.pushViewController(receiverListViewController, animated: true)
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
        view.addSubview(number)
        editNumberButton.addSubview(number)
        editNumberButton.addSubview(editnumber)
        
        
        
                
        view.addSubview(editNumberButton)
        view.addSubview(receiver)
        receiver.addSubview(receivertext)
        receiver.addSubview(receiverTextSub)
        receiver.addSubview(gt)
        
        tableView.register(CustomTableViewCell2.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        
        view.addSubview(language)
        language.addSubview(kazflag)
        language.addSubview(kaz)
        language.addSubview(drop)
        
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
        number.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-33)
            make.leading.equalToSuperview().offset(25)
        }
        editnumber.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-33)
            make.trailing.equalToSuperview().offset(-25)
            make.width.height.equalTo(18)
        }
        editNumberButton.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-33)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
        }
        receiver.snp.makeConstraints { make in
            make.top.equalTo(number.snp.bottom).inset(-20)
            make.leading.equalToSuperview().offset(17)
            make.trailing.equalToSuperview().offset(-17)
            make.height.equalTo(75)
        }
        receivertext.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview().offset(-10)
        }
        receiverTextSub.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview().offset(10)
        }
        gt.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-20)
            make.centerY.equalToSuperview()
        }
        tableView.snp.makeConstraints { make in
            make.top.equalTo(receiver.snp.bottom).offset(23)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview().offset(-17)
            make.bottom.equalToSuperview()
        }
        language.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.width.equalTo(110)
            make.height.equalTo(37)
        }
        kazflag.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(7)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(30)
        }
        kaz.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(10)
            make.centerY.equalToSuperview()
        }
        drop.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(43)
            make.centerY.equalToSuperview().offset(-3)
        }
        
        
    }
}
class CustomTableViewCell2: UITableViewCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()
    override func layoutSubviews() {
        super.layoutSubviews()

        if let accessoryView = accessoryView {
            accessoryView.frame.origin.x = contentView.frame.width - accessoryView.frame.width + 130
        }
    }

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
