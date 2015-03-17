//
//  TutorialViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 09.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit


class TutorialViewController: UIViewController, UIPageViewControllerDataSource
{
    
    private var pageViewController: UIPageViewController?
    private let contentImages = ["TutorialView1", "TutorialView2", "TutorialView3"]
    
    @IBAction func startPlayingButtonPressed(sender: AnyObject)
    {
        NSUserDefaults.standardUserDefaults().setObject("no", forKey: "firstOpen")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
     
    override func viewDidLoad()
    {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController()
    {
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as UIPageViewController
            pageController.dataSource = self
        
        if contentImages.count > 0
        {
            let firstController = getItemController(0)!
            let startingViewControllers: NSArray = [firstController]
                pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        pageController.view.frame.size.height = self.view.frame.size.height - 30;
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    private func setupPageControl()
    {
        let appearance = UIPageControl.appearance()
            appearance.pageIndicatorTintColor = UIColor.grayColor()
            appearance.currentPageIndicatorTintColor = UIColor.blackColor()
            appearance.backgroundColor = UIColor.whiteColor()
    }
        
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        
        let itemController = viewController as PageItemController
        
        if  itemController.itemIndex > 0
        {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        
        let itemController = viewController as PageItemController
        
        if  itemController.itemIndex+1 < contentImages.count
        {
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }
    
    
    private func getItemController(itemIndex: Int) -> PageItemController?
    {
        
        if itemIndex < contentImages.count
        {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as PageItemController
                pageItemController.itemIndex = itemIndex
                pageItemController.imageName = contentImages[itemIndex]
                pageItemController.view = NSBundle.mainBundle().loadNibNamed(contentImages[itemIndex], owner: self, options: nil)[0] as? UIView
         return pageItemController
        }
        
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }
    
}

