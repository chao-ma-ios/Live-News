//
//  LiveNewsRouter.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//
import Foundation
import UIKit

class LiveNewsRouter: LiveNewsListPresenterToRouterProtocol{
    
    
    
    
    var view: LiveNewsListViewController?
    func moveToDetail(view: TableViewControllerProtocol, index: Int) {
        let detailViewController = LiveNewDetailView()
        print(index)
        detailViewController.indexHolder = index
        //DetailViewWireframe.createDetailModule(view: detailViewController)
        view.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    // MARK: - Methods
    
    class func createModule() -> UIViewController {
        
        let view = LiveNewsListViewController()
        let presenter: LiveNewsListViewToPresenterProtocol & LiveNewsListInteractorToPresenterProtocol = LiveNewsPresenter()
        let interactor: LiveNewsListPresentorToInteractorProtocol = LiveNewsInteractor()
        let router: LiveNewsListPresenterToRouterProtocol = LiveNewsRouter()
       
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    
    
    
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
}
