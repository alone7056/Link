
import router from '@ohos.router'
@Entry
@Component
// 隐私协议页面
struct PrivacyManagement {

  build() {

    Column({space: 10}) {

      // 第一行标题
      Stack() {
        Text('隐私协议').fontSize(20)
        Row() {
          Image($r('app.media.img_1')).width(10).rotate({ angle: 180 })
            .onClick(() => {
              // 返回上一级图片点击事件
              router.back()
            })
        }.width('93%').justifyContent(FlexAlign.Start)
      }.width('100%').layoutWeight(1)
      .backgroundColor('#ffffff')

      Column(){
        Column(){
          Row(){
            Text('隐私协议')
            Blank()
            Image($r('app.media.img_1')).width(10)
          }.width('100%').layoutWeight(1).padding(10)
          .onClick(()=>{
            router.pushUrl({url: 'pages/agreement/PrivacyAgreement'})
          })

          Divider().width('93%').margin({left: 20})

          Row(){
            Text('用户协议')
            Blank()
            Image($r('app.media.img_1')).width(10)
          }.width('100%').layoutWeight(1).padding(10)
          .onClick(()=>{
            router.pushUrl({url: 'pages/agreement/UserAgreement'})
          })
        }.width('100%').layoutWeight(2).backgroundColor('#ffffff').borderRadius(10)

        Blank().width('100%').layoutWeight(10)
      }.width('100%').layoutWeight(13).backgroundColor('#fff5f5f5').padding(10)

    }.width('100%').height('100%')

  }
}