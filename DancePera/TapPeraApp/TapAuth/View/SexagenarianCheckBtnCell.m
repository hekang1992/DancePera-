//
//  SexagenarianCheckBtnCell.m
//  TapPera
//
//  Created by apple on 2024/1/24.
//

#import "SexagenarianCheckBtnCell.h"

@implementation SexagenarianCheckBtnCell

-(UIView *)bgView{
    if(!_bgView){
        _bgView = [[UIView alloc]init];
    }
    return _bgView;
}

-(UILabel *)descLabel{
    if(!_descLabel){
        _descLabel = [DacoitOakletTapFactory ubiKnapsackCreate:[UIFont fontWithName:LINESeedSansAppBold size:TapPix7(40)] textColor:[UIColor colorWithCSS:@"#302C2C"] textAliment:NSTextAlignmentLeft];
    }
    return _descLabel;
}

-(UITextField *)commonField{
    if(!_commonField){
        _commonField = [[UITextField alloc]init];
        _commonField.hidden = YES;
    }
    return _commonField;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.descLabel];
        [self.bgView addSubview:self.commonField];
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        [self.commonField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
        [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.bgView).offset(TapPix7(40));
            make.top.equalTo(self.bgView);
            make.size.mas_equalTo(CGSizeMake(TapPix7(600), TapPix7(48)));
        }];
    }
    return self;
}

-(void)setModel:(InheritanceAssignmentVacancyModel *)model{
    _model = model;
    self.descLabel.text = model.pulsation;
    NSArray *eyelids = model.eyelids;
    CGFloat btnVW = (PeraScreenWidth - TapPix7(136))/2;
    CGFloat btnVH = TapPix7(100); //高
    CGFloat margin = TapPix7(46); //间距
    int count = (int)eyelids.count;
    int totalloc = 2;
    for (int i = 0; i < count; i++){
        HyperlinkItemEyelidsModel *oModel = eyelids[i];
        int row = i/totalloc;  //行号
        int loc = i%totalloc;  //列号
        CGFloat btnVX = (margin +btnVW)*loc + TapPix7(40); //x
        CGFloat btnVY = (margin +btnVH)*row + TapPix7(76); //y
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.tag = 10 + i;
        btn.layer.cornerRadius = TapPix7(30);
        btn.layer.borderWidth = TapPix7(6);
        btn.layer.masksToBounds = YES;
        btn.layer.borderColor = [UIColor colorWithCSS:@"#413E45"].CGColor;
        btn.titleLabel.font = [UIFont fontWithName:LINESeedSansAppExtraBold size:TapPix7(32)];
        btn.frame = CGRectMake(btnVX, btnVY, btnVW, btnVH);
        [btn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        [btn setTitle:oModel.twist forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:oModel.twist] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnTapEnter:) forControlEvents:UIControlEventTouchUpInside];
        [self.bgView addSubview:btn];
        // 使用 UIBezierPath 创建平滑的圆角
        UIBezierPath *smoothPath = [UIBezierPath bezierPathWithRoundedRect:btn.bounds
                byRoundingCorners:UIRectCornerAllCorners
                      cornerRadii:CGSizeMake(TapPix7(30), TapPix7(30))];
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.path = smoothPath.CGPath;
        btn.layer.mask = maskLayer;
        if(ISTAPNOTSTRING(_model.profiting)){
            int index = _model.profiting.intValue;
            UIButton *btn = [self viewWithTag: index + 9];
            [self btnTapEnter:btn];
        }
    }
}

- (void)btnTapEnter:(UIButton *)mbtn{
    NSArray *eyelids = _model.eyelids;
    for (int i = 0;i < eyelids.count; i++){
        HyperlinkItemEyelidsModel *model = eyelids[i];
        NSString *gabbyHostTwist = model.twist;
        UIButton *btn = [self viewWithTag: i + 10];
        if(btn.tag!=mbtn.tag){
            btn.selected = NO;
            [btn setTitleColor:[UIColor colorWithCSS:@"#413E45"] forState:UIControlStateNormal];
        }else {
            //点击
            btn.selected = YES;
            if ([gabbyHostTwist isEqualToString:@"baaroqueRightMale"]) {
                [btn setTitleColor:[UIColor colorWithCSS:@"#3B7CFE"] forState:UIControlStateNormal];
            }else{
                [btn setTitleColor:[UIColor colorWithCSS:@"#F75584"] forState:UIControlStateNormal];
            }
            NSDictionary *dict = @{_model.undaunted:model.profiting};
            NSString *jsonStr = [DacoitOakletTapFactory oakMacDict:dict];
            self.commonField.text = [NSString stringWithFormat:@"%@",jsonStr];
            TAPLog(@">>>>>>>>>>>>%@",self.commonField.text);
        }
    }
}

@end
