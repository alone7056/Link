import { equipmentSynopsis } from '../../model/EquipmentSynopsis'
import { OfficePreferredArr, OfficePortableArr, OfficeTechnologyArr, OfficeGraphicsArr} from '../../common/PageRenderingValues'
import { DeviceInformation } from '../../model/RoutingData'
import router from '@ohos.router'

@Component
export struct MallPageClassify {

  private ClassifyTabArr: string[] = ['办公首选', '便携办公', '技术开发', '图形处理']
  // 当前选中的索引
  @State currentIndex: number = 0
  // 轮播当前索引
  @State swiperIndex: number = 0
  // 渲染数组
  @State rendering: equipmentSynopsis[] = OfficePreferredArr

  build() {
    Column(){
      Row({space: 5}){
        ForEach(this.ClassifyTabArr, (item, index: number)=>{
          Text(item).fontSize(15).height('100%').layoutWeight(1).textAlign(TextAlign.Center)
            .fontColor(index == this.currentIndex ? '#ffffff' : '#ff696868')
            .borderRadius(99)
            .backgroundColor(index == this.currentIndex ? '#4a9df6' : '#ffffff')
            .onClick(()=>{
              // 更新下标
              this.currentIndex = index
              // 更新渲染的数据
              if (index == 0) {
                this.rendering = OfficePreferredArr
              } else if (index == 1){
                this.rendering = OfficePortableArr
              } else if (index == 2){
                this.rendering = OfficeTechnologyArr
              } else {
                this.rendering = OfficeGraphicsArr
              }
            })
        })
      }.width('94%').height(35)

      Flex({ wrap: FlexWrap.WrapReverse }) {
        ForEach(this.rendering, (item: equipmentSynopsis, index: number)=>{
            Column(){
              Image(typeof item.picturesOfTheDevice == 'string' ? '../' + item.picturesOfTheDevice : item.picturesOfTheDevice).objectFit(ImageFit.Contain).width(120)
              Text(item.theNameOfTheDevice).width('100%').fontSize(15).fontWeight(600).copyOption(CopyOptions.InApp).maxLines(1).textOverflow({ overflow: TextOverflow.Ellipsis })
              Text('\n'+item.introductionToParameters).width('100%').fontSize(12).copyOption(CopyOptions.InApp).maxLines(2).textOverflow({ overflow: TextOverflow.Ellipsis })
              Text('\n\n￥' + item.monthlyPrice + '/月').fontColor('#fff85454').width('100%').fontSize(18).copyOption(CopyOptions.InApp)
            }.width('50%').height(200).backgroundColor('#ffffff').padding(10)
          .onClick(()=>{
            // 跳转至详情页面
            let paramsInfo: DeviceInformation = {
              theNameOfTheDevice: item.theNameOfTheDevice,
              propagandaHeadline: item.propagandaHeadline,
              introductionToParameters: item.introductionToParameters,
              monthlyPrice: item.monthlyPrice,
              equipmentType: item.equipmentType
            }
            // 测试输出
            console.log('(Classify)theNameOfTheDevice图片地址：'+item.picturesOfTheDevice)
            router.pushUrl({ url: 'pages/classify/ProductDetailsPage', params: paramsInfo })
          })
        })
      }
      .width('100%')
      .padding(10)
    }
  }
}
