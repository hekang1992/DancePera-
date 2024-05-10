//
//  KabobMangledUserView.m
//  TapPera
//
//  Created by apple on 2024/1/30.
//

#import "KabobMangledUserView.h"

@implementation KabobMangledUserView

-(void)setModelArray:(NSArray *)modelArray{
    _modelArray = modelArray;
}

- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.contentInsetAdjustmentBehavior
        = UIScrollViewContentInsetAdjustmentNever;
        _scrollView.backgroundColor = [UIColor colorWithCSS:@"#FFD817"];
    }
    return _scrollView;
}

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.backgroundColor = [UIColor colorWithCSS:@"#FFFFFF"];
    }
    return _bgView;
}

-(UIImageView *)bgImageView{
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc]init];
        _bgImageView.image = [UIImage imageNamed:@"image_personal_bg"];
        _bgImageView.userInteractionEnabled = YES;
    }
    return _bgImageView;
}

-(UILabel *)phoneLabel{
    if (!_phoneLabel) {
        _phoneLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(38)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        NSString *phone = [TAPUserDefault objectForKey:USER_TAPPHONE];
        if (ISTAPNOTSTRING(phone)) {
            _phoneLabel.text = [NSString stringWithFormat:@"Hi there, User %@!",phone];
        }else{
            _phoneLabel.text = [NSString stringWithFormat:@"Hi there, User!"];
        }
        CGFloat angleInRadians = -3.1 * M_PI / 180.0;
        _phoneLabel.transform = CGAffineTransformMakeRotation(angleInRadians);
        self.fullText = [NSString stringWithFormat:@"%@",_phoneLabel.text];
        self.characterIndex = 0;
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                                target:self
                              selector:@selector(updateTyping)
                              userInfo:nil
                               repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
        
        
    }
    return _phoneLabel;
}

