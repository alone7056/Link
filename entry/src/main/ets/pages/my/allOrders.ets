import { Orders } from '../../pages/popUps/Orders'

@Component
export struct AllOrders {

  @State ordersStateArr: any[][] = [
    [$rawfile('My/ordersState1.png'), '申请中'],
    [$rawfile('My/ordersState2.png'), '待付款'],
    [$rawfile('My/ordersState3.png'), '待收货'],
    [$rawfile('My/ordersState4.png'), '退款/售后'],
    [$rawfile('My/ordersState5.png'), '全部订单']
  ]

  // 选择配置弹窗
  Orders: CustomDialogController = new CustomDialogController({
    builder: Orders({
      save: () => this.onAccept(),
      cancel: () => this.onCancel()
    }),
    alignment: DialogAlignment.Bottom, // 弹窗对齐方式
    offset: { dx: 0, dy: 0 }, // 设置弹窗的偏移量，这里 dy 为 0 表示弹窗底部距离屏幕底部有 0px 的间隔
    customStyle: true, // 是否自定义样式
  })

  // 确认方法
  onAccept() {

  }

  // 取消方法
  onCancel() {
    this.Orders.close()
  }

  @Provide('OrdersSwiperIndex') OrdersSwiperIndex: number = 0

  build() {
    Row(){
      ForEach(this.ordersStateArr, (item, index: number)=>{
        Column({space: 8}){
          Image(item[0]).objectFit(ImageFit.Contain).width(20)
          Text(item[1]).fontSize(12)
        }.height('100%').layoutWeight(1).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
        .onClick(()=>{

          if (index == 0) {
            this.OrdersSwiperIndex = 0
          } else if (index == 1) {
            this.OrdersSwiperIndex = 1
          } else if (index == 2) {
            this.OrdersSwiperIndex = 2
          } else if (index == 3) {
            this.OrdersSwiperIndex = 3
          } else if (index == 4) {
            this.OrdersSwiperIndex = 4
          }
          this.Orders.open()

        })
      })
    }.width('94%').backgroundColor('#ffffff').borderRadius(10)
  }
}