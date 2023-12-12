//
//  ViewController.swift
//  twitter clone
//
//  Created by Айдын on 10.12.2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController{
    private lazy var navBar = UIView()
    private lazy var twoButtonView = UIView()
    private lazy var bodyView = UIView()


    private lazy var namesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .black
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        return tableView
    }()
    private lazy var chitaitePublicaci : UILabel = {
        let label = UILabel()
        label.text = "Читайте публикации на"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    private lazy var lubyxYaz : UILabel = {
        let label = UILabel()
        label.text = "любых языках"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .white
        return label
    }()
    private lazy var obnovite : UILabel = {
        let label = UILabel()
        label.text = "Обновите настройки, чтобы добавить"
        label.textColor = .systemGray
        return label
    }()
    private lazy var luboiYaz : UILabel = {
        let label = UILabel()
        label.text = "любой язык."
        label.textColor = .systemGray
        return label
    }()
    private lazy var dobavitYazykButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Добавить Языки", for: .normal)
        button.layer.cornerRadius = 20
        return button
    }()
    private lazy var underlineDobavit: UIView = {
        let view = UIView()
        view.backgroundColor = .gray// Set the underline color as per your requirement
        return view
    }()
    private lazy var underlineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue // Set the underline color as per your requirement
        return view
    }()
    private lazy var dlyaVasLabel : UILabel = {
         let label = UILabel()
        label.text = "Для Вас"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    private lazy var vyChitaeteLabel : UILabel = {
         let label = UILabel()
        label.text = "Вы читаете"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    private lazy var navTwitterIcon : UIImageView = {
           let image = UIImageView()
          image.contentMode = .scaleAspectFit
          image.image = UIImage(named: "twitter-icon")
          return image
      }()


    private lazy var navSettingsIcon : UIImageView = {
           let image = UIImageView()
          image.contentMode = .scaleAspectFit
          image.image = UIImage(named: "settings-icon")
          return image
      }()
    private lazy var navProfileIcon : UIImageView = {
           let image = UIImageView()
          image.contentMode = .scaleAspectFit
          image.image = UIImage(named: "profile-icon")
          return image
      }()

    override func viewDidLoad() {
           super.viewDidLoad()
           setupUI()
      
       }
}
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2 // Two sections
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // One row per section
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.contentView.snp.makeConstraints { make in
                 make.bottom.equalToSuperview().offset(80) // Adjust the top space
             
             }
        // Determine the section and set content accordingly
        if indexPath.section == 0 {
            // Section 0
            cell.configure(
                avaImageName: "productHunt",
                text: "Product Hunt 😊 ✏️",
                TextSecond: "@ProductHunt - 2ч",
                h2: "demoing new products like",
                PostImageName: "firstPost",
                comment: "4",
                repostCount: "4",
                likeCount: "7.8K",
                diagramCount: "2"
            )
        } else if indexPath.section == 1 {
            // Section 1
            cell.configure(
                avaImageName: "twitter-icon",
                text: "Elon Musk cool 🙈 😇  ",
                TextSecond: "@elonmusk - 2ч ",
                h2: "If civilization fails, nothing else matters",
                PostImageName: "secondPost",
                comment: "5",
                repostCount: "10",
                likeCount: "15",
                diagramCount: "8"
            )
        }

        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (view.window?.windowScene?.screen.bounds.height ?? 0) * 0.1 + 350// Adjust the spacing as needed
    }
}



private extension ViewController {


    func setupUI() {
        namesTableView.delegate = self
        namesTableView.dataSource = self
        
        namesTableView.register (TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
           setupViews()
           setUpConstraints()

       }
    func setupViews() {

        view.addSubview(navBar)
        view.addSubview(twoButtonView)
        view.addSubview(bodyView)
        view.addSubview(namesTableView)
        navBar.addSubview(navProfileIcon)
        navBar.addSubview(navTwitterIcon)
        navBar.addSubview(navSettingsIcon)
        twoButtonView.addSubview(dlyaVasLabel)
        twoButtonView.addSubview(underlineView)
        twoButtonView.addSubview(vyChitaeteLabel)
        bodyView.addSubview(chitaitePublicaci)
        bodyView.addSubview(lubyxYaz)
        bodyView.addSubview(obnovite)
        bodyView.addSubview(luboiYaz)
        bodyView.addSubview(dobavitYazykButton)
        bodyView.addSubview(underlineDobavit)
     
     }
    func setUpConstraints() {


        //navbar
        navBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()

            make.height.equalToSuperview().dividedBy(12)


        }
        namesTableView.snp.makeConstraints{make in
            make.top.equalTo(bodyView.snp.bottom).offset(230)
          
            make.width.equalTo(view)
            make.height.equalTo(view)
       
        }

        navTwitterIcon.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(30)
            make.leading.equalTo(navProfileIcon.snp.trailing).offset(120)
            make.trailing.equalTo(navSettingsIcon.snp.leading)
            make.width.equalTo(50)
            make.height.equalTo(50)


        }

        navProfileIcon.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(28)
            make.leading.equalToSuperview().offset(20)

            make.width.equalTo(50)
            make.height.equalTo(50)

        }
        navSettingsIcon.snp.makeConstraints { make in
                 make.centerY.equalToSuperview().offset(30)

                 make.trailing.equalToSuperview().offset(118)
                 make.width.equalTo(50)
                make.height.equalTo(50)
             }
        //navbar

        //Two Buttons
        twoButtonView.snp.makeConstraints{make in

            make.top.equalTo(navBar.snp.top).offset(120)

        }
        dlyaVasLabel.snp.makeConstraints{make in
            make.centerY.equalToSuperview().offset(28)
            make.width.height.equalTo(100)
            make.leading.equalTo(55)
        }
        vyChitaeteLabel.snp.makeConstraints{make in
            make.centerY.equalToSuperview().offset(28)
            make.width.height.equalTo(120)
            make.leading.equalToSuperview().offset(300)
        }
        underlineView.snp.makeConstraints { make in
            make.top.equalTo(dlyaVasLabel.snp.bottom).offset(-30) // Adjust the offset to control the distance between text and underline
//            make.leading.trailing.equalTo(dlyaVasLabel)
            make.leading.equalTo(55)
            make.height.equalTo(4) // Adjust the height of the underline as needed
            make.width.equalTo(80)
        }
        // BodyView
        bodyView.snp.makeConstraints{make in
            make.top.equalTo(twoButtonView.snp.top).offset(80)
        }
        chitaitePublicaci.snp.makeConstraints{ make in
            make.leading.equalTo(35)
        }
        lubyxYaz.snp.makeConstraints{ make in
            make.top.equalTo(chitaitePublicaci.snp.top).offset(40)
            make.leading.equalTo(35)

        }
        obnovite.snp.makeConstraints{make in
            make.top.equalTo(lubyxYaz.snp.top).offset(50)
            make.leading.equalTo(35)
        }
        luboiYaz.snp.makeConstraints{make in
            make.top.equalTo(obnovite.snp.top).offset(20)
            make.leading.equalTo(35)
        }
        dobavitYazykButton.snp.makeConstraints{make in
            make.top.equalTo(luboiYaz.snp.top).offset(40)
            make.width.equalTo(200)
            make.height.equalTo(50)
            make.leading.equalTo(35)
        }
        underlineDobavit.snp.makeConstraints { make in
            make.top.equalTo(dobavitYazykButton.snp.bottom).offset(10)
            make.leading.equalTo(view)
            make.trailing.equalTo(view)
            make.width.equalTo(view)
            make.height.equalTo(1)
        }
     






    }



}


