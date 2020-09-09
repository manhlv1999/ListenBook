import UIKit

class PageViewController: UIPageViewController {
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    var pages = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
        setViewControllerIndex(index: 0)
    }
    func setupUI(){
        dataSource = self
        delegate = self
        
        let page1 = FeaturedHomeViewController()
        page1.showHeader = false
        page1.backButon.isHidden = true
        page1.tableView.tableHeaderView = nil
//        page1.tableView.reloadData()
        let page2 = LatestedHomeViewController()
        page2.showHeader = false
        page2.backButon.isHidden = true
        
        let page3 = CourseHomeViewController()
        page3.showHeader = false
        page3.backButon.isHidden = true
        
        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
    func setViewControllerIndex(index: Int){
        setViewControllers([pages[index]], direction: .forward, animated: true, completion: nil)
    }

}
extension PageViewController: UIPageViewControllerDelegate {
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        pages.count
    }
}
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = pages.firstIndex(of: viewController) {
            if viewControllerIndex == 0 {
                return pages.last
            }
            else {
                return pages[viewControllerIndex - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = pages.firstIndex(of: viewController) {
            if viewControllerIndex < pages.count - 1 {
                return pages[viewControllerIndex + 1]
            }
            else {
                return pages.first
            }
        }
        return nil
    }
}
