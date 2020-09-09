import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        // Home
        let homeViewController = HomeViewController()
        let homeNavigation = UINavigationController(rootViewController: homeViewController)
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "icon_home"), tag: 3)
        homeNavigation.navigationBar.isHidden = true
        homeNavigation.navigationBar.barTintColor = .white
        // Book
        let bookViewController = BookViewController()
        let bookNavgation = UINavigationController(rootViewController: bookViewController)
        bookViewController.tabBarItem = UITabBarItem(title: "Book", image: UIImage(named: "icon_profile"), tag: 3)
        bookNavgation.navigationBar.isHidden = true
        
        // Profile
        let profileViewController = ProfileViewController()
        let profileNavigation = UINavigationController(rootViewController: profileViewController)
        profileViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "icon_book"), tag: 3)
        profileNavigation.navigationBar.isHidden = true
        
        let tabbarController = TabBarViewController()
        tabbarController.viewControllers = [homeNavigation, bookNavgation, profileNavigation]
        window.rootViewController = tabbarController
        tabbarController.tabBar.tintColor = .orange
        tabbarController.tabBar.barTintColor = .white
        
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

