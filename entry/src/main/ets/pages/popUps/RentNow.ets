
import promptAction from '@ohos.promptAction';
import { deviceDetails } from '../../model/EquipmentClass'
import { LaptopDetails } from '../../common/NotebookDataSheet'
import { DisplayDetails } from '../../common/DisplayDatasheet'
import { DesktopDetails } from '../../common/DesktopDataSheet'
import { allInOneMachineDetails } from '../../common/AllInOneDataSheet'
import { conferenceScreenDetails } from '../../common/ConferenceDashboardDataSheet'
import { printerDetails } from '../../common/PrinterDatasheet'
import { singleHostDetails } from '../../common/SingleHostDatasheet'
import { scd } from '../../model/ShoppingCartData'
import { shoppingCartDb } from '../../db/ShoppingCartDb';
import LoadingDialog from '../../utils/TipsDialog';
import { userDb } from '../../db/UserDb';


@CustomDialog
  // 配置选择弹窗
export struct RentNow {
  // 控制器
  controller: CustomDialogController
  save?: () => void;
  cancel?: () => void;

  @Consume('theNameOfTheDevice') theNameOfTheDevice: string; // 设备名称
  @Consume('propagandaHeadline') propagandaHeadline: string; // 设备标题
  @Consume('introductionToParameters') introductionToParameters: string; // 参数简介
  @Consume('monthlyPrice') monthlyPrice: number; // 月租价格
  @Consume('equipmentType') equipmentType: string; // 设备类型
  @Consume('lease') lease: number[]; // 租期
  @Consume('leaseIndex') leaseIndex: number; // 租期下标——默认12个月

  // 当前渲染数据
  @State rendering: deviceDetails[] = undefined;

  // 租赁数量
  @State numberOfLeases: number = 1;

