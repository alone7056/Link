import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
import { shoppingCartDb } from '../../db/ShoppingCartDb'
import { currentIndex } from '../../model/RoutingData';
import { scd, shoppingCartDeviceInformation } from '../../model/ShoppingCartData';
import LoadingDialog from '../../utils/TipsDialog';


@Component
export struct ShoppingCart {

  // 当前渲染数据
  @State rendering: any[] = [];
  // 设备当前租赁数数组
  @State numberOfLeasesArray: number[] = []
  // 是否选中状态数组 存储每个设备是否被选中的状态
  @State whetherSelectedArray: boolean[] = []
  // 明细数组 存储每个设备的总费用
  @State detailArray: number[] = []
  // 全选或不选，默认不全选
  @State selectAllOrNot: boolean = false
  // 月租价格数组 存储所有购物车设备价格
  @State monthlyPriceArray: number[] = []
  // 租期数组 存储所有购物车设备的租期
  @State leaseArray: number[] = []
  // 押金数组 存储所有设备的押金
  @State depositArray: number[] = []
  // 金额数组 存储单个设备的总金额
  @State amountArray: number[] = []


  // 总金额
  @State theTotalAmount: number = 0

  // 页面加载前执行
  async aboutToAppear() {
    // 初始化
    this.initializationMethod()

  }

  // 页面销毁时执行
  async aboutToDisappear() {

  }

