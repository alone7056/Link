
@Component
export struct Classify {

  private AllClassify: any[][] = [
    [$rawfile('Mall/bjb.png'), '笔记本'],
    [$rawfile('Mall/tsj.png'), '台式机'],
    [$rawfile('Mall/ytj.png'), '一体机'],
    [$rawfile('Mall/hydp.png'), '显示器'],
    [$rawfile('Mall/hydp.png'), '会议大屏'],
    [$rawfile('Mall/bjb.png'), '打印机'],
    [$rawfile('Mall/tsj.png'), '单主机'],
    [$rawfile('Mall/ytj.png'), '复合机']
  ]

  // 搜索关键字
  @State keywords: string  = ''

  // 是否展开所有分类，默认不展开
  @State isUnfold: boolean  = false

  // 当前分类
  @State currentClassify: number  = -1

  build() {
    Column({space: 10}) {
      // 搜索栏
      Row(){
        Stack(){
          Image($rawfile('Mall/search.png')).objectFit(ImageFit.Contain).width(18).margin({right: 260}).zIndex(1)
          TextInput({placeholder: '搜一搜'}).backgroundColor('#ffffff').width('84%').borderRadius(0).zIndex(0)
            .onChange((v: string)=>{
              // 搜索关键字保存
              this.keywords = v
            })
        }.height('100%').layoutWeight(4)

        Divider().vertical(true).strokeWidth(1).color('#ffe3e0e0').height('20')

        Text('搜索').fontSize(17).height('100%').layoutWeight(1).textAlign(TextAlign.Center)
          .onClick(()=>{
            // 搜索点击事件

          })

      }.width('94%').height(45).backgroundColor('#ffffff').borderRadius(99).margin({top: 10})

      // 所有分类选项
      Column({space: 5}){
        if (!this.isUnfold) {
          Row(){
            Row(){
              ForEach(this.AllClassify, (item: any, index: number)=>{
                if (index < 5) {
                  Column({space: 4}){
                    Row(){
                      Image(item[0]).objectFit(ImageFit.Contain).width(40)
                    }.width(50).height(50).borderRadius(15).backgroundColor('#ffc3f6f6').justifyContent(FlexAlign.Center)
                    .border({width:index == this.currentClassify ? 1 : 0, color: '#ff13e3f3' })
                    Text(item[1]).fontSize(12).fontColor(index == this.currentClassify ? '#ff13e3f3' : '#000000')
                  }.height('100%').layoutWeight(1)
                  .onClick(()=>{
                    // 选中分类点击事件
                    this.currentClassify = index
                  })
                }
              })
            }.width('95%').height('100%')
            Column(){
              Text('展开').fontSize(12)
              Image($rawfile('Classify/unfold.png')).width(15).height(15)
            }.width('5%').height('100%').justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
            .onClick(()=>{
              // 展开所有分类点击事件
              this.isUnfold = !this.isUnfold
            })
          }.width('100%').height(70)
        } else {
          Row(){
            Text('全部分类').fontSize(20).fontWeight(500)
            Blank()
            Column(){
              Text('收起').fontSize(12)
              Image($rawfile('Classify/unfold.png')).width(15).height(15).rotate({ angle: 180 })
            }.width('5%').height('100%').justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
            .onClick(()=>{
              // 收起所有分类
              this.isUnfold = !this.isUnfold
            })
          }.width('100%').height(50)
          Grid(){
            ForEach(this.AllClassify, (item: any, index: number)=>{
              GridItem(){
                Column({space: 4}){
                  Row(){
                    Image(item[0]).objectFit(ImageFit.Contain).width(40)
                  }.width(50).height(50).borderRadius(15).backgroundColor('#ffc3f6f6').justifyContent(FlexAlign.Center)
                  .border({width:index == this.currentClassify ? 1 : 0, color: '#ff13e3f3' })
                  Text(item[1]).fontSize(12).width('100%').textAlign(TextAlign.Center)
                    .fontColor(index == this.currentClassify ? '#ff13e3f3' : '#000000')
                }.width('100%')

              }.width('100%').height('100%')
              .onClick(()=>{
                // 选中的当前分类
                this.currentClassify = index
              })
            })
          }.width('100%').height(140).rowsTemplate('1fr 1fr').columnsTemplate('1fr 1fr 1fr 1fr 1fr').rowsGap(8)
        }
        // 横线
        Divider().width('100%')
        // 综合推荐与价格排序
        Row({space: 20}){
          Text('综合推荐').fontSize(13)
          Row(){
            Text('价格').fontSize(13).width('60%')
            Column(){
              Image($rawfile('Classify/xia0.png')).width(10).height(10).rotate({ angle: 180 })
              Image($rawfile('Classify/xia0.png')).width(10).height(10)
            }.height('100%').width('40%')
          }.width('15%').height('100%').justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center)
        }.width('100%').height(20).padding({right: 10, left: 10})
      }.width('94%')


    }.width('100%').layoutWeight(1)
    // 背景渐变色
    .linearGradient({
      direction: GradientDirection.Bottom, // 渐变方向
      repeating: false, // 渐变颜色是否重复
      colors: [['#ffe0ffff', 0.1], ['#fff5ffff', 0.5], ['#fffbffff', 0.9]] // 数组末尾元素占比小于1时满足重复着色效果
    })
  }
}