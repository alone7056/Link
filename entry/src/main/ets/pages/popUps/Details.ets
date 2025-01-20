

// 账单明细弹窗
@CustomDialog
export struct Details {

  aboutToAppear(){

  }

  // 控制器
  controller: CustomDialogController
  save?: () => void;
  cancel?: () => void;

  build(){
    Column(){

    }.width('100%').height('60%').backgroundColor('#ffffff')
  }

}