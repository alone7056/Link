import { PreferentialZoneInfo } from '../../model/PreferentialZoneInfo'

@Component
export struct PreferentialZone {
  PreferentialZoneArr: PreferentialZoneInfo[] = [
    new PreferentialZoneInfo($rawfile('Mall/pgytj.jpg'), '[特价]苹果Apple iMac 24英寸一体机电脑2021年款MGTF3CH/A', 'M1 八核中央处理器8G/256G SSD/7核图像处理器', 418, 288),
    new PreferentialZoneInfo($rawfile('Mall/pgbjb1.jpg'), '[特价]苹果Apple MacBook Pro 13.3 英寸笔记本电脑电脑租赁 2022年款 MWP42CH/A', 'I5-10代 2.0GHz/16G/512G SSD/核显', 368, 218),
    new PreferentialZoneInfo($rawfile('Mall/pgbjb.jpg'), '[特价]苹果Apple MacBook Pro 13.2英寸笔记本电脑 2019年款 MV962CH/A', 'I5-8代 2.4GHz/8G/256 SSD/核显', 358, 188)
  ]

  build() {
    Column() {
      Row({ space: 8 }) {
        Text('特价专区').fontColor('#ffffff').fontSize(18)
        Text('秒杀价')
          .fontColor('#ffe3734f')
          .fontSize(15)
          .width(60)
          .textAlign(TextAlign.Center)
          .backgroundColor('#ffffff')
          .borderRadius(99)
      }.width('100%').layoutWeight(1).justifyContent(FlexAlign.Start).alignItems(VerticalAlign.Center)

      Swiper() {
        ForEach(this.PreferentialZoneArr, (item: PreferentialZoneInfo, index: number) => {
          Row() {
            Image(item.icon).layoutWeight(1).borderRadius({topLeft: 10, bottomLeft: 10})
            Column({ space: 4 }) {
              Text(item.title)
                .fontSize(14)
                .fontWeight(600)
                .maxLines(2)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .copyOption(CopyOptions.InApp)
              Text(item.disposition)
                .fontSize(12)
                .maxLines(1)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .opacity(0.6)
                .copyOption(CopyOptions.InApp)
              Column({ space: 5 }) {
                Row() {
                  Text('数量有限')
                    .fontSize(12)
                    .fontColor('#ffffff')
                    .textAlign(TextAlign.Center)
                    .borderRadius(3)
                    .width(60)
                    .backgroundColor('#fff87575')
                }.width('100%').layoutWeight(1)

                Row() {
                  Text('￥' + item.originalRent)
                    .fontSize(13)
                    .height('100%')
                    .layoutWeight(1)
                    .backgroundColor('#fffae5a4')
                    .textAlign(TextAlign.Center)
                    .borderRadius({ topLeft: 99, bottomLeft: 99 })
                  Text() {
                    Span('￥').fontSize(12).fontColor('#ffffff')
                    Span(item.preferentialRent + '.00').fontSize(18).fontColor('#ffffff')
                    Span('/月').fontSize(12).fontColor('#ffffff')
                  }
                  .height('100%')
                  .layoutWeight(2)
                  .textAlign(TextAlign.Center)
                  .backgroundColor('#ffff6363')
                  .borderRadius({ topRight: 99, bottomRight: 99 })
                }.width('100%').layoutWeight(2)
              }.height('50%').backgroundColor('#fffcdcdc').borderRadius(10).padding(4)
            }.height('100%').layoutWeight(2).padding(8).borderRadius(10)
          }.width('100%')
        })
      }
      .width('100%')
      .layoutWeight(3)
      .loop(true) // 列表循环
      .autoPlay(true) // 自动轮播
      .interval(4000) // 间隔时间
      .indicator(false) // 指示器隐藏
      .backgroundColor('#ffffff')
      .borderRadius(10)
    }
    .width('94%')
    .height(180)
    .backgroundColor('#fff3664e')
    .padding(10)
    .borderRadius(10)
  }
}