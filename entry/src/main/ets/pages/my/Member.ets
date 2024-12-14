@Component
// 会员页
export struct Member {

  @State dateArr: string[][] = [
    ['1', '积分'],
    ['0.00', '现金红包'],
    ['0', '商品收藏'],
    ['1', '优惠卷']
  ]

  build() {
    Column({space: 10}){

      Row({space: 5}){
        Image($rawfile('My/member.png')).objectFit(ImageFit.Contain).width(30)

        Text(){
          Span('开通会员').fontSize(15).fontWeight(500).fontColor('#ffe19b')
          Span('\t|\t').fontColor('#ff5a5858')
          Span('会员每日免费抽奖').fontSize(15).fontColor('#ff5a5858')
        }

        Blank()

        Button('去开通').fontSize(13).backgroundColor('#fffade82').height(25)
          .onClick(()=>{

          })
      }.width('100%').layoutWeight(1).alignItems(VerticalAlign.Center)
      .borderRadius({topLeft:10, topRight: 10}).backgroundColor('#ffffb28f').padding(10)

      Row(){
        ForEach(this.dateArr, (item: any, index: number)=>{
          Column({space: 5}){
            Text(item[0]).fontSize(17).fontWeight(500)
            Text(item[1]).fontSize(13)
          }.height('100%').layoutWeight(1).justifyContent(FlexAlign.Center)
        })
      }.width('100%').layoutWeight(2)

    }.width('94%').height('100%').backgroundColor('#ffffff').borderRadius(10)
  }
}