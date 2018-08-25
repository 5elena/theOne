//
//  ViewController.swift
//  theOne
//
//  Created by Selena on 2018/8/26.
//  Copyright © 2018年 Selena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 先宣告幾個物件：發問文字、隨答案變換的圖片、答案文字
    @IBOutlet weak var askText: UITextField!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var answerText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        func touchesBegan(_touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true) //鍵盤輸入完成後自動消失
    }
    
}
        
    @IBAction func testButton(_ sender: Any) {
        
        let question = askText.text!

        askText.text = "" //回答問題後重設為空字串
        
        if question.contains("頭髮"){ //如果答案包含頭髮
            answerText.text = "是即使沒有頭髮也很美的人" //回答文字
            answerImage.image = UIImage(named: "woman-1")} //切換到圖片woman-1
            //以下的回答邏輯都同上面這串
        else if question.contains("年紀"){
                answerText.text = "面對你就會是個孩子唷"
                answerImage.image = UIImage(named: "woman-2")
        }
        else if question.contains("星座"){
            answerText.text = "星座沒影響，你們就是很合"
            answerImage.image = UIImage(named: "woman-3")
            
        } else { //最後用else功能，若輸入以上三個以外的問題，都會這樣回答
            answerText.text = "想清楚再問吧！"
            answerImage.image = UIImage(named: "woman-4")
        }
            
        }
 
    }





