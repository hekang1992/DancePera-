//
//  FontLibraFakeView.swift
//  TapPera
//
//  Created by apple on 2024/3/21.
//

import UIKit

class FontLibraFakeView: UIView {
    
   @objc var block: (() -> Void)?
    
    let SCREEN_WIDTH = UIScreen.main.bounds.size.width
    let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.bounces = true
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.contentSize = CGSize(width:SCREEN_WIDTH*4, height: 0)
        return scrollView
    }()
    
    lazy var iconImageView1: UIImageView = {
        let iconImageView = UIImageView()
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.isUserInteractionEnabled = true
        iconImageView.image = UIImage(named: "ideTabboulehFadsf")
        return iconImageView
    }()
    
    lazy var iconImageView2: UIImageView = {
        let iconImageView = UIImageView()
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.isUserInteractionEnabled = true
        iconImageView.image = UIImage(named: "hookIconFads")
        return iconImageView
    }()
    
    lazy var iconImageView3: UIImageView = {
        let iconImageView = UIImageView()
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.isUserInteractionEnabled = true
        iconImageView.image = UIImage(named: "labiaBgAsdfg")
        return iconImageView
    }()
    
    lazy var iconImageView4: UIImageView = {
        let iconImageView = UIImageView()
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.isUserInteractionEnabled = true
        iconImageView.image = UIImage(named: "clsBgFdger")
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
        iconImageView.addGestureRecognizer(tapGesture)
        return iconImageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(scrollView)
        scrollView.addSubview(iconImageView1)
        scrollView.addSubview(iconImageView2)
        scrollView.addSubview(iconImageView3)
        scrollView.addSubview(iconImageView4)
        
        scrollView.mas_makeConstraints { make in
            make?.edges.equalTo()(self)
        }
        iconImageView1.mas_makeConstraints { make in
            make?.top.equalTo()(scrollView)?.offset()(180)
            make?.width.mas_equalTo()(SCREEN_WIDTH)
        }
        iconImageView2.mas_makeConstraints { make in
            make?.top.equalTo()(scrollView)?.offset()(180)
            make?.width.mas_equalTo()(SCREEN_WIDTH)
            make?.left.equalTo()(iconImageView1.mas_right)
        }
        iconImageView3.mas_makeConstraints { make in
            make?.top.equalTo()(scrollView)?.offset()(180)
            make?.width.mas_equalTo()(SCREEN_WIDTH)
            make?.left.equalTo()(iconImageView2.mas_right)
        }
        iconImageView4.mas_makeConstraints { make in
            make?.top.equalTo()(scrollView)?.offset()(180)
            make?.width.mas_equalTo()(SCREEN_WIDTH)
            make?.left.equalTo()(iconImageView3.mas_right)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func imageTapped(_ gesture: UITapGestureRecognizer) {
        print(".................")
        self.block!()
    }
    
}
