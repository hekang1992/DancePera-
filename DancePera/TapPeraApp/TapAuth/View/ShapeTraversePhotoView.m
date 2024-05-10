//
//  ShapeTraversePhotoView.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "ShapeTraversePhotoView.h"

@implementation ShapeTraversePhotoView

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"egalite_tost_idupload"];
    }
    return _iconImageView;
}

-(UILabel *)descLable1{
    if (!_descLable1) {
        _descLable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _descLable1.numberOfLines = 0;
    }
    return _descLable1;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.image = [UIImage imageNamed:@"sabaeanIconLoginfoot"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.image = [UIImage imageNamed:@"idupload_bg"];
    }
    return _iconImageView2;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.layer.cornerRadius = TapPix7(30);
        _iconImageView3.layer.masksToBounds = YES;
        _iconImageView3.userInteractionEnabled = YES;
        _iconImageView3.image = [UIImage imageNamed:@"bab_id_card"];
    }
    return _iconImageView3;
}

-(UILabel *)mainLabel{
    if (!_mainLabel) {
        _mainLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(30)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _mainLabel.numberOfLines = 0;
        _mainLabel.text = @"Ensure a clear and legible ID card photo with no missing parts. Use a valid ID card, and avoid reflections in the photo for accuracy.";
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineSpacing = TapPix7(10);
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        _mainLabel.attributedText = [[NSAttributedString alloc] initWithString:_mainLabel.text attributes:attributes];
    }
    return _mainLabel;
}

- (UIButton *)changeBtn{
    if (!_changeBtn) {
        _changeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeBtn.layer.cornerRadius = TapPix7(30);
        _changeBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_changeBtn setBackgroundColor:[UIColor colorWithCSS:@"#3B7CFE"]];
        [_changeBtn setTitle:@"Change" forState:UIControlStateNormal];
        [_changeBtn setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        _changeBtn.hidden = YES;
        [_changeBtn addTarget:self action:@selector(changeClick) forControlEvents:UIControlEventTouchUpInside];
        [_changeBtn setBackgroundImage:[UIImage imageNamed:@"fdasfd"] forState:UIControlStateNormal];
    }
    return _changeBtn;
}

- (UIButton *)changeBtn1{
    if (!_changeBtn1) {
        _changeBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeBtn1.hidden = YES;
        _changeBtn1.layer.cornerRadius = TapPix7(30);
        _changeBtn1.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_changeBtn1 setBackgroundColor:[UIColor colorWithCSS:@"#3B7CFE"]];
        [_changeBtn1 setTitle:@"Next" forState:UIControlStateNormal];
        [_changeBtn1 setTitleColor:[UIColor colorWithCSS:@"#FFFFFF"] forState:UIControlStateNormal];
        [_changeBtn1 addTarget:self action:@selector(changeClick1) forControlEvents:UIControlEventTouchUpInside];
    }
    return _changeBtn1;
}

-(UIButton *)startBtn{
    if (!_startBtn) {
        _startBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _startBtn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)];
        [_startBtn setTitle:@"Start" forState:UIControlStateNormal];
        [_startBtn setBackgroundImage:[UIImage imageNamed:@"iaa_idupload_but"] forState:UIControlStateNormal];
        _startBtn.hidden = YES;
        [_startBtn addTarget:self action:@selector(startClick:) forControlEvents:UIControlEventTouchUpInside];
        _startBtn.titleEdgeInsets = UIEdgeInsetsMake(TapPix7(10), 0, 0, TapPix7(140));
    }
    return _startBtn;
}

