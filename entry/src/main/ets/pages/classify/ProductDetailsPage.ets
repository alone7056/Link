import router from '@ohos.router';
import { currentIndex, DeviceInformation } from '../../model/RoutingData'
import { deviceDetails } from '../../model/EquipmentClass'
import { chooseConfigure } from '../popUps/chooseConfigure';
import { LaptopDetails, LaptopParameterInformation } from '../../common/NotebookDataSheet'
import { DisplayDetails, DisplayParameterInformation } from '../../common/DisplayDatasheet'
import { DesktopDetails, DesktopParameterInformation } from '../../common/DesktopDataSheet'
import { allInOneMachineDetails, allInOneMachineParameterInformation } from '../../common/AllInOneDataSheet'
import {conferenceScreenDetails,conferenceScreenParameterInformation} from '../../common/ConferenceDashboardDataSheet'
import { printerDetails, printerParameterInformation } from '../../common/PrinterDatasheet'
import { singleHostDetails, singleHostParameterInformation } from '../../common/SingleHostDatasheet'
import { RentNow } from '../popUps/RentNow';


@Entry
@Component
// 产品详情页面
struct ProductDetailsPage {
  @Provide('theNameOfTheDevice') theNameOfTheDevice: string = ''; // 设备名称
  @Provide('propagandaHeadline') propagandaHeadline: string = ''; // 设备标题
  @Provide('introductionToParameters') introductionToParameters: string = '' // 参数简介
  @Provide('monthlyPrice') monthlyPrice: number = 0 // 月租价格
  @Provide('equipmentType') equipmentType: string = ''; // 设备类型
  @State currentIndex: number = 0; // 当前索引


  @Provide('lease') lease: number[] = [12, 24, 12] // 租期
  @Provide('leaseIndex') leaseIndex: number = 0
  @State productDetailsArr: string[] = ['商品详情', '商品参数']

  // 当前渲染数据
  @State rendering: deviceDetails[] = undefined;
  // 当前设备参数信息
  @State currentDeviceParameters: string[][] = []

