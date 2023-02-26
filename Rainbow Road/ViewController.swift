//
//  ViewController.swift
//  Rainbow Road
//
//  Created by 라완 💕 on 21/04/1444 AH.
//

import UIKit

struct Colors {
    let UIcolor: UIColor
}

class ViewController: UIViewController {
    let colorsArray = [Colors(UIcolor: .red),Colors(UIcolor: .orange), Colors(UIcolor: .yellow), Colors(UIcolor: .green), Colors(UIcolor: .blue), Colors(UIcolor: .purple)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorRainbow", for: indexPath)
        cell.backgroundColor = colorsArray[indexPath.row].UIcolor
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}
