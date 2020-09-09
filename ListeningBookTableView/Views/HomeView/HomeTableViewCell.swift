import UIKit

protocol HomeTableViewCellDelegate {
    func homeTableViewCellDidSelectItemAt(index: Int)
}

class HomeTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Home"
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var homeButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var collectionView: UICollectionView = {
        let screenWidth = UIScreen.main.bounds.width - 60
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: screenWidth, height: screenWidth / 32 * 15)
        var collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.register(IconHomeCell.self, forCellWithReuseIdentifier: "IconHomeCell")
        collectionview.backgroundColor = .white
        collectionview.showsHorizontalScrollIndicator = false
        collectionview.heightAnchor.constraint(equalToConstant: screenWidth / 32 * 15).isActive = true
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        return collectionview
    }()
    
    var delegate: HomeTableViewCellDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        collectionView.delegate = self
        collectionView.dataSource = self
        self.addSubview(collectionView)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
extension HomeTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IconHomeCell", for: indexPath) as! IconHomeCell
        return cell
    }
    
    
}
extension HomeTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
}

extension HomeTableViewCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.homeTableViewCellDidSelectItemAt(index: indexPath.row)
        
    }
}
