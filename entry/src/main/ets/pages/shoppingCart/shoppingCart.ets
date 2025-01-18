import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
import { shoppingCartDb } from '../../db/ShoppingCartDb'
import { shoppingCartDeviceInformation } from '../../model/ShoppingCartData';
import LoadingDialog from '../../utils/TipsDialog';

@Component
export struct ShoppingCart {

  // 当前渲染数据
  @State rendering: any[] = [];

  //
  async aboutToAppear() {

    this.rendering = await await shoppingCartDb.queryShoppingCartInformation()

  }

  build() {
    Column() {
      Row() {
        Text('Link-购物车').fontSize(20)
      }.width('100%').justifyContent(FlexAlign.Center).layoutWeight(1).backgroundColor('#ffffff')

      Scroll() {
        Column({ space: 10 }) {
          ForEach(this.rendering, (item: shoppingCartDeviceInformation, index: number) => {
            Row() {

              Row() {
                Radio({ value: 'lease', group: 'radioGroup' }).checked(false)
                  .onChange(() => {

                  })
              }.height('100%').layoutWeight(1)

              Row() {

                Image(!item.iconSrc.includes('../../../') ? '../' + item.iconSrc : item.iconSrc)
                  .height('100%')
                  .objectFit(ImageFit.Contain)
                Column({space: 7}) {
                  Text(item.propagandaHeadline)
                    .fontSize(15)
                    .maxLines(1)
                    .width('100%')
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Text('规格：' + item.introductionToParameters)
                    .fontSize(14)
                    .maxLines(2)
                    .width('100%')
                    .textOverflow({ overflow: TextOverflow.Ellipsis })

                  Row() {
                    Text('租期' + item.lease + '个月').fontSize(14)
                    Row() {
                      Text('-')
                        .height('100%')
                        .layoutWeight(3)
                        .backgroundColor('#f5f5f5')
                        .borderRadius({ topLeft: 99, bottomLeft: 99 })
                        .textAlign(TextAlign.Center)
                        .onClick(() => {
                          item.numberOfLeases--
                          if (item.numberOfLeases == 0) {
                            item.numberOfLeases = 1
                            LoadingDialog.showFailure('租赁数量不能小于1!')
                          }
                        })
                      Text(item.numberOfLeases + '')
                        .height('100%')
                        .layoutWeight(4)
                        .backgroundColor('#f5f5f5')
                        .textAlign(TextAlign.Center)
                      Text('+')
                        .height('100%')
                        .layoutWeight(3)
                        .backgroundColor('#f5f5f5')
                        .borderRadius({ topRight: 99, bottomRight: 99 })
                        .textAlign(TextAlign.Center)
                        .onClick(() => {
                          item.numberOfLeases++
                        })
                    }.width('40%').height('100%')
                  }.width('100%').justifyContent(FlexAlign.SpaceBetween).height(25)

                  Text('￥' + item.monthlyPrice + '/月').fontSize(14).width('100%').fontColor('#ff4c50')

                }
                .height('100%')
                .layoutWeight(3)
                .justifyContent(FlexAlign.Center)
                .alignItems(HorizontalAlign.End)
                .padding({ left: 10 })
              }.height('100%').layoutWeight(9)
            }.width('100%').height(120).padding({ right: 10, left: 10 })

            Divider().width('100%')

            Row() {
              Text('首付押金：' + item.monthlyPrice).fontSize(15)
              Divider().vertical(true).strokeWidth(1).color('#ffe3e0e0').height('20')
              Text('设备押金：' + item.deposit).fontSize(15)
              Divider().vertical(true).strokeWidth(1).color('#ffe3e0e0').height('20')
              Text('保证金：0.00').fontSize(15)
            }.width('100%').height(25).justifyContent(FlexAlign.SpaceAround)

            Divider().width('100%')
          })
        }.width('100%')
      }.width('100%').layoutWeight(12).edgeEffect(EdgeEffect.Fade).scrollBar(BarState.Off)

      Row() {
        Radio({ value: 'lease', group: 'radioGroup' }).checked(false)
          .onChange(() => {

          })

        Text('合计：')

        Text('明细:')

        Button('免押金租赁').type(ButtonType.Normal).onClick(() => {

        })
      }.width('100%').layoutWeight(1)
    }.width('100%').height('100%')
  }
}