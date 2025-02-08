
import router from '@ohos.router'
import promptAction from '@ohos.promptAction';
import { ordersDb } from '../../../db/OrdersDb'
import { orderDeviceInformation } from '../../../model/orderData'

@Component
// 申请中
export struct Applying {

  @State rendering: orderDeviceInformation[] = [];

  async aboutToAppear(){

    // 初始化方法
    this.initialize()

  }

  build() {

    if (this.rendering.length == 0) {
      Column({ space: 20 }) {
        Image($r('app.media.EmptyShoppingCart')).width('40%').objectFit(ImageFit.Contain)
        Text('暂无订单，您还没有此状态下的订单')
        Button('去逛逛').width('30%').onClick(() => {
          router.replaceUrl({ url: 'pages/HomeSwiper' })
        })
      }.width('100%').layoutWeight(12).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
    } else {
      List({ space: 10 }) {
        ForEach(this.rendering, (item: orderDeviceInformation, index: number) => {
          ListItem() {
            Row() {

              Image(!item.iconSrc.includes('../../../') ? '../' + item.iconSrc : item.iconSrc)
                .height('100%')
                .layoutWeight(2)
                .borderRadius(10)

              Column({ space: 6 }) {
                Text(item.propagandaHeadline).fontSize(15).width('100%')
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                  .maxLines(2)
                Text(item.introductionToParameters)
                  .fontSize(14)
                  .opacity(0.8)
                  .width('100%')
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                  .maxLines(2)
                Text('￥' + item.monthlyPrice + '/月').fontColor('#ff4c50')
              }.height('100%').layoutWeight(4).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Start)

              Column() {
                Text('x' + item.numberOfLeases).opacity(0.8)
                Image($r('app.media.more')).width('15').objectFit(ImageFit.Contain)
                  .bindMenu(this.myMenu(item.theNameOfTheDevice))
              }.height('100%').layoutWeight(1).justifyContent(FlexAlign.SpaceAround)
            }
            .width('100%')
            .height(120)
            .backgroundColor('#ffffff')
            .padding(8)
            .borderRadius(10)
          }.width('100%')
        })
      }.width('100%').layoutWeight(12).backgroundColor('#ffefecec').padding(10)
    }

  }

  async initialize(){
    // 添加至订单表
    this.rendering = await ordersDb.inquireAboutOrderInformation()
    console.log('(Applying)this.rendering.length:' + this.rendering.length)
  }

  // 自定义菜单
  @Builder
  myMenu(theNameOfTheDevice: string) {
    Menu() {
      MenuItem({
        startIcon: $r('app.media.delete'),
        content: '删除'
      }).onClick(async () => {
        const results = await ordersDb.deleteTheOrder(theNameOfTheDevice)
        this.initialize()
        if (results) {
          promptAction.showToast({ message: '移除成功', bottom: 370 })
        }
      })
    }
  }
}

