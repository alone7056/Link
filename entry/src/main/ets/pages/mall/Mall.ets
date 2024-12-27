import router from '@ohos.router'
import { Capabilities } from './Capabilities'
import { PreferentialZone } from './PreferentialZone'
import { MallPageClassify } from './MallPageClassify'
@Component
export struct Mall {
  @State message: string = '商城'

  // 父组件@Provide/子组件@Consume实现双向绑定 父组件HomeSwiper的属性
  @Consume currentIndex: number;
  @Consume swiperIndex: number;

  private swiperArr: any[] = [
    $rawfile('Mall/swiper1.jpg'), $rawfile('Mall/swiper2.jpg'), $rawfile('Mall/swiper3.jpg'), $rawfile('Mall/swiper1.jpg'), $rawfile('Mall/swiper2.jpg'), $rawfile('Mall/swiper3.jpg')
  ]

  private brieflyArr: any[][] = [
    [$rawfile('Mall/z.png'), '即租即换'],[$rawfile('Mall/mf.png'), '免租金'], [$rawfile('Mall/rl.png'), '租金月付'], [$rawfile('Mall/pc.png'), '一台起租']
  ]

  build() {
    Scroll(){
      Column({space: 10}) {
        Row({ space: 7 }) {
          Image($rawfile('Mall/search.png')).objectFit(ImageFit.Contain).width(18)
          Text('搜一搜').fontSize(15).opacity(0.6)
          Blank()
          // 实线线段
          Divider().vertical(true).strokeWidth(1).color('#ffe3e0e0').height('20')
          Text('搜索').fontSize(17)
        }
        .width('94%')
        .height(45)
        .backgroundColor('#ffffff')
        .padding(10)
        .borderRadius(99)
        .margin({top: 10})
        .onClick(() => {
          // 点击搜索框跳转至搜索分类页面 修改父组件的值实现跳转
          this.currentIndex = 1
          this.swiperIndex = 1
        })

        Row(){
          // 头部轮播图
          Swiper() {
            ForEach(this.swiperArr, (item, index: number)=>{
              Image(item).objectFit(ImageFit.Contain).borderRadius(10)
            })
          }
          .width('100%')
          .loop(true)       // 列表循环
          .autoPlay(true)   // 自动轮播
          .interval(3000)   // 间隔时间
        }.width('94%').height(160).borderRadius(10)

        Row(){
          // 平台文本简介
          ForEach(this.brieflyArr, (item, index: number)=>{
            Row({space: 5}){
              Image(item[0]).width(14).height(14)
              Text(item[1]).fontSize(12)
            }.height('100%').layoutWeight(1).justifyContent(FlexAlign.Center)
          })
        }.width('100%').height(20)

        // 功能页组件
        Capabilities()

        // 特价专区
        PreferentialZone()

        // 办公分类选择
        MallPageClassify()

        // 底部标签
        Column(){
          Text('@22软件技术1班').fontSize(12).opacity(0.9)
          Text('版权所有').fontSize(12).opacity(0.9)
        }.width('100%').height(100).justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)

      }.width('100%').layoutWeight(1).backgroundColor('#ffefefef')
    }.width('100%').edgeEffect(EdgeEffect.Fade).scrollBar(BarState.Off)
  }
}