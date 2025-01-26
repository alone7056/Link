
@Component
export struct AllOrders {

  @State ordersStateArr: any[][] = [
    [$rawfile('My/ordersState1.png'), '申请中'],
    [$rawfile('My/ordersState2.png'), '待付款'],
    [$rawfile('My/ordersState3.png'), '待收货'],
    [$rawfile('My/ordersState4.png'), '退款/售后'],
    [$rawfile('My/ordersState5.png'), '全部订单']
  ]

  build() {
    Row(){
      ForEach(this.ordersStateArr, (item, index: number)=>{
        Column({space: 8}){
          Image(item[0]).objectFit(ImageFit.Contain).width(20)
          Text(item[1]).fontSize(12)
        }.height('100%').layoutWeight(1).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
        .onClick(()=>{

        })
      })
    }.width('94%').backgroundColor('#ffffff').borderRadius(10)
  }
}