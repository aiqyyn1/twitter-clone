//
//  TableViewCell.swift
//  twitter clone
//
//  Created by Айдын on 11.12.2023.
//

import UIKit
import SnapKit
class TableViewCell: UITableViewCell {
    private lazy var wholeView: UIView = {
        let view = UIView()
        view.isOpaque = false  // Set opaque to false for the view
        return view
    }()
  
        private lazy var avaImage1 : UIImageView = {
               let image = UIImageView()
              image.contentMode = .scaleAspectFit
            image.layer.cornerRadius = 15
            image.clipsToBounds = true
             
              return image
          }()
        private lazy var producHuntTextSecond : UILabel = {
            let label = UILabel()
       
            label.textColor = .gray
            return label
        }()

        private lazy var producHuntText : UILabel = {
            let label = UILabel()
       
            label.textColor = .white
            return label
        }()
    private lazy var underlineView1: UIView = {
        let view = UIView()
        view.backgroundColor = .gray// Set the underline color as per your requirement
        return view
    }()
        private lazy var h2TextFirst : UILabel = {
            let label = UILabel()
 
            label.textColor = .white
            return label
        }()
        private lazy var threePointsImage :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "threepoints")
           return image
        }()
        private lazy var firstPostImage :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
            image.layer.cornerRadius = 25
            image.clipsToBounds = true
        
           return image
        }()
        private lazy var commentIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "comment-icon")
           return image
        }()
        private lazy var commentText :UILabel = {
    
            let label = UILabel()
       
            label.textColor = .systemGray
            return label
        }()
        private lazy var repostIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "repost-icon")
           return image
        }()
        private lazy var repostText :UILabel = {
    
            let label = UILabel()
    
            label.textColor = .systemGray
            return label
        }()
 
        private lazy var likeIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "like-icon")
           return image
        }()
        private lazy var likeText :UILabel = {
    
            let label = UILabel()
        
            label.textColor = .systemGray
            return label
        }()
        private lazy var diagramIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "diagram-icon")
           return image
        }()
        private lazy var diagramText :UILabel = {
    
            let label = UILabel()
          
            label.textColor = .systemGray
            return label
        }()
        private lazy var saveIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "save-icon")
           return image
    
        }()
        private lazy var shareIcon :UIImageView = {
            let image = UIImageView()
           image.contentMode = .scaleAspectFit
           image.image = UIImage(named: "share-icon")
           return image
        }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
  
           setupUI()
        self.isOpaque = false
        self.selectionStyle = .none
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    func configure(
        avaImageName: String,
        text: String,
       TextSecond: String,
        h2: String,
        PostImageName: String,
        comment: String,
        repostCount: String,
        likeCount: String,
        diagramCount: String
    ) {

        avaImage1.image = UIImage(named: avaImageName)
        producHuntText.text = text
        producHuntTextSecond.text = TextSecond
        h2TextFirst.text = h2
        firstPostImage.image = UIImage(named:PostImageName)
        commentText.text = comment
        repostText.text = repostCount
        likeText.text = likeCount
        diagramText.text = diagramCount
    }
    

}
private extension TableViewCell{


    func setupUI() {
           setupViews()
           setUpConstraints()
 
       }
func setupViews() {
    addSubview(wholeView)
    
    wholeView.backgroundColor = .black
          wholeView.addSubview(avaImage1)
    wholeView.addSubview(producHuntText)
    wholeView.addSubview(producHuntTextSecond)
    wholeView.addSubview(threePointsImage)
    wholeView.addSubview(firstPostImage)
    wholeView.addSubview(h2TextFirst)
    wholeView.addSubview(commentIcon)
    wholeView.addSubview(commentText)
    wholeView.addSubview(repostIcon)
    wholeView.addSubview(repostText)
    wholeView.addSubview(likeIcon)
    wholeView.addSubview(likeText)
    wholeView.addSubview(diagramIcon)
    wholeView.addSubview(diagramText)
    wholeView.addSubview(saveIcon)
    wholeView.addSubview(shareIcon)
    wholeView.addSubview(shareIcon)
    wholeView.addSubview(underlineView1)
}
    func setUpConstraints() {
        wholeView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        avaImage1.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(10)
            make.width.height.equalTo(50)
        }

        producHuntText.snp.makeConstraints { make in
            make.leading.equalTo(avaImage1.snp.trailing).offset(10)
            make.top.equalTo(avaImage1)
        }

        producHuntTextSecond.snp.makeConstraints { make in
            make.leading.equalTo(producHuntText.snp.trailing).offset(5)
            make.centerY.equalTo(producHuntText)
        }

        threePointsImage.snp.makeConstraints { make in
            make.leading.equalTo(producHuntTextSecond.snp.trailing).offset(5)
            make.centerY.equalTo(producHuntTextSecond)
            make.width.height.equalTo(50)
        }

        h2TextFirst.snp.makeConstraints { make in
            make.leading.equalTo(avaImage1.snp.trailing).offset(10)
            make.top.equalTo(producHuntText.snp.bottom)
        }

        firstPostImage.snp.makeConstraints { make in
            make.leading.equalTo(avaImage1.snp.trailing).offset(-25)
            make.top.equalTo(h2TextFirst.snp.bottom).offset(10)
            make.width.equalTo(400) // Увеличьте значение ширины
            make.height.equalTo(340) // Увеличьте значение высоты
        }
        commentIcon.snp.makeConstraints { make in
            make.top.equalTo(firstPostImage.snp.bottom).offset(10)
            make.leading.equalTo(firstPostImage.snp.leading).offset(10)
            make.width.height.equalTo(20)
        }

        commentText.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(commentIcon.snp.trailing).offset(10)
        }

        repostIcon.snp.makeConstraints { make in
            make.top.equalTo(firstPostImage.snp.bottom).offset(10)
            make.leading.equalTo(commentText.snp.trailing).offset(30)
            make.width.height.equalTo(20)
        }

        repostText.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(repostIcon.snp.trailing).offset(10)
        }

        likeIcon.snp.makeConstraints { make in
            make.top.equalTo(firstPostImage.snp.bottom).offset(10)
            make.leading.equalTo(repostText.snp.trailing).offset(30)
            make.width.height.equalTo(20)
        }

        likeText.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(likeIcon.snp.trailing).offset(10)
        }

        diagramIcon.snp.makeConstraints { make in
            make.top.equalTo(firstPostImage.snp.bottom).offset(10)
            make.leading.equalTo(likeText.snp.trailing).offset(30)
            make.width.height.equalTo(30)
        }

        diagramText.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(diagramIcon.snp.trailing).offset(10)
        }

        saveIcon.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(diagramText.snp.trailing).offset(10)
            make.width.height.equalTo(30)
        }

        shareIcon.snp.makeConstraints { make in
            make.centerY.equalTo(commentIcon)
            make.leading.equalTo(saveIcon.snp.trailing).offset(5)
            make.width.height.equalTo(40)
        }
         underlineView1.snp.makeConstraints { make in
         
             make.top.equalTo(shareIcon.snp.bottom)
             make.width.equalTo(500)
             make.height.equalTo(1)
        }
    
    
    }
}
