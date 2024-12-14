import router from '@ohos.router'
import LoadingDialog from '../../../utils/TipsDialog';

PersistentStorage.PersistProp('nickname', '');
PersistentStorage.PersistProp('gender', '');
PersistentStorage.PersistProp('location', '');
PersistentStorage.PersistProp('FullAddress', '');

@Entry
@Component
struct PersonalInformation {

  // @State phone: string = '' // 手机号
  // @State nickname: string = '' // 昵称
  // @State gender: string = '' // 性别
  // @State location: string = '' // 所在地区
  // @State FullAddress: string = '' // 详细地区

  @StorageLink('nickname') nickname: string = ''
  @StorageLink('gender') gender: string = ''
  @StorageLink('location') location: string = ''
  @StorageLink('FullAddress') FullAddress: string = ''

  // 页面加载之前执行
  async aboutToAppear() {

  }

  build() {
    Column() {
      Column() {
        Column() {
          // 第一行标题
          Stack() {
            Text('个人信息').fontSize(20)
            Row() {
              Image($r('app.media.img_1')).width(10).rotate({ angle: 180 })
                .onClick(() => {
                  // 返回上一级图片点击事件
                  router.back()
                })
            }.width('100%').justifyContent(FlexAlign.Start)
          }.width('93%').layoutWeight(1).border({ width: { bottom: 1 }, color: '#ffd2cfcf' })

          Row() {
            Text('昵称').height('100%').layoutWeight(1).margin({ left: 15 })
            TextInput({ placeholder: '未设置昵称', text: this.nickname })
              .height('100%')
              .layoutWeight(3)
              .textAlign(TextAlign.End)
              .backgroundColor('#ffffff')
              .onChange((value: string) => {
                this.nickname = value
              })
          }.width('100%').layoutWeight(1).border({ width: { bottom: 1 }, color: '#ffd2cfcf' })

          Row() {
            Text('性别').height('100%').layoutWeight(1).margin({ left: 15 })
            TextInput({ placeholder: '请输入性别', text: this.gender })
              .height('100%')
              .layoutWeight(3)
              .textAlign(TextAlign.End)
              .backgroundColor('#ffffff')
              .onChange((value: string) => {
                this.gender = value
              })
          }.width('100%').layoutWeight(1).border({ width: { bottom: 1 }, color: '#ffd2cfcf' })

          Row() {
            Text('所在地区').height('100%').layoutWeight(1).margin({ left: 15 })
            TextInput({ placeholder: '请输入所在地区', text: this.location })
              .height('100%')
              .layoutWeight(3)
              .textAlign(TextAlign.End)
              .backgroundColor('#ffffff')
              .onChange((value: string) => {
                this.location = value
              })
          }.width('100%').layoutWeight(1).border({ width: { bottom: 1 }, color: '#ffd2cfcf' })

          Row() {
            Text('详细地区').height('100%').layoutWeight(1).margin({ left: 15 })
            TextInput({ placeholder: '请输入详细地址', text: this.FullAddress })
              .height('100%')
              .layoutWeight(3)
              .textAlign(TextAlign.End)
              .backgroundColor('#ffffff')
              .onChange((value: string) => {
                this.FullAddress = value
              })
          }.width('100%').layoutWeight(1)
        }.width('100%').layoutWeight(6).backgroundColor('#ffffff')

        Blank().height(30)

        Button('保存修改').width('92%').type(ButtonType.Normal).layoutWeight(1)
          .onClick(async () => {
            if (this.gender != '' || this.nickname != '' || this.location != '' || this.FullAddress != '') {
              LoadingDialog.showSuccess('保存成功')
            }
          })

        Blank().height(30)
      }.width('100%').layoutWeight(1)

      Column() {
      }.width('100%').layoutWeight(1)
    }.width('100%').height('100%').backgroundColor('#fff1f0f0')
  }
}