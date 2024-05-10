//
//  UarUbicationViewCell.m
//  TapPera
//
//  Created by apple on 2024/1/24.
//

#import "UarUbicationViewCell.h"

@implementation UarUbicationViewCell

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)] textColor:[UIColor colorWithCSS:@"#413E45"] textAliment:NSTextAlignmentCenter];
        _nameLabel.layer.cornerRadius = TapPix7(30);
        _nameLabel.layer.borderWidth = TapPix7(6);
        _nameLabel.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        _nameLabel.numberOfLines = 0;
    }
    return _nameLabel;
}

-(UIImageView *)iconImageView3{
    if (!_iconImageView3) {
        _iconImageView3 = [[UIImageView alloc]init];
        _iconImageView3.hidden = YES;
    }
    return _iconImageView3;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.iconImageView3];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(TapPix7(20), 0, 0, 0));
    }];
    [self.iconImageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(TapPix7(20));
        make.top.equalTo(self.contentView).offset(TapPix7(35));
        make.size.mas_equalTo(CGSizeMake(TapPix7(70), TapPix7(70)));
    }];
}

-(void)setModel:(HyperlinkItemEyelidsModel *)model{
    self.nameLabel.text = model.twist;
    if (ISTAPNOTSTRING(model.smashed)) {
        self.iconImageView3.hidden = NO;
        [self.iconImageView3 sd_setImageWithURL:[NSURL URLWithString:model.smashed]];
    }else{
        self.iconImageView3.hidden = YES;
    }
}

@end
