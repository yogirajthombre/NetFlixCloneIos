import UIKit

class ContentTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "moviesContent", for: indexPath)
        collectionViewCell.backgroundColor = .green
        return collectionViewCell
    }
    
    
    static let identifier : String = "contentTableViewCell"
    
    private let contentFeedTable : UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 100, height: 200)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "moviesContent")
        return collectionView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .green
        contentFeedTable.dataSource = self
        contentFeedTable.delegate = self
        contentView.addSubview(contentFeedTable)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Failed to initialize content table view cell")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentFeedTable.frame = contentView.bounds
    }

}
