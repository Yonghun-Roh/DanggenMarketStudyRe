//
//  ViewController.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/09/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var homeTableView: UITableView!
    
    let contentArray = [
    "구찌 캡모자 판매 28,000원",
    
    "자라 코트 30,000원",
    
    "추석 과자 세트 5,000원",
    
    "인테리어에 좋은 행운의 목각 코끼리 팝니다. 15,000원",
    
    "포켓몬빵 팔아요 10,000원",
    
    "실내 자전거 15,000원",

    "신생아 크리스마스 옷 팝니다 예민한 엄마는 사절 10,000원",
    
    "순금반지 1돈기준 400,000원",
    
    "나만의 드로잉 원데이 클래스 19,990원",
    
    "스스로 자라는 화초! 물 안줘도 되요! 20,000원",
    
    "작지만 강한 건전지. 자가 충전 100%. 충전 불필요. 100,000원"
    
    ]
    let nameArray = [
    "독수리2남매",
    
    "불광동보일러",
    
    "나의작은보물",
    
    "가을어느날",
    
    "온유한아빠",
    
    "작은아씨",

    "리틀리들",
    
    "내가방속의지갑",
    
    "미래의신랑",
    
    "내서랍속화분",
    
    "민트초코"
    
    ]
    // test 문구 삽입
    
    
    let nickNameArray = [
    "@회사원",
    
    "@보일러기사",
    
    "@감정사",
    
    "@카페지기",
    
    "@회사원",
    
    "@대학생",

    "@소방사",
    
    "@경찰",
    
    "@군인",
    
    "@조경사",
    
    "@아이스크림사장"
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // 쎌 리소스 파일 가져오기
        let myTableViewCellNib = UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil)
        
        // 쎌 리소스 등록
        self.homeTableView.register(myTableViewCellNib, forCellReuseIdentifier: "myTableViewCell")
        
        self.homeTableView.rowHeight = UITableView.automaticDimension
        self.homeTableView.estimatedRowHeight = 120
        
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self
        
        print("contentArray.count : \(contentArray.count)")
       
    
    }
    
    // 테이블 뷰 쎌의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.userContentLabel.text = contentArray[indexPath.row]
        cell.userNameLabel.text = nameArray[indexPath.row]
        cell.userJobLabel.text = nickNameArray[indexPath.row]
    
        
        return cell
    }
    
  
    
    
    @IBAction func moveByNotice(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SearchVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func moveByMenu(_ sender: Any) {
        
        guard let uvc1 = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc1, animated: true)
    }
    
    @IBAction func moveBySearch(_ sender: Any) {
        guard let uvc2 = self.storyboard?.instantiateViewController(withIdentifier: "NoticeVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc2, animated: true)
        
    }
    
   
    
}

