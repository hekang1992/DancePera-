//
//  HaafRabbanistViewCell.m
//  TapPera
//
//  Created by apple on 2024/1/18.
//

#import "HaafRabbanistViewCell.h"

@implementation HaafRabbanistViewCell

-(UIView *)bgView{
    if(!_bgView){
        _bgView = [[UIView alloc]init];
        _bgView.backgroundColor = [UIColor colorWithCSS:@"#F1F1F1"];
        _bgView.layer.cornerRadius = TapPix7(30);
    }
    return _bgView;
}

-(UIImageView *)iconImageView{
    if(!_iconImageView){
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.contentMode = UIViewContentModeScaleAspectFill;
        _iconImageView.image = [UIImage imageNamed:@"bab_id_card"];
    }
    return _iconImageView;
}

-(UILabel *)descLabel{
    if(!_descLabel){
        _descLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#000000"] textAliment:NSTextAlignmentCenter];
        _descLabel.text = @"";
    }
    return _descLabel;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.iconImageView];
        [self.contentView addSubview:self.descLabel];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(TapPix7(20));
        make.size.mas_equalTo(CGSizeMake(TapPix7(158*2), TapPix7(97*2)));
    }];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.bgView);
    }];
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.iconImageView.mas_bottom).offset(TapPix7(26));
        make.left.equalTo(self.contentView);
        make.height.mas_equalTo(TapPix7(43));
    }];
}

@end
