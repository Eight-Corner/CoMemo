//
//  ComposeViewController.swift
//  CoMemo
//
//  Created by 코너 on 2020/12/21.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBAction func close(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var memoTextView: UITextView!
    @IBAction func save(_ sender: Any) {
    //
        guard let memo = memoTextView.text,
              memo.count > 0 else {
            // 호출
            alert(message: "메모를 입력하세요.")
            return // 메소드 종료
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        // 앱을 구성하는 모든 객체로 전달
        
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ComposeViewController {
    // notification
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
    
}
