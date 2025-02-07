import { AfterSales } from '../../pages/my/Orders/AfterSales'
import { Applying } from '../../pages/my/Orders/Applying'
import { PendingPayment } from '../../pages/my/Orders/PendingPayment'
import { ToBeReceived } from '../../pages/my/Orders/ToBeReceived'
import { all } from '../../pages/my/Orders/all'

@CustomDialog
export struct Orders {
  // 控制器
  controller: CustomDialogController
  save?: () => void;
  cancel?: () => void;

  @State strArr: string[] = ['申请中', '待付款', '待收货', '退款/售后', '全部订单']

  // 轮播当前索引
  @Consume OrdersSwiperIndex: number;

  build() {

    Column(){
      Stack() {
        Text('我的订单').fontSize(20)
        Row() {
          Image($r('app.media.0_back')).objectFit(ImageFit.Contain).width(20)
            .onClick(() => {
              // 关闭窗口
              this.cancel()
            })
        }.width('94%').justifyContent(FlexAlign.Start).zIndex(99)
      }.width('100%').layoutWeight(1)

      // 导航
      Row(){
        ForEach(this.strArr, (item: string, index: number)=>{
          Text(item).height('100%').layoutWeight(1).textAlign(TextAlign.Center)
            .fontColor(this.OrdersSwiperIndex == index ? '#0d87fc' : '#000')
            .border({width: {bottom: this.OrdersSwiperIndex == index ? 1 : 0}, color: '#0d87fc'})
            .onClick(()=>{
              this.OrdersSwiperIndex = index
            })
        })
      }.width('100%').layoutWeight(1)

      // 轮播组件商城、分类、购物车、我的
      Swiper() {

        Applying() // 申请中
        PendingPayment() // 待付款
        ToBeReceived() // 待付款
        AfterSales() // 售后
        all() // 全部

      }.width('100%').layoutWeight(12)
      .indicator(false) // 指示器隐藏
      .index(this.OrdersSwiperIndex) // 当前索引
      .loop(false)       // 列表循环
      .onChange((v: number)=>{
        // 改变时执行更新图标状态
        this.OrdersSwiperIndex = v
      })

    }.width('100%').height('100%').backgroundColor('#ffffff')

  }
}