  aboutToAppear() {
    this.currentDeviceParameters.length = 0

    // 获取分类搜索页面传递过来的值
    try {
      const params: DeviceInformation = router.getParams() as DeviceInformation;
      this.theNameOfTheDevice = params.theNameOfTheDevice
      this.propagandaHeadline = params.propagandaHeadline
      this.introductionToParameters = params.introductionToParameters
      this.monthlyPrice = params.monthlyPrice
      this.equipmentType = params.equipmentType

      // 界面测试
      // this.theNameOfTheDevice = 'ThinkPad E490'
      // this.propagandaHeadline = 'ThinkPad E490 14英寸笔记本电脑'
      // this.introductionToParameters = 'I3-8145U/8G/256G SSD/核显/14/HD'
      // this.monthlyPrice = 65
      // this.equipmentType = 'Laptop'

      console.log('(ProductDetailsPage):' + this.theNameOfTheDevice + '|' + this.propagandaHeadline + '|' + this.introductionToParameters + '|' + this.monthlyPrice + '|' + this.equipmentType)
    } catch (err) {
      console.log('路由传参报错(ProductDetailsPage)')
    }

    // 笔记本类
    if (this.equipmentType == 'Laptop') {
      this.rendering = LaptopDetails.filter(Laptop => Laptop.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = LaptopParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 显示器类
    if (this.equipmentType == 'Display') {
      this.rendering = DisplayDetails.filter(Display => Display.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = DisplayParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 台式机类
    if (this.equipmentType == 'Desktop') {
      this.rendering = DesktopDetails.filter(Display => Display.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = DesktopParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 一体机类
    if (this.equipmentType == 'allInOneMachine') {
      this.rendering = allInOneMachineDetails.filter(Display => Display.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = allInOneMachineParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }
    // 会议大屏类
    if (this.equipmentType == 'conferenceScreen') {
      this.rendering = conferenceScreenDetails.filter(conferenceScreen => conferenceScreen.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = conferenceScreenParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 打印机类
    if (this.equipmentType == 'printer') {
      this.rendering = printerDetails.filter(printer => printer.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = printerParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 单主机类
    if (this.equipmentType == 'singleHost') {
      this.rendering = singleHostDetails.filter(singleHost => singleHost.TheNameOfTheDevice.includes(this.theNameOfTheDevice));
      this.currentDeviceParameters = singleHostParameterInformation
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    // 双层循环遍历当前要渲染的数据源 并拼接字段和数据方便后续操作
    for (let indexMax = 0; indexMax < this.currentDeviceParameters.length; indexMax++) {
      for (let indexMin = 0; indexMin < this.currentDeviceParameters[indexMax].length; indexMin++) {
        if (indexMin > 0) {
          // 消除多余字符
          this.currentDeviceParameters[indexMax][indexMin] = this.currentDeviceParameters[indexMax][indexMin] + '#'
          this.currentDeviceParameters[indexMax][indexMin] = this.currentDeviceParameters[indexMax][indexMin].slice(0, this.currentDeviceParameters[indexMax][indexMin].indexOf('#'))
          // 拼接字段与数据
          this.currentDeviceParameters[indexMax][indexMin] += '#' + this.rendering[0].ProductParameters[indexMax][indexMin - 1]
          // 控制台打印调试
          console.log(`(ProductDetailsPage)this.rendering[0].ProductParameters[${indexMax}][${indexMin - 1}]=${this.rendering[0].ProductParameters[indexMax][indexMin - 1]}`)
          console.log(`(ProductDetailsPage)this.currentDeviceParameters[${indexMax}][${indexMin}]=${this.currentDeviceParameters[indexMax][indexMin]}`)
        }
      }
    }

  }

  // 页面销毁执行
  aboutToDisappear() {

  }

  // 选择配置弹窗
  chooseConfigure: CustomDialogController = new CustomDialogController({
    builder: chooseConfigure({
      save: () => this.onAccept(),
      cancel: () => this.onCancel()
    }),
    alignment: DialogAlignment.Bottom, // 弹窗对齐方式
    offset: { dx: 0, dy: 0 }, // 设置弹窗的偏移量，这里 dy 为 50 表示弹窗底部距离屏幕底部有 50px 的间隔
    customStyle: true, // 是否自定义样式
  })

  // 确认方法
  async onAccept() {

  }

  // 取消方法
  onCancel() {
    this.chooseConfigure.close()
  }


  // 立即租赁弹窗
  RentNow: CustomDialogController = new CustomDialogController({
    builder: RentNow({
      save: () => this.onAccept2(),
      cancel: () => this.onCancel2()
    }),
    alignment: DialogAlignment.Bottom, // 弹窗对齐方式
    offset: { dx: 0, dy: 0 }, // 设置弹窗的偏移量，这里 dy 为 50 表示弹窗底部距离屏幕底部有 50px 的间隔
    customStyle: true, // 是否自定义样式
  })

  // 确认方法
  async onAccept2() {

  }

  // 取消方法
  onCancel2() {
    this.RentNow.close()
  }

  build() {
    Column() {
      Stack() {
        Text(this.theNameOfTheDevice + '详情').fontSize(20)
        Row() {
          Image($r('app.media.img_1')).width(10).rotate({ angle: 180 })
            .onClick(() => {
              // 返回上一级
              router.back()
            })
        }.width('93%').justifyContent(FlexAlign.Start)
      }.width('100%').layoutWeight(1)

      Scroll() {
        // 轮播图 价格 标题
        Column({ space: 10 }) {
          Column() {
            Row() {
              Swiper() {
                ForEach(this.rendering[0].particularsSwiper, (item, index: number) => {
                  Image(item).objectFit(ImageFit.Contain).width('100%')
                })
              }
              .width('100%')
              .loop(true) // 列表循环
              // 当轮播图数组长度大于1自动轮播反之取消自动轮播
              .autoPlay(this.rendering[0].particularsSwiper.length > 1 ? true : false) // 自动轮播
              .interval(3000) // 间隔时间
            }.width('100%').height(300)

            Divider().width('100%')

            Row() {
              Text() {
                Span('￥').fontSize(14).fontColor('#f9543d')
                // 如果租期是24个月每个月租期优惠10元 但如果是显示器租期为24个月每个月优惠5元
                Span(this.lease[2] == 24 ? this.monthlyPrice <= 40 ? this.monthlyPrice - 5 + '.' : this.monthlyPrice - 10 + '.' : this.monthlyPrice + '.')
                  .fontSize(20)
                  .fontColor('#f9543d')
                  .fontWeight(500)
                Span('00/月').fontSize(16).fontColor('#f9543d').fontWeight(500)
              }.fontSize(14).width('100%').textAlign(TextAlign.Start)
            }.width('100%').padding(10)

            Divider().width('100%')

            Row() {
              Text(this.propagandaHeadline + '(' + this.introductionToParameters + ')')
                .maxLines(2)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontWeight(500)
                .fontSize(16)
            }.width('100%').padding(10)
          }.width('100%').backgroundColor('#ffffff')

          // 配置选择
          Column() {
            Row() {
              Column() {
                Text('已选配置').width('100%').layoutWeight(1).fontSize(15).opacity(0.7)
                Blank().width('100%').layoutWeight(3)
              }.height('100%').layoutWeight(1).padding(8)

              Column() {
                Row() {

                  Text(this.introductionToParameters)
                    .fontSize(15)
                    .opacity(0.7)
                    .width('90%')
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    .maxLines(1)
                  Blank()
                  Image($r('app.media.img_1')).width(10)
                }.width('100%').layoutWeight(1).padding({ right: 10 })
                .onClick(() => {
                  // 打开配置选择弹窗
                  this.chooseConfigure.open()
                })

                Divider().width('85%').margin({ right: 50 })

                Column() {
                  Row() {
                    Text() {
                      Span('首月租金：')
                      Span(this.lease[2] == 24 ? this.monthlyPrice <= 40 ? '￥' + (this.monthlyPrice - 5) : '￥' + (this.monthlyPrice - 10) : '￥' + this.monthlyPrice)
                        .fontColor('#f9543d')
                      Span(' ，租期')
                      Span(this.lease[2] + '').fontColor('#f9543d')
                      Span('个月 ')
                      Span('固定租期').fontColor('#f9543d')
                    }.width('95%').fontSize(15)
                  }.width('100%').layoutWeight(1)

                  Row() {
                    Text('到期归还Link，租期未满' + this.lease[2] + '个月需自行垫付运费等相关费用')
                      .width('95%')
                      .fontSize(15)
                  }.width('100%').layoutWeight(1).opacity(0.7)
                }.width('100%').layoutWeight(2)
              }.height('100%').layoutWeight(4)
            }.width('100%').height(120).backgroundColor('#ffffff').padding(8)
          }

          // 导航栏 商品详情/商品参数
          Column() {
            Row() {
              ForEach(this.productDetailsArr, (item: string, index: number) => {
                Text(item)
                  .width('50%')
                  .height('100%')
                  .textAlign(TextAlign.Center)
                  .fontColor(this.currentIndex == index ? '#ff19b7f1' : '#000000')
                  .border({ width: { bottom: this.currentIndex == index ? 1 : 0 }, color: '#ff19b7f1' })
                  .onClick(() => {
                    this.currentIndex = index
                  })
              })
            }.width('100%').height(50)

            Column() {
              if (this.currentIndex == 0) {
                ForEach(this.rendering[0].ProductDetails, (item: ResourceStr, index: number) => {
                  Image(item).objectFit(ImageFit.Contain).width('100%')
                })
              } else {
                ForEach(this.currentDeviceParameters, (item, indexMax: number) => {
                  Column() {
                    ForEach(item, (itemMin: string, indexMin: number) => {
                      Row() {
                        if (indexMin == 0) {
                          Text(itemMin).height('100%').layoutWeight(1).textAlign(TextAlign.Start)
                        } else {
                          Text(itemMin.slice(0, itemMin.indexOf('#')))
                            .height('100%')
                            .layoutWeight(1)
                            .textAlign(TextAlign.Start)
                            .fontWeight(500)
                            .fontSize(15)
                          Text(itemMin.slice(itemMin.indexOf('#') + 1, itemMin.length))
                            .height('100%')
                            .layoutWeight(3)
                            .textAlign(TextAlign.Start)
                            .textOverflow({ overflow: TextOverflow.Ellipsis })
                            .maxLines(2)
                            .backgroundColor('#ffffff')
                            .padding({ left: 10, right: 10 })
                            .fontSize(15)
                            .opacity(0.8)
                            .border({
                              width: { bottom: indexMin > 0 && indexMin < item.length - 1 ? 1 : 0 },
                              color: '#f7f7f7'
                            })
                        }
                      }.width('100%').height(50).backgroundColor('#f7f7f7').padding({ left: 15 })
                    })
                  }
                })
              }
            }
          }.width('100%').backgroundColor('#ffffff')
        }.width('100%')
      }
      .width('100%')
      .layoutWeight(13)
      .edgeEffect(EdgeEffect.Fade)
      .scrollBar(BarState.Off)
      .backgroundColor('#ffeae9e9')

      // 最下边功能按键
      Row() {

        Column({ space: 5 }) {
          Image($r('app.media.tab_mall_0')).width(20).height(20)
          Text('商城').fontSize(14)
        }
        .layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .onClick(() => {
          // 跳转至商城页面点击事件
          router.replaceUrl({ url: 'pages/HomeSwiper' }) // 销毁跳转
        })

        Column({ space: 5 }) {
          Image($r('app.media.tab_ShoppingCart_0')).width(20).height(20)
          Text('购物车').fontSize(14)
        }
        .layoutWeight(1)
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .onClick(() => {
          // 跳转至购物车页面点击事件
          let paramsInfo: currentIndex = {
            type: 'swiperIndex',
            currentClassify: 0
          }
          // 路由跳转刷新HomeSwiper其子组件才会跟着刷新数据
          router.replaceUrl({ url: 'pages/HomeSwiper', params: paramsInfo })
        })

        Row() {
          Button('立即租赁')
            .width('100%')
            .height('100%')
            .fontColor('#ffffff')
            .backgroundColor('#2e99ff')
            .type(ButtonType.Normal)
            .onClick(() => {
              // 立即租赁点击事件
              this.RentNow.open()
            })
        }
        .layoutWeight(2)
        .height('100%')
        .justifyContent(FlexAlign.Center)

        Row() {
          Button('加入购物车')
            .type(ButtonType.Normal)
            .fontColor('#ffffff')
            .width('100%')
            .height('100%')
            .backgroundColor('#0d87fc')
            .onClick(() => {
              // 加入购物车打开选择配置弹窗点击事件
              this.chooseConfigure.open()
            })
        }
        .layoutWeight(2)
        .height('100%')
        .justifyContent(FlexAlign.Center)
      }.width('100%').layoutWeight(1).backgroundColor('#ffffff')

    }.width('100%').height('100%')
  }
}