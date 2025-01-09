import router from '@ohos.router';
import { DeviceInformation } from '../../model/RoutingData'
import { LaptopDetails } from '../../common/PageRenderingValues'
import { Laptop } from '../../model/Laptop'
import { chooseConfigure } from '../popUps/chooseConfigure';

@Entry
@Component
struct ProductDetailsPage {
  @Provide('theNameOfTheDevice') theNameOfTheDevice: string = ''; // 设备名称
  @State propagandaHeadline: string = ''; // 设备标题
  @Provide('introductionToParameters') introductionToParameters: string = '' // 参数简介
  @Provide('monthlyPrice') monthlyPrice: number = 0 // 月租价格
  @Provide('equipmentType') equipmentType: string = ''; // 设备类型
  @State currentIndex: number = 0; // 当前索引

  @Provide('lease') lease: number[] = [12, 24, 12] // 租期
  @Provide('leaseIndex') leaseIndex: number = 0
  @State productDetailsArr: string[] = ['商品详情', '商品参数']

  @State LaptopParameterInformation: string[][] = [
    ['基本信息', '品牌', '型号', '操作系统'],
    ['外观尺寸', '尺寸', '重量', '颜色'],
    ['处理器', 'CPU系列', 'CPU型号', '主频/睿频', '核心/线程'],
    ['内存', '内存类型', '内存容量'],
    ['硬盘', '硬盘类型', '硬盘容量'],
    ['显卡', '显卡类型', '显存容量'],
    ['显示器', '屏幕尺寸', '分辨率'],
    ['多媒体设备', '720摄像头'],
    ['网络通信', '内置蓝牙', '无线网卡', '有线网卡'],
    ['I/O接口', '音频接口', '视频接口', '其他接口'],
    ['电池描述', '电池'],
    ['配置清单', '电源适配器']
  ]

  // 当前渲染数据
  @State rendering: Laptop[] = undefined;


  aboutToAppear() {

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
      console.log('路由传参报错')
    }

    if (this.equipmentType == 'Laptop') {
      this.rendering = LaptopDetails.filter(Laptop => Laptop.TheNameOfTheNotebook.includes(this.theNameOfTheDevice));
      console.log('(ProductDetailsPage)this.rendering.length:' + this.rendering.length)
    }

    for (let indexMax = 0; indexMax < this.LaptopParameterInformation.length; indexMax++) {
      for (let indexMin = 0; indexMin < this.LaptopParameterInformation[indexMax].length; indexMin++) {
        if (indexMin > 0) {
          this.LaptopParameterInformation[indexMax][indexMin] = this.LaptopParameterInformation[indexMax][indexMin] + ':' + this.rendering[0].ProductParameters[indexMax][indexMin - 1]
          console.log(`(ProductDetailsPage)this.LaptopParameterInformation[${indexMax}][${indexMin}]=${this.LaptopParameterInformation[indexMax][indexMin]}`)
        }
      }
    }

  }

  // 退出登录弹窗
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
              .autoPlay(this.rendering[0].particularsSwiper.length > 1 ? true : false) // 自动轮播
              .interval(3000) // 间隔时间
            }.width('100%').height(300)

            Divider().width('100%')

            Row() {
              Text() {
                Span('￥').fontSize(14).fontColor('#f9543d')
                Span(this.monthlyPrice + '.').fontSize(20).fontColor('#f9543d').fontWeight(500)
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

                  Text(this.introductionToParameters).fontSize(15).opacity(0.7)
                    .width('90%')
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    .maxLines(1)
                  Blank()
                  Image($r('app.media.img_1')).width(10)
                }.width('100%').layoutWeight(1).padding({ right: 10 })
                .onClick(()=>{
                  // 打开配置选择弹窗
                  this.chooseConfigure.open()
                })

                Divider().width('85%').margin({ right: 50 })

                Column() {
                  Row() {
                    Text() {
                      Span('首月租金：')
                      Span('￥' + this.monthlyPrice).fontColor('#f9543d')
                      Span(' ，租期')
                      Span(this.lease[2] + '').fontColor('#f9543d')
                      Span('个月 ')
                      Span('固定租期').fontColor('#f9543d')
                    }.width('95%').fontSize(15)
                  }.width('100%').layoutWeight(1)

                  Row() {
                    Text('到期归还Link，租期未满12个月需自行垫付运费等相关费用').width('95%').fontSize(15)
                  }.width('100%').layoutWeight(1).opacity(0.7)
                }.width('100%').layoutWeight(2)
              }.height('100%').layoutWeight(4)
            }.width('100%').height(120).backgroundColor('#ffffff').padding(8)

            Divider().width('100%')

            Row() {

            }.width('100%').height(50).backgroundColor('#ffffff')
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
                ForEach(this.LaptopParameterInformation, (item, indexMax: number) => {
                  Column() {
                    ForEach(item, (itemMin: string, indexMin: number) => {
                      Row() {
                        if (indexMin == 0) {
                          Text(itemMin).height('100%').layoutWeight(1).textAlign(TextAlign.Start)
                        } else {
                          Text(itemMin.slice(0, itemMin.indexOf(':')))
                            .height('100%')
                            .layoutWeight(1)
                            .textAlign(TextAlign.Start)
                          Text(itemMin.slice(itemMin.indexOf(':') + 1, itemMin.length))
                            .height('100%')
                            .layoutWeight(3)
                            .textAlign(TextAlign.Start)
                            .backgroundColor('#ffffff')
                            .padding({ left: 10 })
                            .border({width: {bottom : indexMin > 0 && indexMin < item.length - 1 ? 1 : 0}, color: '#f7f7f7'})
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
      .layoutWeight(11)
      .edgeEffect(EdgeEffect.None)
      .scrollBar(BarState.Off)
      .backgroundColor('#ffeae9e9')

      Row() {

      }.width('100%').layoutWeight(1).backgroundColor('#ff0073ff')

    }.width('100%').height('100%')
  }
}