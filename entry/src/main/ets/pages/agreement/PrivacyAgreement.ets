import router from '@ohos.router'
@Entry
@Component
struct PrivacyAgreement {

  private PrivacyAgreementText:string = "Link重视用户的隐私。您在使用我们的服务时，我们可能会收集和使用您的相关信息。我们希望通过本《隐私政策》向您说明，在使用我们的服务时，我们如何收集、使用、储存和分享这些信息，以及我们为您提供的访问、更新、控制和保护这些信息的方式。本《隐私政策》与您所使用的Link服务息息相关，我们也希望您能够仔细阅读，并在需要时，按照本《隐私政策》的指引，作出您认为适当的选择。本《隐私政策》中涉及的相关技术词汇，我们尽量以简明扼要的表述向您解释，并提供了进一步说明的链接，以便您的理解。\n\n\n\n\n\n\n未满18周岁的用户，请在法定监护人的陪同下阅读本协议，并特别注意未成年人使用条款。特别地，如果您是未满14周岁的儿童，请您和您的监护人仔细阅读《Link儿童隐私协议》，经监护人同意后，您可以使用Link服务。\n\n\n\n\n\n我们对本隐私权政策中与您的权益存在重大关系的条款用粗体字进行标注。如果您不同意本隐私权政策的部分或全部内容，您应立即停止使用Link软件服务并通过软件客服与我们联系。您通过勾选、点击确认、同意授权等方式确认本隐私权政策或直接使用及继续使用我们的服务，都表示您同意我们按照本《隐私政策》收集、使用、储存和分享您的信息。\n\n\n\n\n\n如您对本《隐私政策》或与本《隐私政策》相关的事宜有任何问题，请通过www.shayujizhang.com与我们联系\n\n\n\n\n\n我们可能收集的信息\n\n\n\n\n\n我们提供服务时，可能会收集、储存和使用下列与您有关的信息。如果您不提供相关信息，可能无法注册成为我们的用户、享受我们提供的某些服务，或者即便我们可以继续向您提供一些服务，也无法达到该服务拟达到的效果。\n\n\n\n\n\n我们对本隐私权政策中与您的权益存在重大关系的条款用粗体字进行标注。如果您不同意本隐私权政策的部分或全部内容，您应立即停止使用Link软件服务并通过软件客服与我们联系。您通过勾选、点击确认、同意授权等方式确认本隐私权政策或直接使用及继续使用我们的服务，都表示您同意我们按照本《隐私政策》收集、使用、储存和分享您的信息。"

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
          Text('Link隐私协议').width('100%')
            .textAlign(TextAlign.Center).fontSize(20)
        }.width('100%').padding(10)
      }
      Scroll(){
        Text(){
          Span('Link软件隐私协议\n\n\n\n').fontSize(25)
          Span('更新日期：2024-11-11\t\t\t\t生效日期：2024-11-11\n\n\n\n\n').fontSize(13)
          Span('引言\n\n\n\n')
          Span(this.PrivacyAgreementText)
        }.padding(10).copyOption(CopyOptions.InApp) // 可复制文本
      }.scrollBar(BarState.Off)
    }.width('100%').height('100%')
  }
}