import router from '@ohos.router'
import { Member } from './Member'
import { AllOrders } from './allOrders'
import { Services } from './Services'

@Component
export struct My {
  @State phone: string = ''

  aboutToAppear() {
    // 获取登录手机号 预览器无法预览先注释
    this.phone = AppStorage.Get('loginUserPhone')
  }

  build() {
    Column({ space: 10 }) {
      Stack() {
        Text('我的').fontSize(20)
        Row() {
          Image($rawfile('My/set_icon1.png')).objectFit(ImageFit.Contain).width(20)
            .onClick(() => {
              router.pushUrl({ url: 'pages/my/set/SetPage' })
            })
        }.width('94%').justifyContent(FlexAlign.End).zIndex(99)
      }.width('100%').layoutWeight(1).backgroundColor('#ffffff')

      Column() {
        // 用户头像手机号码
        Row({ space: 15 }) {
          Image($rawfile('My/tx.jpg')).objectFit(ImageFit.Contain).width(50).borderRadius(99)
          Text(this.phone.substring(0, 3) + '****' + this.phone.substring(7, 12)).fontSize(20)
        }
        .width('100%')
        .layoutWeight(1)
        .padding({ left: 20 })
        .justifyContent(FlexAlign.Start)
        .margin({ top: 20 })

        Member().layoutWeight(2).margin({ top: 20 })
        AllOrders().layoutWeight(1).margin({ top: 10 })
        Services().layoutWeight(4).margin({ top: 10 })
        Column().width('100%').layoutWeight(1)


      }.width('100%').layoutWeight(10)
      .backgroundColor('#ffeae9e9')
      // .linearGradient({
      //   direction: GradientDirection.Bottom, // 渐变方向
      //   repeating: false, // 渐变颜色是否重复
      //   colors: [['#ffe0ffff', 0.1], ['#fff5ffff', 0.5], ['#fffbffff', 0.9]] // 数组末尾元素占比小于1时满足重复着色效果
      // })
    }.backgroundColor('#ffeae9e9')

  }
}