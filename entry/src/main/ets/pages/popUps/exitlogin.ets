
@CustomDialog
export struct exitLogin {
  // 控制器
  controller: CustomDialogController
  save?: () => void;
  cancel?: () => void;

  build() {
    Column({space: 15}){
      Text('确认退出登录吗').fontSize(20).textAlign(TextAlign.Center).width('100%').layoutWeight(1)
      Row({space: 10}){
        Button('确认').type(ButtonType.Normal).width(100).onClick(()=>{
          this.save()
        })

        Button('取消').type(ButtonType.Normal).width(100).onClick(()=>{
          this.cancel()
        })
      }.width('100%').layoutWeight(1).justifyContent(FlexAlign.SpaceAround)
    }.width('80%').height('18%').backgroundColor('#ffffff')
    .justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
  }
}
