import router from '@ohos.router'
@Entry
@Component
struct UserAgreement {

  private UserAgreementText:string = "欢迎您使用Link（详见定义条款）为您提供的服务。\n\n\n\n\n\n为了保障您的权益，请在使用Link服务（详见定义条款）前，详细阅读并理解本协议（详见定义条款）的所有内容，特别是免除或者限制责任的条款、争议解决和法律适用条款以及开通或使用某项服务的单独协议，及选择接受或不接受的部分。一旦您采取以合理的理解表明您希望与Link平台运营者（详见定义条款）签订本协议的行为（例如，点击按钮上书写“同意《Link使用协议》”或类似文字，页面上同时列明了本协议的内容或者可以有效展示本协议内容的链接；或您下载、安装、获取/激活、登录含服务内容的Link并使用服务），即视为您已充分阅读、理解并接受本协议的全部内容，并与Link达成协议。如您对本协议有任何疑问的，应向Link客服咨询。如果您不同意本协议的约定，可能会影响您使用Link为您提供的部分服务，建议您立即停止使用Link服务。\n\n\n\n\n\n您与Link达成协议后，您承诺接受并遵守本协议的约定，并不得以未阅读本协议的内容或者未获得平台对您问询的解答等理由，主张本协议无效，或要求撤销本协议。在本协议履行过程中，Link可以依其单独判断暂时停止提供、限制或改变平台服务。一旦本协议的内容发生变动，Link将通过平台公布最新的服务协议，不再向您作个别通知。如果您不同意Link对本服务协议所做的修改，您有权停止使用Link服务。如果您继续使用Link服务，则视为您接受Link对本协议所做的修改，并应遵照修改后的协议执行。您知晓，有关服务产生的相关争议受您和其他主体签订服务协议约束并依据相应服务协议来处理。\n\n\n\n\n\n本协议内容包括协议正文、法律声明、Link规则及所有Link已经发布或将来可能发布的各类规则、公告或通知（以下简称“本协议”）。所有规则为本协议不可分割的组成部分，与协议正文具有同等 法律效力。"

  build() {
    Column() {
      Stack(){
        Row(){
          Image($r('app.media.0_back')).width(30)
            .onClick(()=>{
              router.back()
            })
        }.width('100%').padding(10).zIndex(99)
        Row(){
          Text('Link用户协议').width('100%')
            .textAlign(TextAlign.Center).fontSize(20)
        }.width('100%').padding(10)
      }
      Scroll(){
        Text(){
          Span('用户协议\n\n\n\n').fontSize(30)
          Span(this.UserAgreementText)
        }.padding(10).copyOption(CopyOptions.InApp)// 可复制文本
      }.scrollBar(BarState.Off)
    }.width('100%').height('100%')
  }
}