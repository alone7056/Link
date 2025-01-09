
import { LaptopDetails } from '../../common/PageRenderingValues';
import { Laptop } from '../../model/Laptop';
@CustomDialog
export struct chooseConfigure {
  // 控制器
  controller: CustomDialogController
  save?: () => void;
  cancel?: () => void;

  @Consume('theNameOfTheDevice') theNameOfTheDevice: string; // 设备名称
  @Consume('introductionToParameters') introductionToParameters: string; // 参数简介
  @Consume('monthlyPrice') monthlyPrice: number; // 月租价格
  @Consume('equipmentType') equipmentType: string; // 设备类型
  @Consume('lease') lease: number[]; // 租期
  @Consume('leaseIndex') leaseIndex: number; // 租期下标——默认12个月

  // 当前渲染数据
  @State rendering: Laptop[] = undefined;

  // 弹窗记载前执行
  aboutToAppear(){
    console.log('(chooseConfigure)加载了')
    console.log('(chooseConfigure):' + this.theNameOfTheDevice + '|'  + this.introductionToParameters + '|' + this.monthlyPrice + '|' + this.equipmentType)
    if (this.equipmentType == 'Laptop') {
      this.rendering = LaptopDetails.filter(Laptop => Laptop.TheNameOfTheNotebook.includes(this.theNameOfTheDevice));
      console.log('(chooseConfigure)this.rendering.length:' + this.rendering.length)
    }
  }

  // 弹窗销毁后执行
  aboutToDisappear(){
    console.log('(chooseConfigure)销毁了')
    if (this.leaseIndex == 1) {
      this.monthlyPrice -= 10
      this.lease[2] = 24
    }
  }

  build() {
    Column(){
      Row(){
        Image(this.rendering[0].particularsSwiper[0]).height('100%').layoutWeight(1)
        Column(){
          Row(){
            Image($r('app.media.close')).width(20).height(20)
              .onClick(()=>{
                this.cancel()
              })
          }.width('100%').layoutWeight(1).justifyContent(FlexAlign.End)

          Row(){
            Text(){
              Span('￥').fontSize(12).fontColor('#e44454')
              Span(this.monthlyPrice + '').fontSize(18).fontColor('#e44454')
              Span('.00/月').fontSize(14).fontColor('#e44454')
            }
          }.width('100%').layoutWeight(1).justifyContent(FlexAlign.Start)

          Row(){
            Text('已选：' + this.introductionToParameters)
              .fontSize(13)
              .width('100%')
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
              .opacity(0.7)
          }.width('100%').layoutWeight(1).justifyContent(FlexAlign.Start)
        }.height('100%').layoutWeight(3).padding(10)
      }.width('100%').layoutWeight(2)

      Divider().width('100%')

      Scroll(){
        Column({space: 15}){
          Row(){
            Text('选择配置')
          }.width('100%').height(30).justifyContent(FlexAlign.Start)
          ForEach(this.rendering[0].optionalConfiguration, (item: string[], index: number)=>{
            Row(){
              Text(item[0]).height('100%').padding(5).borderRadius(99)
                .fontSize(14)
                .fontColor(this.introductionToParameters == item[0] ? '#e44454' : '#000000')
                .backgroundColor('#fff1efef')
                .border({width: this.introductionToParameters == item[0] ? 1 : 0, color: '#e44454'})
                .onClick(()=>{
                  this.introductionToParameters = item[0]
                  this.monthlyPrice = Number(item[1])
                })
            }.width('100%').height(30).justifyContent(FlexAlign.Start)
          })

          Row(){
            Text('选择租赁方式')
          }.width('100%').height(30).justifyContent(FlexAlign.Start)

          Column({space: 10}) {

            ForEach(this.lease, (item: number, index: number)=>{
              if (index < this.lease.length - 1) {
                Row(){
                  Column(){
                    Row() {
                      Text() {
                        Span('首月租金：')
                        Span(index == 0 ? '￥' + this. monthlyPrice : '￥' + (this.monthlyPrice - 10)).fontColor('#f9543d')
                        Span(' ，租期')
                        Span(item + '').fontColor('#f9543d')
                        Span('个月 ')
                        Span('固定租期').fontColor('#f9543d')
                      }.width('100%').fontSize(15)
                    }.width('100%').layoutWeight(1)

                    Row() {
                      Text('到期归还Link，租期未满12个月需自行垫付运费等相关费用').width('95%').fontSize(15)
                    }.width('100%').layoutWeight(1).opacity(0.7)
                  }.height('100%').layoutWeight(6).padding({left: 10})

                  Row(){
                    Radio({ value: 'lease', group: 'radioGroup' }).checked(this.leaseIndex == index ? true : false)
                      .onChange(()=>{
                        this.leaseIndex = index
                      })
                  }.justifyContent(FlexAlign.Center).alignItems(VerticalAlign.Center).height('100%').layoutWeight(1)

                }.width('100%').layoutWeight(1).backgroundColor('#f5f6f8').border({width: index == this.leaseIndex ? 1 : 0, color: '#f9543d'})
              }
            })

          }.width('100%').height(180)

        }.width('100%').padding(12)

      }.width('100%').layoutWeight(6)

      Row(){
        Text('加入购物车').fontColor('#ffffff')
      }.width('100%').layoutWeight(1).backgroundColor('#ff38baf3').justifyContent(FlexAlign.Center)
    }.width('100%').height('60%').backgroundColor('#ffffff')
  }
}
