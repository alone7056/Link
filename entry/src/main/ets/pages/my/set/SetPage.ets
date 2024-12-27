import router from '@ohos.router'
import { userDb } from '../../../db/UserDb'
import { user } from '../../../model/User'
import LoadingDialog from '../../../utils/TipsDialog'
import { exitLogin } from '../../popUps/exitlogin'
@Entry
@Component
struct SetPage {

  // 选项数组
  private SetOptionsArr: string[] = ['个人信息', '关于作者', '隐私协议', '个人信息手机清单', '第三方信息共享清单']

  // 当前用户手机号码
  @State phone: string = ''
  // 页面加载前执行
  aboutToAppear(){
    this.phone = AppStorage.Get('loginUserPhone')
  }

  // 退出登录弹窗
  exitLogin: CustomDialogController = new CustomDialogController({
    builder: exitLogin({
      save: () => this.onAccept(),
      cancel: () => this.onCancel()
    }),
    alignment: DialogAlignment.Center, // 弹窗对齐方式
    offset: { dx: 0, dy: 0 }, // 设置弹窗的偏移量，这里 dy 为 50 表示弹窗底部距离屏幕底部有 50px 的间隔
    customStyle: true, // 是否自定义样式
  })

  // 确认退出登录方法
  async onAccept() {
    // 退出当前用户,将账号状态改为退出
    user.whetherLogin = 0
    await userDb.updateUser(user, this.phone)
    console.log('修改登陆状态后查询(SetPage)：' + JSON.stringify(await userDb.queryOneByPhone(this.phone)))
    router.replaceUrl({url: 'pages/login/Login'})
  }

  // 取消方法
  onCancel() {
    this.exitLogin.close()
  }

  build() {
    Column() {
      Column(){
        // 第一行标题
        Stack() {
          Text('设置').fontSize(20)
          Row() {
            Image($r('app.media.img_1')).width(10).rotate({ angle: 180 })
              .onClick(() => {
                // 返回上一级图片点击事件
                router.back()
              })
          }.width('100%').justifyContent(FlexAlign.Start)
        }.width('94%').layoutWeight(1).border({ width: { bottom: 1 }, color: '#ffd2cfcf' })

        ForEach(this.SetOptionsArr, (item: string, index: number) => {
          Row() {
            Text(item).fontSize(18)
            Blank()
            Image($r('app.media.img_1')).width(10)
          }
          .width('94%')
          .layoutWeight(1)
          .border(index < this.SetOptionsArr.length-1 ? { width: { bottom: 1 }, color: '#ffd2cfcf' } : { width: { bottom: 0 }, color: '#ffd2cfcf' })
          .onClick(()=>{
            if (index == 0) {
              router.pushUrl({url: 'pages/my/set/PersonalInformation'})
            }
            if (index == 2) {
              router.pushUrl({url: 'pages/my/set/PrivacyManagement'})
            }
          })
        })
      }.width('100%').layoutWeight(8).backgroundColor('#ffffff')

      Blank().layoutWeight(1)

      Button('退出登录').type(ButtonType.Normal).width('94%').layoutWeight(1)
        .onClick(()=>{
          // 点击展开弹窗
          this.exitLogin.open()
        })

      Blank().layoutWeight(6)

    }.width('100%').height('100%').backgroundColor('#ffe2e0e0')
  }
}