import { synthesisRecommend, LaptopClassify } from '../../common/PageRenderingValues'
import { equipmentSynopsis } from '../../model/EquipmentSynopsis'

@Component
export struct Classify {

  private AllClassify: any[][] = [
    [$rawfile('Mall/bjb.png'), '笔记本'],
    [$rawfile('Mall/tsj.png'), '台式机'],
    [$rawfile('Mall/ytj.png'), '一体机'],
    [$rawfile('Mall/xsq.png'), '显示器'],
    [$rawfile('Mall/hydp.png'), '会议大屏'],
    [$rawfile('Mall/dyj.png'), '打印机'],
    [$rawfile('Mall/dzj.png'), '单主机'],
    [$rawfile('Mall/fhj.png'), '复合机']
  ]

  // 当前页面渲染数据数组
  @State rendering: equipmentSynopsis[] = synthesisRecommend

  // 搜索关键字
  @State keywords: string  = ''

  // 是否展开所有分类，默认不展开
  @State isUnfold: boolean  = false

  // 当前分类
  @Consume('currentClassify') currentClassify: number;

  // 综合推荐状态默认状态
  @State synthesisRecommend: boolean = true

  // 价格排序 三种状态 -1未选中/%2等于1为升序/%2等于0为降序
  @State PriceSort: number = -1

  // 降序数组
  @State DescendingArr: equipmentSynopsis[] = []

  // 升序数组
  @State AscendingArr: equipmentSynopsis[] = []

  // 页面加载前执行
  aboutToAppear(){
    console.log('Classify开始加载了')
    console.log('(Classify)this.currentClassify:' + this.currentClassify)
    this.currentRendering(this.currentClassify)
    // currentClassify非-1综合排序不显示
    if (this.currentClassify != -1) {
      this.synthesisRecommend = false
    }
  }

  // 页面销毁时执行
  aboutToDisappear(){
    console.log('Classify销毁了')
  }


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
                    this.synthesisRecommend = false
                    this.currentRendering(index)
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
                this.synthesisRecommend = false
                this.currentRendering(index)
              })
            })
          }.width('100%').height(140).rowsTemplate('1fr 1fr').columnsTemplate('1fr 1fr 1fr 1fr 1fr').rowsGap(8)
        }
        // 横线
        Divider().width('100%')
        // 综合推荐与价格排序
        Row({space: 20}){
          Text('综合推荐').fontSize(13).fontColor(this.synthesisRecommend ? '#ff13e3f3' : '#000000')
          .onClick(()=>{
            this.synthesisRecommend = true
            this.currentClassify = -1
            this.PriceSort = -1
            this.rendering = synthesisRecommend
          })
          Row(){
            Text('价格').fontSize(13).width('60%')
            .fontColor(this.PriceSort != -1 ? '#ff13e3f3' : '#000000')
            Column(){
              // 三元表达式解决价格升序降序状态 PriceSort%2等于零时升序此时上面的图片选中状态 反之下面的图片选中状态
              Image(this.PriceSort %2 == 0 && this.PriceSort != -1 ? $rawfile('Classify/xia1.png') : $rawfile('Classify/xia0.png')).width(10).height(10).rotate({ angle: 180 })
              Image(this.PriceSort %2 == 1 && this.PriceSort != -1 ? $rawfile('Classify/xia1.png') : $rawfile('Classify/xia0.png')).width(10).height(10)
            }.height('100%').width('40%')
          }.width('15%').height('100%').justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center)
          .onClick(()=>{
            this.PriceSort += 1
            // 价格排序 true升序/false降序
            if (this.PriceSort %2 == 0 && this.PriceSort != -1) {
              // 升序 sort()函数进行排序
              this.AscendingArr = [...this.rendering].sort((a, b) => a.monthlyPrice - b.monthlyPrice);
            } else {
              // 降序
              this.DescendingArr = [...this.rendering].sort((a, b) => b.monthlyPrice - a.monthlyPrice);
            }
          })
        }.width('100%').height(20).padding({right: 10, left: 10})

      }.width('94%')

      // 后续可以用LazyForEach优化
      List({space: 10}){
        //
        ForEach(this.PriceSort != -1 ? (this.PriceSort %2 == 0 ? this.AscendingArr : this.DescendingArr) : this.rendering, (item: equipmentSynopsis, index: number)=>{
          ListItem(){
            Row(){
              // 设备图片
              Image(item.picturesOfTheDevice).objectFit(ImageFit.Contain).height('100%').layoutWeight(4)
              // 参数简述价格
              Column({space: 5}){
                Text(item.theNameOfTheDevice).fontSize(13).width('100%').textAlign(TextAlign.Start)
                Text(item.introductionToParameters).fontSize(10).width('100%').textAlign(TextAlign.Start)
                Text(){
                  Span(item.monthlyPrice + '.').fontSize(16).fontColor('#f9543d')
                  Span('00/月').fontSize(13).fontColor('#f9543d')
                }.fontSize(14).width('100%').textAlign(TextAlign.Start)
              }.height('100%').layoutWeight(8).padding(10)

              Column() {
                // 点击查看更多图标
                Image($rawfile('Classify/xia0.png')).rotate({ angle: -90 }).width(15).height(15)
                .onClick(()=>{
                  // 跳转至详情页面

                })
                // 添加购物车按钮
                Row(){
                  Text('+').fontSize(16).fontWeight(500).fontColor('#ffffff')
                }.width(20).height(20).backgroundColor('#fa6d4b').justifyContent(FlexAlign.Center).borderRadius(99)
                .onClick(()=>{
                  // 添加至购物车点击事件

                })
              }.height('100%').layoutWeight(1).justifyContent(FlexAlign.SpaceAround).alignItems(HorizontalAlign.Center)
            }.width('100%').height('100%')
          }.width('100%').height(100).backgroundColor('#ffffff').padding({right: 10})
        })
      }.scrollBar(BarState.Auto)

    }.width('100%').layoutWeight(1)
    // 背景渐变色
    .linearGradient({
      direction: GradientDirection.Bottom, // 渐变方向
      repeating: false, // 渐变颜色是否重复
      colors: [['#ffe0ffff', 0.1], ['#ffffff', 0.2],['#ffeae8e8', 0.3], ['#ffebeeee', 0.9]] // 数组末尾元素占比小于1时满足重复着色效果
    })
  }
  // 当前页面渲染数据
  currentRendering(index: number){
    // 选中的当前分类
    this.currentClassify = index
    this.PriceSort = -1
    if (index == 0) {
      // 笔记本分类
      this.rendering = LaptopClassify
    } else if (index == 1) {

    }
  }
}