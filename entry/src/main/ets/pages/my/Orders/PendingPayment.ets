
import router from '@ohos.router'
@Component
// 待付款
export struct PendingPayment {


  build() {

    Column(){
      if (true) {
        Column({ space: 20 }) {
          Image($r('app.media.EmptyShoppingCart')).width('40%').objectFit(ImageFit.Contain)
          Text('暂无订单，您还没有此状态下的订单')
          Button('去逛逛').width('30%').onClick(() => {
            router.replaceUrl({ url: 'pages/HomeSwiper' })
          })
        }.width('100%').layoutWeight(12).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
      } else {

      }
    }.width('100%').height('100%')

  }
}