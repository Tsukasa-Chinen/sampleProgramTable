//
//  ViewController.swift
//  sampleProgramTable
//
//  Created by Tsukasa Chinen on 2017/10/30.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    var proArray = [
         "C言語"
        ,"Swift"
        ,"PHP"
        ,"Javascript"
        ,"Ruby"
        ,"Java"
        ,"Python"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return proArray.count
    }

    /* 3. リストに表示する文字列を決定し表示 */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /* 文字を表示するセルの取得 */
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        /* 表示したい文字の設定 （行数の設定で指定した数だけループされる）　*/
        cell.textLabel?.text = proArray[indexPath.row]
        cell.textLabel?.textColor = UIColor.brown
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        /* 文字を設定したセルを返す */
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

