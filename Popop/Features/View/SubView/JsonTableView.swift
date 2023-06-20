//
//  JsonTableView.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//

import Foundation
import UIKit

protocol JsonTableViewProtocol {
    func update(items: [PostModel])
}

protocol JsonTableViewOutput: AnyObject {
    func onSelected(item: PostModel)
}

// MARK: - JSON TABLE VIEW CLASS

final class JsonTableView: NSObject {
    lazy var items: [PostModel] = []

    /// Json TableView Output Models
    weak var delegate: JsonTableViewOutput?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row].title
        cell.detailTextLabel?.text = items[indexPath.row].body
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.onSelected(item: items[indexPath.row])
    }
}

// MARK: - TABLE VIEW EXTENSION

extension JsonTableView: UITableViewDelegate, UITableViewDataSource { }

// MARK: - PROTOCOL EXTENSION

extension JsonTableView: JsonTableViewProtocol {
    func update(items: [PostModel]) {
        self.items = items
    }
}
