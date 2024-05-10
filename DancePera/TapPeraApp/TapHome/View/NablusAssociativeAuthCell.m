//
//  NablusAssociativeAuthCell.m
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import "NablusAssociativeAuthCell.h"

@implementation NablusAssociativeAuthCell

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.backgroundColor = [UIColor whiteColor];
    }
    return _bgView;
}

-(UIImageView *)iconImageView1{
    if (!_iconImageView1) {
        _iconImageView1 = [[UIImageView alloc]init];
        _iconImageView1.tag = 1055;
        _iconImageView1.userInteractionEnabled = YES;
        _iconImageView1.image = [UIImage imageNamed:@"Xslt_authentication_verified"];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapTapped:)];
        [_iconImageView1 addGestureRecognizer:tapGesture];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.tag = 1066;
        _iconImageView2.userInteractionEnabled = YES;
        _iconImageView2.image = [UIImage imageNamed:@"Jit_information_personal"];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapTapped:)];
        [_iconImageView2 addGestureRecognizer:tapGesture];
    }
    return _iconImageView2;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.tag = 1077;
        _iconImageView3.userInteractionEnabled = YES;
        _iconImageView3.image = [UIImage imageNamed:@"Uaw_verified_details"];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapTapped:)];
        [_iconImageView3 addGestureRecognizer:tapGesture];
    }
    return _iconImageView3;
}

-(UIImageView *)iconImageView4{
    if (!_iconImageView4) {
        _iconImageView4 = [[UIImageView alloc]init];
        _iconImageView4.tag = 1088;
        _iconImageView4.userInteractionEnabled = YES;
        _iconImageView4.image = [UIImage imageNamed:@"Libidinous_contact_verified"];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapTapped:)];
        [_iconImageView4 addGestureRecognizer:tapGesture];
    }
    return _iconImageView4;
}

-(UIImageView *)iconImageView5{
    if (!_iconImageView5) {
        _iconImageView5 = [[UIImageView alloc]init];
        _iconImageView5.tag = 1099;
        _iconImageView5.userInteractionEnabled = YES;
        _iconImageView5.image = [UIImage imageNamed:@"Yabby_verified_card"];
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapTapped:)];
        [_iconImageView5 addGestureRecognizer:tapGesture];
    }
    return _iconImageView5;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.iconImageView1];
        [self.bgView addSubview:self.iconImageView2];
        [self.bgView addSubview:self.iconImageView3];
        [self.bgView addSubview:self.iconImageView4];
        [self.bgView addSubview:self.iconImageView5];
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.bgView);
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.bgView).offset(TapPix7(40));
        }];
        [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView1.mas_bottom).offset(TapPix7(35));
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.iconImageView1.mas_left);
        }];
        [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView2.mas_bottom).offset(TapPix7(35));
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.iconImageView1.mas_left);
        }];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
}
    
- (void)imageTapTapped:(UITapGestureRecognizer *)gesture {
    UIView *temView = [gesture view];
    NSInteger temIndex = temView.tag;
    NSString *tagStr = [NSString stringWithFormat:@"%ld",(long)temIndex];
    if (self.block1) {
        self.block1(tagStr);
    }
}

-(void)setKind:(NSString *)kind{
    _kind = kind;
    if ([_kind isEqualToString:@"0"]) {
        self.iconImageView4.hidden = NO;
        [self.iconImageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(35));
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.iconImageView1.mas_left);
        }];
        [self.iconImageView5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView4.mas_bottom).offset(TapPix7(35));
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.iconImageView1.mas_left);
        }];
    }else{
        self.iconImageView4.hidden = YES;
        [self.iconImageView5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(35));
            make.centerX.equalTo(self.bgView);
            make.left.equalTo(self.iconImageView1.mas_left);
        }];
    }
}

@end
