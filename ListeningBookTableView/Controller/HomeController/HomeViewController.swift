
import UIKit

class HomeViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.sectionFooterHeight = 0
        tableview.backgroundColor = .white
        tableview.register(ListenBookHeaderView.self, forHeaderFooterViewReuseIdentifier: "ListenBookHeaderView")
        tableview.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
        tableview.register(FeaturedTableViewCell.self, forCellReuseIdentifier: "FeaturedTableViewCell")
        tableview.register(LatestedTableViewCell.self, forCellReuseIdentifier: "LatestedTableViewCell")
        tableview.register(CaurseTableViewCell.self, forCellReuseIdentifier: "CaurseTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    var dataHeader = [HeaderModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpContraints()
        dataHeader = HeaderModel.getList()
    }
    func setUpUI(){
        self.tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    func setUpContraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
    }
    
    @objc func nextButtonTapped(_ sender: UIButton) {
        let tag = sender.tag
        
        if tag == 1 {
            let featudedHomeController = FeaturedHomeViewController()
            featudedHomeController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(featudedHomeController, animated: true)
        } else if tag == 2 {
            let latestedHomeController = LatestedHomeViewController()
            latestedHomeController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(latestedHomeController, animated: true)
        } else if tag == 3 {
            let courseHomeController = CourseHomeViewController()
            courseHomeController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(courseHomeController, animated: true)
        }
    }
}
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "ListenBookHeaderView") as! ListenBookHeaderView
        header.nextButton.tag = section
        header.nextButton.addTarget(self, action: #selector(nextButtonTapped(_:)), for: .touchUpInside)
        header.data = dataHeader[section]
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if  indexPath.section == 3 {
            let detaiCousePlay = DetailCoursePlayViewController()
            detaiCousePlay.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(detaiCousePlay, animated: true)
        }
        else {
            let detaiBook = DetailBookViewController()
            self.navigationController?.pushViewController(detaiBook, animated: true)
        }
        
        
    }
}
extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return 1}
        else if section == 1 {return 1}
        
        else {return 5}
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
            
            cell.delegate = self
            
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturedTableViewCell", for: indexPath) as! FeaturedTableViewCell
            
            cell.delegate = self
            
            return cell
        }
        else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LatestedTableViewCell", for: indexPath) as! LatestedTableViewCell
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CaurseTableViewCell", for: indexPath) as! CaurseTableViewCell
            return cell
        }
    }
    
    
}

extension HomeViewController: HomeTableViewCellDelegate {
    func homeTableViewCellDidSelectItemAt(index: Int) {
    }
}
extension HomeViewController: FeaturedTableViewCellDelegate {
     func featuredTableViewCellDidSelectItemAt(index: Int) {
        let detailBookViewController = DetailBookViewController()
        detailBookViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailBookViewController, animated: true)
    }
}
