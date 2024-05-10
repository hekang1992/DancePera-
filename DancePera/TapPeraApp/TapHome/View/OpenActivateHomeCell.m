//
//  OpenActivateHomeCell.m
//  TapPera
//
//  Created by apple on 2024/1/16.
//

#import "OpenActivateHomeCell.h"

@implementation OpenActivateHomeCell

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
        _iconImageView1.image = [UIImage imageNamed:@"formalNameHome"];
    }
    return _iconImageView1;
}

-(UIImageView *)iconImageView2{
    if (!_iconImageView2) {
        _iconImageView2 = [[UIImageView alloc]init];
        _iconImageView2.image = [UIImage imageNamed:@"fabliauLeftHome"];
    }
    return _iconImageView2;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.image = [UIImage imageNamed:@"yabbiRightHome"];
    }
    return _iconImageView3;
}

-(UIImageView *)iconImageView4{
    if (!_iconImageView4) {
        _iconImageView4 = [[UIImageView alloc]init];
        _iconImageView4.image = [UIImage imageNamed:@"kadunaPicHome"];
    }
    return _iconImageView4;
}

-(UIImageView *)iconImageView5{
    if (!_iconImageView5) {
        _iconImageView5 = [[UIImageView alloc]init];
        _iconImageView5.image = [UIImage imageNamed:@"libertinismAddHome"];
    }
    return _iconImageView5;
}

-(UILabel *)descLable1{
    if (!_descLable1) {
        _descLable1 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(26)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _descLable1.numberOfLines = 0;
    }
    return _descLable1;
}

-(UILabel *)descLable2{
    if (!_descLable2) {
        _descLable2 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(30)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
    }
    return _descLable2;
}

-(UILabel *)descLable3{
    if (!_descLable3) {
        _descLable3 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LimelightRegular size:TapPix7(110)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
    }
    return _descLable3;
}

-(UILabel *)descLable4{
    if (!_descLable4) {
        _descLable4 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
    }
    return _descLable4;
}

-(UILabel *)descLable5{
    if (!_descLable5) {
        _descLable5 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(24)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentLeft];
    }
    return _descLable5;
}

-(UILabel *)descLable6{
    if (!_descLable6) {
        _descLable6 = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(36)] textColor:[UIColor colorWithCSS:@"#FFFFFF"] textAliment:NSTextAlignmentCenter];
    }
    return _descLable6;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.iconImageView1];
        [self.iconImageView1 addSubview:self.descLable1];
        [self.bgView addSubview:self.iconImageView2];
        [self.iconImageView2 addSubview:self.descLable2];
        [self.iconImageView2 addSubview:self.descLable3];
        [self.iconImageView2 addSubview:self.iconImageView3];
        [self.iconImageView2 addSubview:self.iconImageView4];
        [self.iconImageView4 addSubview:self.descLable4];
        [self.iconImageView4 addSubview:self.descLable5];
        [self.bgView addSubview:self.iconImageView5];
        [self.iconImageView5 addSubview:self.descLable6];
        NSString *str = [DacoitOakletTapFactory iconAssignTime];
        self.fullText = [NSString stringWithFormat:@"%@!\nWishing you a seamless borrowing journey!",str];
        self.characterIndex = 0;
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.05
                                                          target:self
                                                        selector:@selector(updateTyping)
                                                        userInfo:nil
                                                         repeats:YES];
        [[NSRunLoop currentRunLoop]addTimer:timer forMode:UITrackingRunLoopMode];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    [self.iconImageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bgView).offset(TapPix7(88));
        make.centerX.equalTo(self.bgView);
        make.left.equalTo(self.bgView).offset(TapPix7(30));
        make.height.mas_equalTo(TapPix7(292));
    }];
    [self.descLable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView1).offset(TapPix7(20));
        make.top.equalTo(self.iconImageView1).offset(TapPix7(16));
        make.size.mas_equalTo(CGSizeMake(TapPix7(320), TapPix7(120)));
    }];
    [self.iconImageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView1.mas_top).offset(TapPix7(98*2));
        make.centerX.equalTo(self.bgView);
        make.left.equalTo(self.bgView).offset(TapPix7(30));
        make.height.mas_equalTo(TapPix7(480));
    }];
    [self.descLable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(70));
        make.top.equalTo(self.iconImageView2).offset(TapPix7(40));
        make.right.equalTo(self.iconImageView2);
        make.height.mas_equalTo(TapPix7(36));
    }];
    [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView2).offset(TapPix7(70));
        make.top.equalTo(self.descLable2.mas_bottom).offset(TapPix7(30));
        make.size.mas_equalTo(CGSizeMake(TapPix7(92), TapPix7(78)));
    }];
    [self.descLable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconImageView3.mas_top).offset(-TapPix7(4));
        make.bottom.equalTo(self.iconImageView3.mas_bottom).offset(TapPix7(4));
        make.left.equalTo(self.iconImageView3.mas_right).offset(TapPix7(25));
        make.right.equalTo(self.iconImageView2);
    }];
    [self.iconImageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.iconImageView2);
        make.top.equalTo(self.descLable3.mas_bottom).offset(TapPix7(10));
        make.height.mas_equalTo(TapPix7(135));
        make.left.equalTo(self.iconImageView2).offset(TapPix7(40));
    }];
    [self.descLable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.iconImageView4);
        make.left.equalTo(self.iconImageView4).offset(TapPix7(30));
        make.top.equalTo(self.iconImageView4).offset(TapPix7(47));
        make.height.mas_equalTo(TapPix7(32));
    }];
    [self.descLable5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.iconImageView4);
        make.left.equalTo(self.iconImageView4).offset(TapPix7(30));
        make.top.equalTo(self.descLable4.mas_bottom).offset(TapPix7(7));
        make.height.mas_equalTo(TapPix7(32));
    }];
    [self.iconImageView5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.iconImageView2);
        make.bottom.equalTo(self.iconImageView2.mas_bottom).offset(TapPix7(16));
        make.height.mas_equalTo(TapPix7(164));
    }];
    [self.descLable6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.iconImageView5);
        make.bottom.equalTo(self.iconImageView5).offset(-TapPix7(48));
        make.height.mas_equalTo(TapPix7(48));
    }];
}

- (void)updateTyping {
    if (self.characterIndex < self.fullText.length) {
        NSString *partialText = [self.fullText substringToIndex:self.characterIndex + 1];
        self.descLable1.text = partialText;
        self.characterIndex++;
    }
}

-(void)setModel:(DefinitionMabHomeModel *)model{
    _model = model;
    if (model != nil) {
        self.descLable2.text = [NSString stringWithFormat:@"%@",model.necessarily];
        self.descLable3.text = [NSString stringWithFormat:@"%@",model.hearer];
        self.descLable4.text = [NSString stringWithFormat:@"%@-----------------------%@",model.fresher,model.coincidence];
        self.descLable5.text = [NSString stringWithFormat:@"%@--------------------%@",model.relate,model.unreverberating];
        self.descLable6.text = [NSString stringWithFormat:@"%@",model.ejaculation];
    }
}

@end
