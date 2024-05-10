//
//  EacmBaseInfoCell.m
//  TapPera
//
//  Created by apple on 2024/1/23.
//

#import "EacmBaseInfoCell.h"

@implementation EacmBaseInfoCell

-(XanthininVolatileAuthView *)authView{
    if (!_authView) {
        _authView = [[XanthininVolatileAuthView alloc]init];
    }
    return _authView;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.authView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self.authView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
}

-(void)setModel:(InheritanceAssignmentVacancyModel *)model{
    _model = model;
    self.authView.nameLabel.text = model.pulsation;
    self.authView.nameField.placeholder = model.brownie;
    self.authView.model = model;
}

@end
