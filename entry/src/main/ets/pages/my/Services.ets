
@Component
export struct Services {

  private ServicesArr: any[][] = [
    [$rawfile('My/yhj1.png'), '优惠卷'],
    [$rawfile('My/ljzx2.png'), '领卷中心'],
    [$rawfile('My/zsrz3.png'), '招商入驻'],
    [$rawfile('My/bzzx4.png'), '帮助中心'],
    [$rawfile('My/ptkf5.png'), '平台客服'],
    [$rawfile('My/tsjy6.png'), '投诉建议'],
    [$rawfile('My/wxgzh7.png'), '微信公众号'],
    [$rawfile('My/hyzx8.png'), '会员中心'],
    [$rawfile('My/qyxx9.png'), '企业信息']
  ]

  build() {
    Column(){
      Row(){
        Text('我的服务').fontSize(18).fontWeight(500)
      }.width('94%').justifyContent(FlexAlign.Start).layoutWeight(1)

      Grid(){
        ForEach(this.ServicesArr, (item, index: number)=>{
          GridItem(){
            Column({space: 5}){
              Row(){
                Image(item[0]).objectFit(ImageFit.Contain).width(28)
              }.width(40).height(40).borderRadius(99)
              .justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center).backgroundColor('#ffdddada')
              Text(item[1]).fontSize(12)
            }.onClick(()=>{
              // 根据下标判断那个功能的点击事件
            })
          }
        })
      }.rowsTemplate('1fr 1fr 1fr').columnsTemplate('1fr 1fr  1fr 1fr').layoutWeight(5)
    }.width('94%').backgroundColor('#ffffff').borderRadius(10)
  }
}