-(UIButton *)iconBtn{
    if (!_iconBtn) {
        _iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_iconBtn setImage:[UIImage imageNamed:@"dacquoise_nav_icon"] forState:UIControlStateNormal];
        [_iconBtn addTarget:self action:@selector(qcClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _iconBtn;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.userInteractionEnabled = YES;
        _iconImageView1.image = [UIImage imageNamed:@"rabbinic_personal_bg"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.userInteractionEnabled = YES;
        _iconImageView2.layer.cornerRadius = TapPix7(30);
        _iconImageView2.layer.masksToBounds = YES;
        _iconImageView2.image = [UIImage imageNamed:@"HttpNameSlice"];
    }
    return _iconImageView2;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.userInteractionEnabled = YES;
        _iconImageView3.hidden = NO;
        _iconImageView3.image = [UIImage imageNamed:@"xsd_image_personal"];
    }
    return _iconImageView3;
}

-(KafLooseClickView *)click1{
    if (!_click1) {
        @TAPWeakSelf(self);
        _click1 = [[KafLooseClickView alloc]init];
        _click1.bgImageView.image = [UIImage imageNamed:@"evaluateIconBanksss"];
        [_click1.btn setTitle:@"Payment methods" forState:UIControlStateNormal];
        _click1.block = ^{
            if (weakSelf.block9) {
                weakSelf.block9();
            }
        };
    }
    return _click1;
}

-(KafLooseClickView *)click2{
    if (!_click2) {
        @TAPWeakSelf(self);
        _click2 = [[KafLooseClickView alloc]init];
        [_click2.btn setTitle:@"Customer Service" forState:UIControlStateNormal];
        _click2.bgImageView.image = [UIImage imageNamed:@"CabalistImgSlice"];
        _click2.block = ^{
            if (weakSelf.block8) {
                weakSelf.block8();
            }
        };
    }
    return _click2;
}

-(KafLooseClickView *)click3{
    if (!_click3) {
        @TAPWeakSelf(self);
        _click3 = [[KafLooseClickView alloc]init];
        [_click3.btn setTitle:@"About us" forState:UIControlStateNormal];
        _click3.bgImageView.image = [UIImage imageNamed:@"LibraryAddSlice"];
        _click3.block = ^{
            if (weakSelf.block3) {
                weakSelf.block3();
            }
        };
    }
    return _click3;
}

-(KafLooseClickView *)click4{
    if (!_click4) {
        @TAPWeakSelf(self);
        _click4 = [[KafLooseClickView alloc]init];
        [_click4.btn setTitle:@"Privacy Policy" forState:UIControlStateNormal];
        _click4.bgImageView.image = [UIImage imageNamed:@"kaddish_privacy_image"];
        _click4.block = ^{
            if (weakSelf.block1) {
                weakSelf.block1();
            }
        };
    }
    return _click4;
}

-(KafLooseClickView *)click5{
    if (!_click5) {
        @TAPWeakSelf(self);
        _click5 = [[KafLooseClickView alloc]init];
        [_click5.btn setTitle:@"Loan Agreement" forState:UIControlStateNormal];
        _click5.bgImageView.image = [UIImage imageNamed:@"late_personal_loan"];
        _click5.block = ^{
            if (weakSelf.block2) {
                weakSelf.block2();
            }
        };
    }
    return _click5;
}

-(KafLooseClickView *)click6{
    if (!_click6) {
        @TAPWeakSelf(self);
        _click6 = [[KafLooseClickView alloc]init];
        [_click6.btn setTitle:@"Log Out" forState:UIControlStateNormal];
        _click6.bgImageView.hidden = YES;
        [_click6.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _click6.bgView.layer.borderWidth = TapPix7(0);
        _click6.bgView.backgroundColor = [UIColor colorWithCSS:@"#C6C5C7"];
        _click6.bgImageView1.hidden = NO;
        _click6.bgImageView1.image = [UIImage imageNamed:@"Incremental_right_slice"];
        _click6.block = ^{
            if (weakSelf.block4) {
                weakSelf.block4();
            }
        };
    }
    return _click6;
}

-(KafLooseClickView *)click7{
    if (!_click7) {
        @TAPWeakSelf(self);
        _click7 = [[KafLooseClickView alloc]init];
        [_click7.btn setTitle:@"Deactivate Account" forState:UIControlStateNormal];
        _click7.bgImageView.hidden = YES;
        [_click7.btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _click7.bgView.layer.borderWidth = TapPix7(0);
        _click7.bgView.backgroundColor = [UIColor colorWithCSS:@"#C6C5C7"];
        _click7.bgImageView1.hidden = NO;
        _click7.bgImageView1.image = [UIImage imageNamed:@"list_icon_deactivate"];
        _click7.block = ^{
            if (weakSelf.block5) {
                weakSelf.block5();
            }
        };
    }
    return _click7;
}

-(DiscreteOrdinaryListView *)listView{
    if (!_listView) {
        _listView = [[DiscreteOrdinaryListView alloc]init];
        _listView.hidden = YES;
    }
    return _listView;
}

-(UILabel *)numLabel1{
    if (!_numLabel1) {
        _numLabel1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(96)] textColor:[UIColor colorWithCSS:@"#3B7CFE"] textAliment:NSTextAlignmentRight];
        _numLabel1.alpha = 0.1;
    }
    return _numLabel1;
}

-(UILabel *)numLabel2{
    if (!_numLabel2) {
        _numLabel2 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#3B7CFE"] textAliment:NSTextAlignmentRight];
    }
    return _numLabel2;
}

-(UILabel *)numLabel3{
    if (!_numLabel3) {
        _numLabel3 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBlackItalic size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        CGFloat angleInRadians = -3.1 * M_PI / 180.0;
        _numLabel3.transform = CGAffineTransformMakeRotation(angleInRadians);
    }
    return _numLabel3;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.scrollView];
        [self.scrollView addSubview:self.bgView];
        [self.scrollView addSubview:self.bgImageView];
        [self.bgImageView addSubview:self.phoneLabel];
        [self.bgImageView addSubview:self.iconBtn];
        [self.scrollView addSubview:self.iconImageView1];
        [self.scrollView addSubview:self.iconImageView2];
        [self.iconImageView1 addSubview:self.iconImageView3];
        [self.iconImageView1 addSubview:self.numLabel3];
        [self.iconImageView1 addSubview:self.listView];
        [self.scrollView addSubview:self.click1];
        [self.scrollView addSubview:self.click2];
        [self.scrollView addSubview:self.click3];
        [self.scrollView addSubview:self.click4];
        [self.scrollView addSubview:self.click5];
        [self.scrollView addSubview:self.click6];
        [self.scrollView addSubview:self.click7];
        [self.scrollView addSubview:self.numLabel1];
        [self.scrollView addSubview:self.numLabel2];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.scrollView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight - TabBarHeight - TapPix7(40));
    self.bgView.frame = CGRectMake(0, 0, PeraScreenWidth, PeraScreenHeight*2);
    [self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.bgView);
        make.height.mas_equalTo(TapPix7(387));
    }];
    [self.phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.bgImageView);
        make.bottom.equalTo(self.bgImageView).offset(-TapPix7(100));
        make.left.equalTo(self.bgImageView).offset(TapPix7(50));
        make.height.mas_equalTo(TapPix7(45));
    }];
    [self.iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(TapPix7(88), TapPix7(88)));
        make.right.equalTo(self.bgImageView).offset(-TapPix7(40));
        make.top.equalTo(self.bgImageView).offset(TapPix7(84));
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.scrollView);
        make.size.mas_equalTo(CGSizeMake(TapPix7(670), TapPix7(289)));
        make.top.equalTo(self.bgImageView.mas_bottom).offset(TapPix7(79));
    }];
    [self.numLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView).offset(-TapPix7(40));
        make.bottom.equalTo(self.iconImageView1.mas_top);
        make.size.mas_equalTo(CGSizeMake(TapPix7(230), TapPix7(116)));
    }];
    [self.numLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.bgView).offset(-TapPix7(40));
        make.bottom.equalTo(self.iconImageView1.mas_top);
        make.size.mas_equalTo(CGSizeMake(TapPix7(230), TapPix7(116)));
    }];
    [self.numLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView1).offset(TapPix7(95*2));
        make.size.mas_equalTo(CGSizeMake(TapPix7(400), TapPix7(40)));
        make.top.equalTo(self.iconImageView1).offset(TapPix7(14));
    }];
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(TapPix7(200));
        make.right.equalTo(self.iconImageView1).offset(-TapPix7(40));
        make.left.equalTo(self.iconImageView1).offset(TapPix7(40));
        make.bottom.equalTo(self.iconImageView1).offset(-TapPix7(40));
    }];
    [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.iconImageView1);
    }];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.bgView).offset(TapPix7(86));
        make.size.mas_equalTo(CGSizeMake(TapPix7(120), TapPix7(123)));
        make.top.equalTo(self.bgImageView.mas_bottom).offset(TapPix7(48));
    }];
    [self.click1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.iconImageView1.mas_bottom).offset(TapPix7(40));
    }];
    [self.click2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click1.mas_bottom).offset(TapPix7(40));
    }];
    [self.click3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click2.mas_bottom).offset(TapPix7(40));
    }];
    [self.click4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click3.mas_bottom).offset(TapPix7(40));
    }];
    [self.click5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click4.mas_bottom).offset(TapPix7(40));
    }];
    [self.click6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click5.mas_bottom).offset(TapPix7(40));
    }];
    [self.click7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.scrollView).offset(TapPix7(40));
        make.centerX.equalTo(self.scrollView);
        make.height.mas_equalTo(TapPix7(100));
        make.top.equalTo(self.click6.mas_bottom).offset(TapPix7(40));
    }];
    @TAPWeakSelf(self);
    @TAPStrongSelf(weakSelf);
    self.listView.block = ^(NSInteger index) {
        NSString *inde = [NSString stringWithFormat:@"%ld",index];
        weakSelf.numLabel1.text = [NSString stringWithFormat:@"%@/%ld",inde,strongSelf->_modelArray.count];
        weakSelf.numLabel2.text = [NSString stringWithFormat:@"%@/%ld",inde,strongSelf->_modelArray.count];
        AachenXanthippeOredrModel *model = strongSelf->_modelArray[index-1];
        NSString *imageUrl = model.supernatural;
        [weakSelf.iconImageView2 sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:[UIImage imageNamed:@"HttpNameSlice"]];
        weakSelf.numLabel3.text = model.annihilation;
    };
    self.listView.block1 = ^(AachenXanthippeOredrModel * _Nonnull model) {
        if (weakSelf.block7) {
            weakSelf.block7(model);
        }
    };
    [self.click7 setNeedsLayout];
    [self layoutIfNeeded];
    CGFloat maxY = CGRectGetMaxY(self.click7.frame);
    TAPLog(@"maxY>>>>>>>>>%f",maxY);
    self.scrollView.contentSize = CGSizeMake(0, maxY+TapPix7(40));
}

- (void)qcClick{
    if (self.block6) {
        self.block6();
    }
}

- (void)updateTyping{
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.phoneLabel.text = partialText;
        self.characterIndex++;
    }
}

@end
