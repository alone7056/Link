
@Component
export struct Classify {

  private AllClassify: any[][] = [
    [$rawfile('Mall/bjb.png'), '笔记本'],
    [$rawfile('Mall/tsj.png'), '台式机'],
    [$rawfile('Mall/ytj.png'), '一体机'],
    [$rawfile('Mall/hydp.png'), '会议大屏'],
    [$rawfile('Mall/hydp.png'), '会议大屏']
  ]

  build() {
    Column({space: 10}) {
      // 搜索栏
      Row(){
        Stack(){
          Image($rawfile('Mall/search.png')).objectFit(ImageFit.Contain).width(18).margin({right: 230}).zIndex(1)
          TextInput({placeholder: '搜一搜'}).backgroundColor('#ffffff').width('84%').borderRadius(0).zIndex(0)
            .onChange((v: string)=>{
              // 搜索关键字保存
            })
        }.height('100%').layoutWeight(4)

        Divider().vertical(true).strokeWidth(1).color('#ffe3e0e0').height('20')

        Text('搜索').fontSize(17).height('100%').layoutWeight(1).textAlign(TextAlign.Center)
          .onClick(()=>{
            // 搜索点击事件

          })

      }.width('100%').height(45).backgroundColor('#ffffff').borderRadius(99)

      // 所有分类选项
      Column(){
        Row(){
          Blank().layoutWeight(1)
          Row(){
            ForEach(this.AllClassify, (item: any, index: number)=>{
              Column({space: 4}){
                Row(){
                  Image(item[0]).objectFit(ImageFit.Contain).width(40)
                }.width(50).height(50).borderRadius(15).backgroundColor('#ffc3f6f6').justifyContent(FlexAlign.Center)
                Text(item[1]).fontSize(12)
              }.height('100%').layoutWeight(1)
            })
          }.layoutWeight(20).height('100%')
          Text('展开').fontSize(12).layoutWeight(1)
        }.width('100%').height(100)
      }.width('100%')


    }.width('100%').layoutWeight(1).padding(10).backgroundColor('#ffefefef')
  }
}