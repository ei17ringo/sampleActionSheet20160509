//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2016/06/03.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        
        //アクションシートを作る
        var alertController = UIAlertController(
            title: "アクティビティ選択", message: "今日行くアクティビティを選んでください", preferredStyle: .ActionSheet
        )

        
        // アクション1ボタンを追加
        alertController.addAction(UIAlertAction(title: "バスケ", style: .Default, handler:{ action in self.myAction("バスケ") } ) )
        
        // アクション2ボタンを追加
        alertController.addAction(UIAlertAction(title: "ヨガ", style: .Default, handler:{ action in self.myAction("ヨガ") } ) )
       
        // 削除ボタンを追加
        alertController.addAction(UIAlertAction(title: "ムエタイ", style: UIAlertActionStyle.Destructive, handler:{ action in self.myDelete() } ) )
        
        
        // キャンセルボタンを追加
        alertController.addAction(UIAlertAction(title: "今日はやめておく", style: UIAlertActionStyle.Cancel, handler:{ action in self.myCansel() } ) )
        
        
        //アラートを表示する(重要)
        presentViewController(alertController, animated: true, completion: nil)
    
        
    }
    
    //TODO:選んだアクティビティがデバッグエリアに表示されるようにしてください
    
    //アクションが選択された時呼ばれるメソッド
    func myAction(name:String){
        print(name)
    }
 
//    //アクションが選択された時呼ばれるメソッド
//    func myAction2(){
//        print("ヨガ")
//    }
    
    //削除が選択された時呼ばれるメソッド
    func myDelete(){
        print("ムエタイ")
    }

    //キャンセルが選択された時呼ばれるメソッド
    func myCansel(){
        print("今日はやめとく")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

