//
//  JacarandaArgumentViewCell.m
//  TapPera
//
//  Created by apple on 2024/2/1.
//

#import "JacarandaArgumentViewCell.h"

@implementation JacarandaArgumentViewCell

-(UIView *)bgView{
    if (!_bgView) {
        _bgView = [[UIView alloc]init];
        _bgView.layer.cornerRadius = TapPix7(30);
        _bgView.layer.borderWidth = TapPix7(6);
        _bgView.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
    }
    return _bgView;
}

-(UIImageView *)iconImageView{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.image = [UIImage imageNamed:@"a1"];
    }
    return _iconImageView;
}

-(UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(30)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _titleLabel.numberOfLines = 0;
    }
    return _titleLabel;
}

-(UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:SFProDisplayRegular size:TapPix7(30)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentLeft];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.iconImageView];
        [self.bgView addSubview:self.titleLabel];
        [self.bgView addSubview:self.contentLabel];
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(TapPix7(40), TapPix7(40), 0, TapPix7(40)));
        }];
        [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(TapPix7(60), TapPix7(96)));
            make.top.equalTo(self.bgView).offset(TapPix7(12));
            make.left.equalTo(self.bgView).offset(TapPix7(12));
        }];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.iconImageView.mas_right).with.offset(TapPix7(20));
            make.top.equalTo(self.bgView).with.offset(TapPix7(24));
            make.right.equalTo(self.bgView).with.offset(-TapPix7(30));
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.titleLabel.mas_left);
            make.top.equalTo(self.titleLabel.mas_bottom).with.offset(TapPix7(24));
            make.right.equalTo(self.bgView).with.offset(-TapPix7(30));
        }];
    }
    return self;
}

-(void)setModel:(PoolingActiveHelpModel *)model{
    _model = model;
    self.titleLabel.text = _model.title;
    self.contentLabel.text = _model.content;
    self.iconImageView.image = [UIImage imageNamed:model.imageUrl];
    if (model.isExpanded) {
        self.contentLabel.hidden = NO;
    }else{
        self.contentLabel.hidden = YES;
    }
}

@end
