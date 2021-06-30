//
//  LiveNewsProtocols.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//

import Foundation
import UIKit

protocol LiveNewsListPresenterToViewProtocol: AnyObject {
    func showNews()
    func showError()
}

protocol LiveNewsListInteractorToPresenterProtocol: AnyObject {
    func liveNewsFetched()
    func liveNewsFetchedFailed()
}

protocol LiveNewsListPresentorToInteractorProtocol: AnyObject {
    var presenter: LiveNewsListInteractorToPresenterProtocol? { get set }
    var news: [LiveNewsModel]? { get }
    
    func fetchLiveNews()
}

protocol LiveNewsListViewToPresenterProtocol: AnyObject {
    var view: TableViewControllerProtocol? { get set }
    var interactor: LiveNewsListPresentorToInteractorProtocol? { get set }
    var router: LiveNewsListPresenterToRouterProtocol? { get set }
   
    func updateView()
    func getNewsListCount() -> Int?
    func getNews(index: Int) -> LiveNewsModel?
    func moveToDetail(index: Int)
}

protocol LiveNewsListPresenterToRouterProtocol: AnyObject {
    static func createModule() -> UIViewController
    func moveToDetail(view: TableViewControllerProtocol, index: Int)
    
}

protocol TableViewControllerProtocol {
    func showNews()
    func showError()
    var navigationController: UINavigationController? { get }
}