-(MessageAaronPhotoView *)selectView{
    if (!_selectView) {
        _selectView = [[MessageAaronPhotoView alloc]init];
        _selectView.hidden = YES;
        _selectView.alpha = 0.5;
    }
    return _selectView;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        [self addSubview:self.iconImageView];
        [self addSubview:self.iconImageView1];
        [self addSubview:self.iconImageView2];
        [self.iconImageView2 addSubview:self.iconImageView3];
        [self.iconImageView2 addSubview:self.mainLabel];
        [self.iconImageView addSubview:self.descLable1];
        [self addSubview:self.changeBtn];
        [self addSubview:self.changeBtn1];
        [self addSubview:self.startBtn];
        [self addSubview:self.selectView];
        self.descLable1.frame = CGRectMake(TapPix7(112), 0, PeraScreenWidth - TapPix7(154), TapPix7(110));
        self.iconImageView.frame = CGRectMake(0, 0, PeraScreenWidth, TapPix7(110));
        [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.iconImageView.frame = CGRectMake(0, TapPix7(110), PeraScreenWidth, TapPix7(110));
        } completion:^(BOOL finished) {
            [self showText];
        }];
        [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.right.equalTo(self);
            make.height.mas_equalTo(TapPix7(365));
        }];
        [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView.mas_bottom).offset(TapPix7(122));
            make.centerX.equalTo(self);
            make.height.mas_equalTo(TapPix7(482));
            make.left.equalTo(self).offset(TapPix7(40));
        }];
        [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView2.mas_top).offset(-TapPix7(90));
            make.right.equalTo(self.iconImageView2.mas_right).offset(-TapPix7(40));
            make.size.mas_equalTo(CGSizeMake(TapPix7(478), TapPix7(294)));
        }];
        [self.mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.iconImageView2);
            make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
            make.top.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(24));
        }];
        [self.changeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(TapPix7(270), TapPix7(140)));
            make.top.equalTo(self.iconImageView2.mas_bottom).offset(TapPix7(54));
            make.left.equalTo(self).offset(TapPix7(40));
        }];
        [self.changeBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(TapPix7(140));
            make.top.equalTo(self.iconImageView2.mas_bottom).offset(TapPix7(54));
            make.left.equalTo(self).offset(TapPix7(40));
            make.right.equalTo(self).offset(-TapPix7(40));
        }];
        [self.startBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(TapPix7(181*2), TapPix7(79*2)));
            make.top.equalTo(self.iconImageView2.mas_bottom).offset(TapPix7(36));
            make.right.equalTo(self).offset(-TapPix7(40));
        }];
        [self.selectView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.startBtn.mas_bottom).offset(TapPix7(16));
            make.left.equalTo(self.startBtn.mas_left);
            make.right.equalTo(self.startBtn.mas_right);
            make.height.mas_equalTo(TapPix7(237));
        }];
    }
    return self;
}

- (void)showText{
    self.fullText = @"Please verify that the selected ID type matches the one you are about to upload.*";
    self.characterIndex = 0;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.03
                            target:self
                          selector:@selector(updateTyping)
                          userInfo:nil
                           repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
}

- (void)updateTyping {
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.descLable1.text = partialText;
        self.characterIndex++;
    }
}

- (void)changeClick{
    if (self.block1) {
        self.block1();
    }
}

- (void)changeClick1{
    if (self.block2) {
        self.block2();
    }
}

- (void)startClick:(UIButton *)btn{
    btn.selected = !btn.selected;
    if (self.block3) {
        self.block3(btn);
    }
    if (btn.selected) {
        [UIView animateWithDuration:0.3 animations:^{
            self.selectView.hidden = NO;
            self.selectView.alpha = 1;
        }];
    }else{
        [UIView animateWithDuration:0.3 animations:^{
            [self.selectView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.startBtn.mas_bottom).offset(TapPix7(16));
                make.left.equalTo(self.startBtn.mas_left);
                make.right.equalTo(self.startBtn.mas_right).offset(-TapPix7(260));
                make.height.mas_equalTo(TapPix7(90));
            }];
            [self layoutIfNeeded];
            [self.selectView layoutIfNeeded];
            self.selectView.alpha = 0;
        } completion:^(BOOL finished) {
            [self.selectView mas_updateConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.startBtn.mas_bottom).offset(TapPix7(16));
                make.left.equalTo(self.startBtn.mas_left);
                make.right.equalTo(self.startBtn.mas_right);
                make.height.mas_equalTo(TapPix7(237));
            }];
            [self layoutIfNeeded];
            [self.selectView layoutIfNeeded];
            self.selectView.alpha = 0;
        }];
    }
}

@end
