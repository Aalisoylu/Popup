//
//  JsonPlaceHolderViewController.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.

import Alamofire
import UIKit

class JsonPlaceHolderViewController: UIViewController {
    @IBOutlet var tableViewJson: UITableView!

    private let jsonTableView: JsonTableView = JsonTableView()
    private let jsonService: JsonPlaceHolderProtocol = JsonPlaceHolderService()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initDelegete()
        initService()
    }

    private func initDelegete() {
        tableViewJson.delegate = jsonTableView
        tableViewJson.dataSource = jsonTableView
        jsonTableView.delegate = self
    }

    private func initService() {
        jsonService.fetchAllPosts { [weak self] models in
            self?.jsonTableView.update(items: models)
            self?.tableViewJson.reloadData()
        } onFail: { data in
            print(data ?? "")
        }
    }
}

extension JsonPlaceHolderViewController: JsonTableViewOutput {
    func onSelected(item: PostModel) {
        print(item.body ?? "")
    }
}
