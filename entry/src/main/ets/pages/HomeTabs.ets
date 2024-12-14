import { Mall } from './mall/Mall';
import { Classify } from './classify/Classify'
import { ShoppingCart } from './shoppingCart/shoppingCart';
import { My } from './my/My';
import { TabItem } from '../model/TabItem'

@Entry
@Component
struct HomeTabs {
  tabItemList: TabItem[] = [
    new TabItem($r('app.media.tab_mall_0'), $r('app.media.tab_mall_1'), '商城'),
    new TabItem($r('app.media.tab_classify_0'), $r('app.media.tab_classify_1'), '分类'),
    new TabItem($r('app.media.tab_ShoppingCart_0'), $r('app.media.tab_ShoppingCart_1'), '购物车'),
    new TabItem($r('app.media.tab_My_0'), $r('app.media.tab_My_1'), '我的')
  ]
  // 当前选中的索引
  @State currentIndex: number = 0;

  // Tab控制器，手动跳转
  tabController: TabsController = new TabsController();

  build() {

    Tabs({ controller: this.tabController, index: this.currentIndex }) {
      TabContent() {
        Mall()
      }.tabBar(this.tabBuilder(0))

      TabContent() {
        Classify()
      }.tabBar(this.tabBuilder(1))

      TabContent() {
        ShoppingCart()
      }.tabBar(this.tabBuilder(2))

      TabContent() {
        My()
      }.tabBar(this.tabBuilder(3))

    }
    .barHeight(70)
    .barPosition(BarPosition.End).margin({ bottom: 10 })
    .onChange((index: number)=>{
      this.currentIndex = index
    })
  }

  // 导航条选项样式
  @Builder tabBuilder(index: number) {
    Column({ space: 3 }) {
      // 判断当前选中的页面是否是这个标签，是：被选中的图片 否：未被选中的图片
      Image(this.currentIndex === index
        ? this.tabItemList[index].selectedIcon : this.tabItemList[index].icon)
        .width(30)
      Text(this.tabItemList[index].text).fontSize(15)
    }.width('100%').height('100%')
    .justifyContent(FlexAlign.End)
    .onClick(() => {
      this.currentIndex = index; // 改变当前的索引为点击的索引
      // 手动跳转到对应的索引页面
      this.tabController.changeIndex(this.currentIndex);
    })

  }
}
