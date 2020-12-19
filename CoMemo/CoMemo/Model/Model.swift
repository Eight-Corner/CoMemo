//
//  Model.swift
//  CoMemo
//
//  Created by 코너 on 2020/12/19.
//

import Foundation

class Memo {
    // 내용과 날짜를 저장
    var content: String // 메모 저장
    var insertDate: Date //메모를 추가한 날짜 저장

    init(content: String) {
        self.content = content
        insertDate = Date() // 현재 날짜를 바로 저장하기 때문에 별도의 파라미터를 필요 하지 않는다.
    }
    
    static var dummyMemoList = [ // 테이블 뷰에 표시할 더미를 배열에 미리 저장
        Memo(content: "Memo App by Corner"),
        Memo(content: "♥️ + 👍 = 🥰")
    ]
    
}

