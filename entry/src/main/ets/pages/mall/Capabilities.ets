

@Component
export struct Capabilities {
  private capabilitiesArr: any[][] = [
    [$rawfile('Mall/lw.png'), '我要租赁'],
    [$rawfile('Mall/fx.png'), '推荐领佣金'],
    [$rawfile('Mall/hz.png'), '合作生态'],
    [$rawfile('Mall/kf.png'), '在线维修'],
    [$rawfile('Mall/gywm1.png'), '关于作者'],
    [$rawfile('Mall/bjb.png'), '笔记本'],
    [$rawfile('Mall/tsj.png'), '台式机'],
    [$rawfile('Mall/ytj.png'), '一体机'],
    [$rawfile('Mall/hydp.png'), '会议大屏'],
    [$rawfile('Mall/fl.png'), '全部分类']
  ]

  // 父组件@Provide/子组件@Consume实现双向绑定 父组件HomeSwiper的属性
  @Consume currentIndex: number;
  @Consume swiperIndex: number;

  build() {
    Column(){
      Grid(){
        ForEach(this.capabilitiesArr, (item, index: number)=>{
          GridItem(){
            Column({space: 8}){
              if (index > 4) {
                Row(){
                  if (index > 4 && index < this.capabilitiesArr.length) {
                    Image(item[0]).width(32).height(32)
                  } else {
                    Image(item[0]).width(25).height(25)
                  }
                }.width(40).height(40).justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center).borderRadius(99).backgroundColor('#fff1fffd')
              } else {
                Image(item[0]).width(30).height(30)
              }
              Text(item[1]).fontSize(12)
            }
          }.onClick(()=>{
            if (index == 4) {
              
            }

            if (index == this.capabilitiesArr.length - 1) {
              // 修改父组件的值实现跳转
              this.currentIndex = 1
              this.swiperIndex = 1
            }
          })
        })
      }.rowsTemplate('1fr 1fr').columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    }.width('94%').height(160)
  }
}