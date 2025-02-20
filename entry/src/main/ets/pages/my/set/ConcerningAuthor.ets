
@Entry
@Component
// 关于作者
struct ConcerningAuthor {
  build() {
    Column() {

      Column(){
        Column({space: 10}){
          Image($r('app.media.wxtx')).width(100).height(100).borderRadius(99)
          Text('去码头整点薯条').fontSize(20).fontColor('#ffffff')
        }.width('100%').layoutWeight(1).justifyContent(FlexAlign.End).backgroundColor('#ff619cae').padding(10)
        Column({space: 10}){

            Text('电话').fontSize(18).fontColor('#ffffff')
            Text('193****7306').fontSize(18).fontColor('#ffffff')

            Text('邮箱').fontSize(18).fontColor('#ffffff')
            Text('2587328977@qq.com').fontSize(18).fontColor('#ffffff')

            Text('QQ').fontSize(18).fontColor('#ffffff')
            Text('2587328977').fontSize(18).fontColor('#ffffff')

        }.width('100%').layoutWeight(1).padding(10).justifyContent(FlexAlign.Center).backgroundColor('#ff66ae61')
      }.width('90%').height('60%').backgroundColor('#ffffff')

    }.width('100%').height('100%').justifyContent(FlexAlign.Center).backgroundColor('#ffefefef')
  }
}