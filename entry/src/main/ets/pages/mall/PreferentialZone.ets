import router from '@ohos.router'
import { PreferentialZoneInfo } from '../../model/PreferentialZoneInfo'
import { DeviceInformation } from '../../model/RoutingData'

@Component
export struct PreferentialZone {
  @State swiperIndex: number = 0
  PreferentialZoneArr: PreferentialZoneInfo[] = [
    new PreferentialZoneInfo('../../../resources/rawfile/ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper1.jpg', '苹果Apple MacBook Pro 2020', '[特价]苹果Apple MacBook Pro 13.3英寸笔记本电脑租赁 2020款 MWP42CH/A', 'I5-10代 2.0GHz/16G/512G SSD/核显/深空灰/13.3/2K/Touch Bar', 288, 198, 'Laptop'),
    new PreferentialZoneInfo('../../../resources/rawfile/ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper1.jpg', '苹果Apple Macbook Air 2023', '[特价]苹果Apple Macbook Air 13.6英寸笔记本电脑租赁 2023款 MXCR3CH/A', 'M3 8核中央处理器/16G/512G SSD/10核图形处理器/深空灰/13.6/2K', 438, 398, 'Laptop'),
    new PreferentialZoneInfo('../../../resources/rawfile/ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper1.jpg', '苹果Apple MacBook Pro 2024', '[特价]苹果Apple MacBook Pro 14.2英寸笔记本电脑租赁 2024款 MW2W3CH/A', 'M4 10核中央处理器/16G/512G SSD/10核图形处理器/银色/14.2/3K', 558, 498, 'Laptop'),
    new PreferentialZoneInfo('../../../resources/rawfile/ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg', '苹果Apple iMac 2024', '[特价]苹果Apple iMac 24英寸一体机电脑租赁 2024款 Z1E2', 'M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', 599, 538, 'allInOneMachine'),
  ]

  build() {
    Column() {
      Row({ space: 8 }) {
        Text('特价专区').fontColor('#ffffff').fontSize(18)
        Text('秒杀价')
          .fontColor('#fe5b53')
          .fontSize(15)
          .width(60)
          .textAlign(TextAlign.Center)
          .backgroundColor('#ffffff')
          .borderRadius(99)
      }.width('100%').layoutWeight(1).justifyContent(FlexAlign.Start).alignItems(VerticalAlign.Center)

      Swiper() {
        ForEach(this.PreferentialZoneArr, (item: PreferentialZoneInfo, index: number) => {
          Row() {
            Image(item.icon).layoutWeight(1).borderRadius({ topLeft: 10, bottomLeft: 10 })
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
                    .backgroundColor('#ec5155')
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
                  .backgroundColor('#e44454')
                  .borderRadius({ topRight: 99, bottomRight: 99 })
                }.width('100%').layoutWeight(2)
              }.height('50%').backgroundColor('#fffcdcdc').borderRadius(10).padding(4)
            }.height('100%').layoutWeight(2).padding(8).borderRadius(10)
          }.width('100%').onClick(() => {
            // 跳转至详情页面
            let paramsInfo: DeviceInformation = {
              theNameOfTheDevice: item.theNameOfTheDevice,
              propagandaHeadline: item.title,
              introductionToParameters: item.disposition,
              monthlyPrice: item.preferentialRent,
              equipmentType: item.equipmentType
            }
            // 测试输出
            console.log('(PreferentialZone)theNameOfTheDevice图片地址：' + item.icon)
            AppStorage.SetOrCreate('picturesOfTheDevice', item.icon)
            router.pushUrl({ url: 'pages/classify/ProductDetailsPage', params: paramsInfo })
          })
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
    .backgroundColor('#fe5b53')
    .padding(10)
    .borderRadius(10)
  }
}