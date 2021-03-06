//
//  ViewController.swift
//  SwipeToDeleteDemo
//
//  Created by  Joshua on 2021/6/30.
//

import UIKit

struct FeaturePlaylistCellViewModel {
  let name: String
  let artworkURL: String?
  let creatorName: String
}

class ViewController: UITableViewController {
  var items = ["Buy milk", "Get kids up", "Fix dinner"]

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "Swipe to delete"
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath) as UITableViewCell
    cell.textLabel?.text = items[indexPath.row]
    return cell
  }

  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
  }

  override func tableView(
    _ tableView: UITableView,
    commit editingStyle: UITableViewCell.EditingStyle,
    forRowAt indexPath: IndexPath
  ) {
    if (editingStyle == .delete) {
      items.remove(at: indexPath.row)
      tableView.reloadData()
    }
  }
}