  // 弹窗记载前执行
  aboutToAppear(){
    console.log('(RentNow)加载了')

    // 笔记本
    console.log('(RentNow):' + this.theNameOfTheDevice + '|'  + this.introductionToParameters + '|' + this.monthlyPrice + '|' + this.equipmentType)
    if (this.equipmentType == 'Laptop') {
      this.rendering = LaptopDetails.filter(Laptop => Laptop.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 显示器
    if (this.equipmentType == 'Display') {
      this.rendering = DisplayDetails.filter(Display => Display.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 台式机
    if (this.equipmentType == 'Desktop') {
      this.rendering = DesktopDetails.filter(Desktop => Desktop.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 台式机
    if (this.equipmentType == 'allInOneMachine') {
      this.rendering = allInOneMachineDetails.filter(allInOneMachine => allInOneMachine.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 会议大屏
    if (this.equipmentType == 'conferenceScreen') {
      this.rendering = conferenceScreenDetails.filter(conferenceScreen => conferenceScreen.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 打印机
    if (this.equipmentType == 'printer') {
      this.rendering = printerDetails.filter(printer => printer.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }
    // 单主机
    if (this.equipmentType == 'singleHost') {
      this.rendering = singleHostDetails.filter(singleHost => singleHost.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
    }

  }

  // 弹窗销毁后执行
  aboutToDisappear(){
    console.log('(RentNow)销毁了')
    if (this.leaseIndex == 1) {
      this.lease[2] = 24
    } else {
      this.lease[2] = 12
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
              Span(this.lease[2] == 24 ? this.monthlyPrice <= 40 ? this.monthlyPrice - 5 + '.' : this.monthlyPrice - 10 + '.'  : this.monthlyPrice + '.').fontSize(18).fontColor('#e44454')
              Span('00/月').fontSize(14).fontColor('#e44454')
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
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .maxLines(1)
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
                        // 租金为24个月的每月优惠10元 显示器优惠5元
                        Span(index == 0 ? '￥' + this. monthlyPrice : this.monthlyPrice <= 40 ? '￥' + (this.monthlyPrice - 5) : '￥' + (this.monthlyPrice - 10)).fontColor('#f9543d')
                        Span(' ，租期')
                        Span(item + '').fontColor('#f9543d')
                        Span('个月 ')
                        Span('固定租期').fontColor('#f9543d')
                      }.width('100%').fontSize(15)
                    }.width('100%').layoutWeight(1)

                    Row() {
                      Text('到期归还Link，租期未满'+ item +'个月需自行垫付运费等相关费用').width('95%').fontSize(15)
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

          // 租赁数量
          Row(){
            Text('数量').height('100%').layoutWeight(2)
            Row({space: 5}){
              Text('-').height('70%').layoutWeight(3).backgroundColor('#f5f5f5').borderRadius({topLeft: 99, bottomLeft: 99}).textAlign(TextAlign.Center)
                .onClick(()=>{
                  this.numberOfLeases--
                  if (this.numberOfLeases == 0) {
                    this.numberOfLeases = 1
                    promptAction.showToast({message: '租赁数量不能小于1！', bottom: 80})
                  }
                })
              Text(this.numberOfLeases + '').height('70%').layoutWeight(4).backgroundColor('#f5f5f5').textAlign(TextAlign.Center)
              Text('+').height('70%').layoutWeight(3).backgroundColor('#f5f5f5').borderRadius({topRight: 99, bottomRight: 99}).textAlign(TextAlign.Center)
                .onClick(()=>{
                  this.numberOfLeases++
                })
            }.height('100%').layoutWeight(1)
          }.width('100%').height(50)

        }.width('100%').padding(12)

      }.width('100%').layoutWeight(6)

      Row(){
        Button('立即租赁')
          .fontColor('#ffffff')
          .width('100%')
          .height('100%')
          .backgroundColor('#0d87fc')
          .type(ButtonType.Normal)
          .onClick(async ()=>{
            // 购物车添加设备点击事件
            const queryResult = await userDb.queryAllUser()
            // 找出登录状态的账号 确认用户是否登录 登录用户则执行添加
            if (queryResult.length > 0) {
              for (let index = 0; index < queryResult.length; index++) {
                if (Number(queryResult[index].whetherLogin) == 1) {
                  await this.addDevice()
                } else {
                  LoadingDialog.showFailure('添加失败，请先注册登录')
                }
              }
            } else {
              LoadingDialog.showFailure('添加失败，请先注册登录')
            }
          })
      }.width('100%').layoutWeight(1).justifyContent(FlexAlign.Center)
    }.width('100%').height('60%').backgroundColor('#ffffff')
  }

  async addDevice(){
    // 图片地址
    scd.iconSrc = AppStorage.Get('picturesOfTheDevice')
    // 设备名称
    scd.theNameOfTheDevice = this.theNameOfTheDevice + this.introductionToParameters
    // 设备标题
    scd.propagandaHeadline = this.propagandaHeadline
    // 参数简介
    scd.introductionToParameters = this.introductionToParameters
    // 月租价格
    scd.monthlyPrice = this.monthlyPrice
    // 租期
    scd.lease = this.leaseIndex == 0 ? 12 : 24
    // 押金
    if (this.monthlyPrice < 50) {
      scd.deposit = 500
    } else if (this.monthlyPrice < 100){
      scd.deposit = 1800
    } else if (this.monthlyPrice < 150){
      scd.deposit = 3000
    } else if (this.monthlyPrice < 200){
      scd.deposit = 3800
    } else if (this.monthlyPrice < 250){
      scd.deposit = 5000
    } else if (this.monthlyPrice < 300){
      scd.deposit = 5700
    } else if (this.monthlyPrice < 400){
      scd.deposit = 7000
    } else if (this.monthlyPrice < 500){
      scd.deposit = 9000
    } else {
      scd.deposit = 10000
    }
    // 租借数量
    scd.numberOfLeases = this.numberOfLeases
    // 设备类型
    scd.equipmentType = this.equipmentType

    console.log('(RentNow)theNameOfTheDevice:' + this.theNameOfTheDevice)
    console.log('(RentNow)propagandaHeadline:' + this.propagandaHeadline)
    console.log('(RentNow)introductionToParameters:' + this.introductionToParameters)
    console.log('(RentNow)monthlyPrice:' + this.monthlyPrice)
    console.log('(RentNow)lease:' + scd.lease)
    console.log('(RentNow)deposit:' + scd.deposit)
    console.log('(RentNow)numberOfLeases:' + scd.numberOfLeases)
    console.log('(RentNow)equipmentType:' + scd.equipmentType)

    // 添加
    const result = await shoppingCartDb.add(scd)

    if (result) {
      LoadingDialog.showSuccess('订单提交成功')
      this.controller.close()
    } else {
      LoadingDialog.showFailure('订单提交失败')
    }

    console.log('查询(RentNow)：' + JSON.stringify(await shoppingCartDb.queryShoppingCartInformation()))
  }
}
