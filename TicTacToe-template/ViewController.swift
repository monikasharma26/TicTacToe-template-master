//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Stored Properties
    @IBOutlet var msg: UIView!
    
    let winpossibilites = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6],[0,3,6],[1,4,7],[2,5,8]]
    
    
    var start = [0,0,0,0,0,0,0,0,0]
    var player = 1
    var active = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playbtn(_ sender: UIButton) {
        
        let pos = sender.tag - 1
        if start[pos] == 0 && active {
            start[pos] = player
            if player == 1{
                sender.setImage(UIImage(named: "nought.png"), for: [])
                self.player = 2
            }
            else{
                sender.setImage(UIImage(named: "cross.png"),for: [])
                player = 1
            }
        }
        
        for c in winpossibilites{
            if start[c[0]] != 0 &&
                start[c[1]] ==
                start[c[2]] &&
                start[c[2]] ==
                start[c[0]]
            {
                active = false
                
                if start[c[0]] == 1{
                    print("winer is first")
                    
                    //msg.settext = "winer is first"
                }
                else{
                     //msg.Text = "winner is second"
                }
            }
        }
    }
}

