//
//  ViewController.swift
//  twitter clone
//
//  Created by Айдын on 10.12.2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    private lazy var navBar = UIView()



   
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
    
        // Do any additional setup after loading the view.
        setupUI()
    }
  
  
}
private extension ViewController {
    
    
    func setupUI() {
           setupViews()
           setUpConstraints()
       }
    func setupViews() {
        view.addSubview(navBar)
        navBar.addSubview(navProfileIcon)
        navBar.addSubview(navTwitterIcon)
        navBar.addSubview(navSettingsIcon)
 
     }
    func setUpConstraints() {
        navBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()

            make.height.equalToSuperview().dividedBy(12)

        
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

    }

    
    
}