  build() {
    Column() {
      Row() {
        Text('Link-购物车').fontSize(20)
      }.width('100%').justifyContent(FlexAlign.Center).layoutWeight(1).backgroundColor('#ffffff').border({width: {bottom: 1}, color: '#cccccc'})

      if (this.rendering.length == 0) {
        Column({ space: 20 }) {
          Image($r('app.media.EmptyShoppingCart')).width('40%').objectFit(ImageFit.Contain)
          Text('购物车是空的，您还没有添加任何商品')
          Button('去逛逛').width('30%').onClick(() => {
            router.replaceUrl({ url: 'pages/HomeSwiper' })
          })
        }.width('100%').layoutWeight(12).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
      } else {
        Scroll() {
          Column({ space: 10 }) {
            ForEach(this.rendering, (item: shoppingCartDeviceInformation, index: number) => {
              Row() {

                Row() {
                  Checkbox({ name: 'whetherSelected', group: 'whetherSelected' })
                    .width(15)
                    .select(this.whetherSelectedArray[index])
                    .selectedColor('#4a9df6')
                    .onClick(() => {
                      // 多选全选全部选状态处理
                      this.whetherSelectedArray[index] = !this.whetherSelectedArray[index]
                      let counter: number = 0
                      for (let index = 0; index < this.rendering.length; index++) {
                        if (this.whetherSelectedArray[index]) {
                          counter++
                        }
                      }
                      // 如果计数器的长度等于当前渲染数组的长度则全选
                      if (counter == this.rendering.length) {
                        this.selectAllOrNot = true
                      } else {
                        this.selectAllOrNot = false
                      }

                      // 总金额
                      if (this.whetherSelectedArray[index]) {
                        this.amountArray[index] = (Number(Number(item.monthlyPrice * item.lease) + Number(item.deposit)) * this.numberOfLeasesArray[index])
                        this.theTotalAmount += this.amountArray[index]
                        console.log(`(ShoppingCart)this.amountArray[${index}]:${this.amountArray[index]}`)
                      } else {
                        if (this.theTotalAmount != 0) {
                          this.theTotalAmount -= this.amountArray[index]
                        }
                      }
                    })
                }.height('100%').layoutWeight(1)

                Row() {

                  Image(!item.iconSrc.includes('../../../') ? '../' + item.iconSrc : item.iconSrc)
                    .height('100%')
                    .objectFit(ImageFit.Contain)
                  Column({ space: 7 }) {
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
                            // 设备减一
                            this.numberOfLeasesArray[index]--
                            if (this.numberOfLeasesArray[index] == 0) {
                              this.numberOfLeasesArray[index] = 1
                              LoadingDialog.showFailure('租赁数量不能小于1!')
                            }
                          })
                        Text(this.numberOfLeasesArray[index] + '')
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
                            // 设备加一
                            this.numberOfLeasesArray[index]++
                          })
                      }.width('40%').height('100%')
                    }.width('100%').justifyContent(FlexAlign.SpaceBetween).height(25)


                    Row() {
                      Text('￥' + item.monthlyPrice + '/月').fontSize(14).fontColor('#ff4c50')
                      Image($r('app.media.more')).width('15').objectFit(ImageFit.Contain)
                        .bindMenu(this.myMenu(item.theNameOfTheDevice))
                    }.width('100%').justifyContent(FlexAlign.SpaceBetween)

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
            // 占位组件
            if (this.rendering.length == 1) {
              Blank().width('100%').height(140)
            }

            if (this.rendering.length == 1 || this.rendering.length == 2) {
              Blank().width('100%').height(140)
            }

            if (this.rendering.length == 1 || this.rendering.length == 2 || this.rendering.length == 3) {
              Blank().width('100%').height(140)
            }
          }.width('100%')
        }.width('100%').layoutWeight(12).edgeEffect(EdgeEffect.Spring).scrollBar(BarState.Off)
      }

      Row() {
        Row({ space: 10 }) {
          Checkbox({ name: 'selectAllOrNot', group: 'selectAllOrNot' })
            .width(15)
            .select(this.selectAllOrNot)
            .selectedColor('#4a9df6')
            .onClick(() => {
              this.selectAllOrNot = !this.selectAllOrNot
              for (let index = 0; index < this.rendering.length; index++) {
                if (this.selectAllOrNot) {
                  this.whetherSelectedArray[index] = true
                  this.theTotalAmount += Number(Number(this.rendering[index].monthlyPrice * this.rendering[index].lease) + Number(this.rendering[index].deposit)) * this.numberOfLeasesArray[index]
                } else {
                  this.whetherSelectedArray[index] = false
                  this.theTotalAmount = 0
                }

              }
            })

          Text() {
            Span('合计：')
            Span(this.theTotalAmount + '').fontColor('#4a9df6')
          }
        }.height('100%').layoutWeight(1).justifyContent(FlexAlign.Start).padding({ left: 10 })

        Button('租\t赁')
          .type(ButtonType.Normal)
          .height('100%')
          .layoutWeight(1)
          .onClick(() => {

          })
      }.width('100%').layoutWeight(1).justifyContent(FlexAlign.SpaceBetween)
    }.width('100%').height('100%')
  }

  // 自定义菜单
  @Builder
  myMenu(theNameOfTheDevice: string) {
    Menu() {
      MenuItem({
        startIcon: $r('app.media.delete'),
        content: '删除'
      }).onClick(async () => {
        const results = shoppingCartDb.deleteShoppingCart(theNameOfTheDevice)
        if (results) {
          promptAction.showToast({ message: '移除成功', bottom: 370 })
          let paramsInfo: currentIndex = {
            type: 'swiperIndex',
            currentClassify: 2
          }
          router.replaceUrl({ url: 'pages/HomeSwiper', params: paramsInfo })
          // this.initializationMethod()
          this.selectAllOrNot = false
        }
      })
    }
  }

  // 初始化方法
  async initializationMethod() {
    // 获取购物车数据库的所有数据
    this.rendering = await shoppingCartDb.queryShoppingCartInformation()

    this.theTotalAmount = 0

    // 循环遍历将所有租赁数保存到数组中
    for (let index = 0; index < this.rendering.length; index++) {
      this.numberOfLeasesArray[index] = this.rendering[index].numberOfLeases
      this.whetherSelectedArray[index] = false
    }
  }
}