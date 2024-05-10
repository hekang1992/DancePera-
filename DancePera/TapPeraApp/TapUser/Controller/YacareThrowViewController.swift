//
//  YacareThrowViewController.swift
//  TapPera
//
//  Created by apple on 2024/3/1.
//

import UIKit

class YacareThrowViewController: TabaretClauseViewController {
    
    lazy var bgView: UIView = {
        let bgView = UIView()
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 3
        bgView.layer.borderColor = UIColor(css: "#413E45").cgColor
        return bgView
    }()
    
    lazy var bgView1: UIView = {
        let bgView = UIView()
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 3
        bgView.layer.borderColor = UIColor(css: "#413E45").cgColor
        return bgView
    }()
    
    lazy var bgView2: UIView = {
        let bgView = UIView()
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 3
        bgView.layer.borderColor = UIColor(css: "#413E45").cgColor
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(parameterizeAardwolfLibidinous(_:)))
        bgView.addGestureRecognizer(tapGesture)
        return bgView
    }()
    
    lazy var bgView3: UIView = {
        let bgView = UIView()
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 3
        bgView.layer.borderColor = UIColor(css: "#413E45").cgColor
        return bgView
    }()
    
    lazy var logoImageView: UIImageView = {
        let logoImageView = UIImageView()
        logoImageView.layer.borderWidth = 1
        logoImageView.layer.cornerRadius = 15
        logoImageView.layer.masksToBounds = true
        logoImageView.layer.borderColor = UIColor.white.cgColor
        logoImageView.image = UIImage.init(named: "AppIcon")
        return logoImageView
    }()
    
    lazy var mainLabel: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "TapPera"
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    lazy var mainLabel1: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "V.1.0.0"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        return mainLabel
    }()
    
    lazy var mainLabel2: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "SEC Registration"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return mainLabel
    }()
    
    lazy var mainLabel3: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "Certificate of Authority"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return mainLabel
    }()
    
    lazy var mainLabel4: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .right
        mainLabel.text = "No.CS201618664"
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    lazy var mainLabel5: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .right
        mainLabel.text = "No.1898"
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    lazy var mainLabel6: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "Company"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return mainLabel
    }()
    
    lazy var mainLabel7: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .right
        mainLabel.text = "QUICKRELEASE LENDING CORP."
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    lazy var mainLabel8: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "Website"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return mainLabel
    }()
    
    lazy var mainLabel9: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .right
        mainLabel.isUserInteractionEnabled = true
        mainLabel.text = "https://www.quickreleaselending.com";
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    lazy var iconMage: UIImageView = {
        let iconMage = UIImageView()
        iconMage.image = UIImage(named: "a2a_fdasfads_icon")
        return iconMage
    }()
    
    lazy var mainLabel10: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "Address"
        mainLabel.textColor = UIColor.init(css: "#837F89")
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        return mainLabel
    }()
    
    lazy var mainLabel11: UILabel = {
        let mainLabel = UILabel()
        mainLabel.textAlignment = .left
        mainLabel.text = "721 Benita St. Gagalangin Tondo Manila, Manila, Philippines"
        mainLabel.textColor = UIColor.init(css: "#413E45")
        mainLabel.numberOfLines = 0;
        mainLabel.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
        return mainLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addNavView()
        navView.backgroundColor = UIColor(css: "#FFFFFF")
        navView.titleLabel.text = "About Us"
        navView.block = { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        
        view.addSubview(bgView)
        view.addSubview(bgView1)
        view.addSubview(bgView2)
        view.addSubview(bgView3)
        view.addSubview(logoImageView)
        view.addSubview(mainLabel)
        view.addSubview(mainLabel1)
        view.addSubview(mainLabel2)
        view.addSubview(mainLabel3)
        view.addSubview(mainLabel4)
        view.addSubview(mainLabel5)
        bgView1.addSubview(mainLabel6)
        bgView1.addSubview(mainLabel7)
        bgView2.addSubview(mainLabel8)
        bgView2.addSubview(mainLabel9)
        bgView3.addSubview(mainLabel10)
        bgView3.addSubview(mainLabel11)
        bgView2.addSubview(iconMage)
        bgView.mas_makeConstraints { (make) in
            make?.centerX.equalTo()(view)
            make?.top.equalTo()(navView.mas_bottom)?.offset()(77)
            make?.left.equalTo()(view.mas_left)?.offset()(20)
            make?.height.mas_equalTo()(116)
        }
        
        logoImageView.mas_makeConstraints { (make) in
            make?.top.equalTo()(navView.mas_bottom)?.offset()(45)
            make?.left.equalTo()(view.mas_left)?.offset()(40)
            make?.size.mas_equalTo()(CGSize(width: 60, height: 60))
        }
        
        mainLabel.mas_makeConstraints { (make) in
            make?.top.equalTo()(logoImageView.mas_top)?.offset()(7)
            make?.left.equalTo()(logoImageView.mas_right)?.offset()(15)
            make?.size.mas_equalTo()(CGSize(width: 200, height: 18))
        }
        
        mainLabel1.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView.mas_top)?.offset()(10)
            make?.left.equalTo()(logoImageView.mas_right)?.offset()(15)
            make?.size.mas_equalTo()(CGSize(width: 200, height: 16))
        }
        
        mainLabel2.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView.mas_top)?.offset()(43)
            make?.left.equalTo()(bgView)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel3.mas_makeConstraints { (make) in
            make?.top.equalTo()(mainLabel2.mas_bottom)?.offset()(15)
            make?.left.equalTo()(bgView)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel4.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView.mas_top)?.offset()(43)
            make?.right.equalTo()(bgView)?.offset()(-20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel5.mas_makeConstraints { (make) in
            make?.top.equalTo()(mainLabel2.mas_bottom)?.offset()(15)
            make?.right.equalTo()(bgView)?.offset()(-20)
            make?.height.mas_equalTo()(18)
        }
        
        bgView1.mas_makeConstraints { (make) in
            make?.centerX.equalTo()(view)
            make?.top.equalTo()(bgView.mas_bottom)?.offset()(20)
            make?.left.equalTo()(view.mas_left)?.offset()(20)
            make?.height.mas_equalTo()(88)
        }
        
        mainLabel6.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView1.mas_top)?.offset()(20)
            make?.left.equalTo()(bgView)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel7.mas_makeConstraints { (make) in
            make?.top.equalTo()(mainLabel6.mas_bottom)?.offset()(10)
            make?.left.equalTo()(bgView)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        bgView2.mas_makeConstraints { (make) in
            make?.centerX.equalTo()(view)
            make?.top.equalTo()(bgView1.mas_bottom)?.offset()(20)
            make?.left.equalTo()(view.mas_left)?.offset()(20)
            make?.height.mas_equalTo()(88)
        }
        
        mainLabel8.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView2.mas_top)?.offset()(20)
            make?.left.equalTo()(bgView2)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel9.mas_makeConstraints { (make) in
            make?.top.equalTo()(mainLabel8.mas_bottom)?.offset()(10)
            make?.left.equalTo()(bgView)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        iconMage.mas_makeConstraints { make in
            make?.right.equalTo()(bgView2)?.offset()(-15)
            make?.centerY.equalTo()(bgView2)
            make?.size.mas_equalTo()(CGSize(width: 22, height: 22))
        }
        
        bgView3.mas_makeConstraints { (make) in
            make?.centerX.equalTo()(view)
            make?.top.equalTo()(bgView2.mas_bottom)?.offset()(20)
            make?.left.equalTo()(view.mas_left)?.offset()(20)
            make?.height.mas_equalTo()(106)
        }
        
        mainLabel10.mas_makeConstraints { (make) in
            make?.top.equalTo()(bgView3.mas_top)?.offset()(20)
            make?.left.equalTo()(bgView3)?.offset()(20)
            make?.height.mas_equalTo()(18)
        }
        
        mainLabel11.mas_makeConstraints { (make) in
            make?.top.equalTo()(mainLabel10.mas_bottom)?.offset()(10)
            make?.left.equalTo()(bgView3)?.offset()(20)
            make?.right.equalTo()(bgView3)?.offset()(-20)
        }
    }
    
    @objc func parameterizeAardwolfLibidinous(_ gesture: UITapGestureRecognizer) {
        self.nabobshipImmutableWeb("https://www.quickreleaselending.com/", type: "")
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
