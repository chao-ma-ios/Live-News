//
//  LiveNewsPreseter.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//


import Foundation



class LiveNewsPresenter: LiveNewsListViewToPresenterProtocol {
    
    
    // MARK: - Properties
    var view: TableViewControllerProtocol?
    var interactor: LiveNewsListPresentorToInteractorProtocol?
    var router: LiveNewsListPresenterToRouterProtocol?
    
    // MARK: - Methods
    func updateView() {
        interactor?.fetchLiveNews()
    }
    
    func moveToDetail(index indexPath: Int) {
        if let view = view {
            router?.moveToDetail(view: view, index: indexPath)
        }
    }
    
    func getNewsListCount() -> Int? {
        return interactor?.news?.count
    }
    
    func getNews(index: Int) -> LiveNewsModel? {
        return interactor?.news?[index]
    }
}

// MARK: - LiveNewsListInteractorToPresenterProtocol
extension LiveNewsPresenter: LiveNewsListInteractorToPresenterProtocol {
    
    func liveNewsFetched() {
        view?.showNews()
    }
    
    func liveNewsFetchedFailed() {
        view?.showError()
    }
}


