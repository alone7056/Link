import { OfficeChoose } from '../../model/OfficeChoose'
import { OfficePreferredArr, OfficePortableArr, OfficeTechnologyArr, OfficeGraphicsArr} from '../../common/PageRenderingValues'

@Component
export struct MallPageClassify {

  private ClassifyTabArr: string[] = ['办公首选', '便携办公', '技术开发', '图形处理']
  // 当前选中的索引
  @State currentIndex: number = 0
  // 轮播当前索引
  @State swiperIndex: number = 0
  // 渲染数组
  @State rendering: any = OfficePreferredArr

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
        ForEach(this.rendering, (item: OfficeChoose, index: number)=>{
            Column(){
              Image(item.picturesOfTheDevice).objectFit(ImageFit.Contain).width(120)
              Text(){
                Span(item.theNameOfTheDevice).width('100%').fontSize(15).fontWeight(600)
                Span('\n'+item.introductionToParameters).width('100%').fontSize(12)
                Span('\n\n￥' + item.monthlyPrice + '/月').fontColor('#fff85454').width('100%').fontSize(18)
              }
            }.width('50%').height(200).backgroundColor('#ffffff')
        })
      }
      .width('100%')
      .padding(10)
    }
  }
}
