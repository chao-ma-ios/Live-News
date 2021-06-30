//
//  LiveNewsListViewController.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//
import UIKit
import Alamofire




class LiveNewsListViewController: UIViewController, TableViewControllerProtocol{
    

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    var presenter: LiveNewsListViewToPresenterProtocol?
    var router: LiveNewsRouter?
    var selectedIndex = 0
    var detailData : [Any] = []
    
   
    
    
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        
        presenter?.updateView()
        
    }
    
   
    
    
   
    
    private func setUpTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        
        
    
    
        tableView.register(UINib(nibName: "LiveNewsTableViewCell", bundle: .main), forCellReuseIdentifier: "LiveNewsTableViewCell")
    }
}
// MARK: - UITableViewDataSource
extension LiveNewsListViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getNewsListCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LiveNewsTableViewCell", for: indexPath) as? LiveNewsListTableViewCell
        let row = indexPath.row
        let news = presenter?.getNews(index: row)
        
        selectedIndex = indexPath.row
        detailData.append(news!)
        
        
        guard let title = news?.title, let author = news?.author, let description = news?.description else {
            return cell ?? UITableViewCell()
            
            
        }
        cell?.setCell(title: title, author: author, description: description)
        return cell ?? UITableViewCell()
        
        
        cell?.setCell(title: title, author: author, description: description)
        return cell ?? UITableViewCell()
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedIndex = indexPath.row
        
        presenter?.moveToDetail(index:self.selectedIndex)
       
        
//        let vc = storyboard.instantiateInitialViewController()!
//        self.present(vc, animated:true, completion: nil)
//         self.present(vc, animated: true, completion: nil)
        
        
//
//
//
//        presenter?.getNews(indexPath: indexPath)
//        tableView.deselectRow(at: indexPath, animated: true)
        
        
//        
//
    
    }

        
    }


// MARK: - UITableViewDelegate
extension LiveNewsListViewController: UITableViewDelegate {}

// MARK: - LiveNewsListPresenterToViewProtocol
extension LiveNewsListViewController: LiveNewsListPresenterToViewProtocol {

    func showNews() {
        tableView.reloadData()
    }
    
    func showError() {
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching News", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
