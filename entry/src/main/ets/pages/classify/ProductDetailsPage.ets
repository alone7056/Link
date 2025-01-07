import router from '@ohos.router';
import { DeviceInformation } from '../../model/RoutingData'
import { LaptopDetails } from '../../common/PageRenderingValues'
import { Laptop } from '../../model/Laptop'
@Entry
@Component
struct ProductDetailsPage {

  @State theNameOfTheDevice: string = ''; // 设备名称
  @State propagandaHeadline: string = ''; // 设备标题
  @State introductionToParameters: string = ''; // 参数简介
  @State monthlyPrice: number = 0; // 月租价格
  @State equipmentType: string = ''; // 设备类型
  @State rendering: Laptop[] = undefined;
  aboutToAppear(){

    // 获取注册和重置密码页面传递过来的账号信息
    try {
      const params: DeviceInformation = router.getParams() as DeviceInformation;
      this.theNameOfTheDevice = params.theNameOfTheDevice
      this.propagandaHeadline = params.propagandaHeadline
      this.introductionToParameters = params.introductionToParameters
      this.monthlyPrice = params.monthlyPrice
      this.equipmentType = params.equipmentType
      console.log('(ProductDetailsPage):'+ this.theNameOfTheDevice + '|' + this.propagandaHeadline + '|' + this.introductionToParameters + '|' + this.monthlyPrice + '|' + this.equipmentType)
    } catch (err) {
      console.log('路由传参报错')
    }

    if (this.equipmentType == 'Laptop') {
      this.rendering = LaptopDetails.filter(Laptop => Laptop.TheNameOfTheNotebook.includes(this.theNameOfTheDevice));
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

  }

  build() {
    Column() {
      Stack() {
        Text(this.theNameOfTheDevice + '详情').fontSize(20)
        Row() {
          Image($r('app.media.img_1')).width(10).rotate({ angle: 180 })
            .onClick(() => {
              // 返回上一级图片点击事件
              router.back()
            })
        }.width('93%').justifyContent(FlexAlign.Start)
      }.width('100%').layoutWeight(1)

      Scroll(){
        Column(){
          Column(){
            Row(){
              // 头部轮播图
              Swiper() {
                ForEach(this.rendering[0].particularsSwiper, (item, index: number)=>{
                  Image(item).width('100%').height('100%')
                })
              }
              .width('100%')
              .loop(true)       // 列表循环
              .autoPlay(this.rendering[0].particularsSwiper.length > 1 ? true : false)   // 自动轮播
              .interval(3000)   // 间隔时间
            }.width('100%').height(300)

            Row(){
              Text() {
                Span('￥').fontSize(14).fontColor('#f9543d')
                Span(this.monthlyPrice + '.').fontSize(20).fontColor('#f9543d').fontWeight(500)
                Span('00/月').fontSize(16).fontColor('#f9543d').fontWeight(500)
              }.fontSize(14).width('100%').textAlign(TextAlign.Start)
            }.width('100%').padding(10)

            Row(){
              Text(this.propagandaHeadline + '(' + this.introductionToParameters + ')').maxLines(2).textOverflow({overflow: TextOverflow.Ellipsis})
                .fontWeight(500).fontSize(16)
            }.width('100%').padding(10)
          }.width('100%')
        }.width('100%')
      }.width('100%').layoutWeight(11).edgeEffect(EdgeEffect.None).scrollBar(BarState.Off)
      .backgroundColor('#ffeae9e9')

      Row(){
        
      }.width('100%').layoutWeight(1).backgroundColor('#ff0073ff')

    }.width('100%').height('100%')
  }
}