import UIKit

class HeaderViewCell: UIView {
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "demonSlayer")
        return imageView
    }()
    
    private let movieName : UILabel = {
           let view = UILabel()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.font = UIFont.systemFont(ofSize: 20)
           view.text = "Demon Slayer"
           view.textColor = .red
           view.font = UIFont(name:"HelveticaNeue-Bold", size:32.0)
           return view
    }()
    
    private let playButton : UIButton = {
           let image = UIImage(systemName: "play.fill")
           let view = UIButton()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.setImage(image, for: .normal)
           view.imageView?.contentMode = .scaleAspectFit
           view.imageEdgeInsets = UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
           view.tintColor = .white
           return view
    }()
    
    private let downloadButton : UIButton = {
           let image = UIImage(systemName: "arrow.down.to.line")
           let view = UIButton()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.setImage(image, for: .normal)
           view.imageView?.contentMode = .scaleAspectFit
           view.imageEdgeInsets = UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
           view.tintColor = .white
           return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(movieName)
        addSubview(playButton)
        addSubview(downloadButton)
        addConstraintstoLayout()
    }
    
    func addConstraintstoLayout() {
        
        let movieConstraints = [
            movieName.centerXAnchor.constraint(equalTo: centerXAnchor,constant: 30),
            movieName.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -100),
            movieName.widthAnchor.constraint(equalToConstant: 250)
        ]
        
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 130),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -50),
        ]
        
        let downloadButtonConstraints = [
            downloadButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 300),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -50)
        ]
        
        NSLayoutConstraint.activate(movieConstraints)
        NSLayoutConstraint.activate(playButtonConstraints)
        NSLayoutConstraint.activate(downloadButtonConstraints)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
