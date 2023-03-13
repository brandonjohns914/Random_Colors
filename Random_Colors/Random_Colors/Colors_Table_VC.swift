//
//  Colors_Table_VC.swift
//  Random_Colors
//
//  Created by Brandon Johns on 3/8/23.
//

import UIKit

class Colors_Table_VC: UIViewController {
   
    var colors: [UIColor] = []
    
    enum Cells
    {
        static let color_Cell = "Color_Cell"
    }

    enum Segues
    {
        static let to_Detail = "To_Color_DetailVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        add_Random_Colors()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func add_Random_Colors()
    {
        for _ in 0..<50
        {
            colors.append(.Create_Random_Color())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest_VC = segue.destination as! Colors_DetailVC
        dest_VC.color = sender as? UIColor
    }
}

extension Colors_Table_VC: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.color_Cell) else {
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.to_Detail, sender: color)
    }
}
