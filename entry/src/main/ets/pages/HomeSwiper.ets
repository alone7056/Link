import { Mall } from './mall/Mall';
import { Classify } from './classify/Classify'
import { ShoppingCart } from './shoppingCart/shoppingCart';
import { My } from './my/My';
import { TabItem } from '../model/TabItem'
import { currentClassify } from '../model/RoutingData'
import router from '@ohos.router';


@Entry
@Component
// Swiper方式实现导航切换
struct HomeSwiper {

  // 导航栏图片选项
  tabItemList: TabItem[] = [
    new TabItem($r('app.media.tab_mall_0'), $r('app.media.tab_mall_1'), '商城'),
    new TabItem($r('app.media.tab_classify_0'), $r('app.media.tab_classify_1'), '分类'),
    new TabItem($r('app.media.tab_ShoppingCart_0'), $r('app.media.tab_ShoppingCart_1'), '购物车'),
    new TabItem($r('app.media.tab_My_0'), $r('app.media.tab_My_1'), '我的')
  ]

  // 当前选中的索引 父组件@Provide/子组件@Consume实现双向绑定
  @Provide('currentIndex') currentIndex: number = 0
  // 轮播当前索引
  @Provide('swiperIndex') swiperIndex: number = 0
  // 当前分类
  @Provide('currentClassify') currentClassify: number = -1


  // 页面加载前执行
  aboutToAppear(){
    // 获取注册和重置密码页面传递过来的账号信息
    try {
      const params: currentClassify = router.getParams() as currentClassify;
      this.currentClassify = params.currentClassify
      this.currentIndex = 1
      this.swiperIndex = 1
    } catch (err) {
      console.log('路由传参报错(HomeSwiper)')
    }
  }

  build() {
    Stack(){
      Column() {

        // 轮播组件商城、分类、购物车、我的
        Swiper() {

          Mall()
          Classify()
          ShoppingCart()
          My()

        }.width('100%').layoutWeight(10)
        .indicator(false) // 指示器隐藏
        .index(this.swiperIndex) // 当前索引
        .loop(false)       // 列表循环
        .onChange((v: number)=>{
          // 改变时执行更新图标状态
          this.currentIndex = v
        })

        // 导航栏
        Row() {
          // 循环渲染tab图标
          ForEach(this.tabItemList, (item: TabItem, index: number) => {
              Column({ space: 5 }) {
                // 当前下标索引等于循环下标则改变图标颜色
                Image(this.currentIndex == index ? item.selectedIcon : item.icon).width(25).height(25)
                Text(item.text).fontSize(13)
              }.height(70).justifyContent(FlexAlign.End).padding(5)
              .onClick(() => {
                // 点击对应的导航栏图标时更新下标索引值完成切换页面
                this.currentIndex = index
                this.swiperIndex = index
              })
          })

        }.width('100%').border({ width: { top: 1 }, color: '#ffbcbaba' })
        .justifyContent(FlexAlign.SpaceAround)
        .layoutWeight(1)

      }.width('100%').height('100%')
    }
  }

}