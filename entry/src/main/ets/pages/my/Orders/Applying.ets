
import router from '@ohos.router'
@Component
// 申请中
export struct Applying {

  async aboutToAppear(){

  }

  build() {

    if (true) {
      Column({ space: 20 }) {
        Image($r('app.media.EmptyShoppingCart')).width('40%').objectFit(ImageFit.Contain)
        Text('订单是空的，您还没有添加任何商品')
        Button('去逛逛').width('30%').onClick(() => {

          router.replaceUrl({ url: 'pages/HomeSwiper' })
        })
      }.width('100%').layoutWeight(12).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
    } else {

    }

  }
}