import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
import { userDb } from '../../db/UserDb'
import { user } from '../../model/User'
import { CaptchaNotice } from './captchaNotice'
import { AccountInfo } from '../../model/AccountInfo'

@Entry
@Component
struct BackPassword {

  // 默认值方便测试
  @State phone: string = '18966668888' // 手机号
  @State captcha: string = '' // 验证码
  @State verifyCaptcha: string = '' // 验证验证码
  @State password: string = 'ww#123456' // 密码

  // 验证码通知
  @State captchaNotice: CaptchaNotice = new CaptchaNotice()

  // 验证手机号码正则表达式
  private phoneRegular = /^1[3-9]\d{9}$/;
  private passwordRegular = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$/;

  aboutToAppear() {

  }

  build() {
    Column({space: 10}) {
      // 返回上一级与标题
      Stack() {

        // 标题
        Row() {
          Text('重置密码').fontSize(20)
        }

        // 返回上一级
        Row() {
          Image($r('app.media.0_back')).width(20).height(25)
            .margin({ left: 10 })
            .onClick(() => {
              router.back()
            })
        }.width('100%').justifyContent(FlexAlign.Start)

      }.width('100%').padding(10).layoutWeight(1)

      // 图标
      Row({ space: 10 }) {
        Image($r('app.media.icon')).objectFit(ImageFit.Contain).width(50).borderRadius(10)
        Text('办公设备出租').fontSize(20)
      }.width('100%').padding({ left: 25 }).layoutWeight(1)

      // 输入框
      Column({ space: 15 }) {
        TextInput({ placeholder: '请输入手机号', text: this.phone })
          .type(InputType.Number)
          .height(45)
          .borderRadius(10)
          .onChange((value: string) => {
            this.phone = value
          })
          .width('100%')
          .layoutWeight(1)

        Row() {
          TextInput({ placeholder: '请输入验证码', text: this.captcha })
            .type(InputType.Number)
            .height(45)
            .border({ width: { right: 1 }, color: '#ffbfbfbf', radius: { topLeft: 10, bottomLeft: 10 } })
            .onChange((value: string) => {
              this.captcha = value
            })
            .layoutWeight(3)
            .height('100%')

          Text('发送\n验证码')
            .fontSize(12)
            .textAlign(TextAlign.Center)
            .borderRadius({ topRight: 10, bottomRight: 10 })
            .height('100%')
            .layoutWeight(1)
            .backgroundColor('#f4f6f5')
            .onClick(() => {
              // 发送验证码
              promptAction.showToast({message: '验证码发送成功！', bottom: 350})
              // 模拟请求到服务器响应的等待时间
              let timer = 3000
              const timeId = setInterval(async () => {
                if (timer === 0) {
                  // 清空定时器
                  clearInterval(timeId)
                  // 发送通知事件
                  this.captchaNotice.notifyTheVerificationCode()
                  // 获取到随机生成的验证码用于验证用户输入
                  this.verifyCaptcha = String(AppStorage.Get('captcha'))
                  console.log('验证码：' + this.verifyCaptcha)
                } else {
                  timer -= 1000
                }
              }, 1000)

            })
        }.width('100%').layoutWeight(1).border({ width: 1, color: '#f4f6f5', radius: 10 })

        TextInput({ placeholder: '输入修改后的密码', text: this.password })
          .type(InputType.Password)
          .height(45)
          .borderRadius(10)
          .onChange((value: string) => {
            this.password = value
          })
          .width('100%')
          .layoutWeight(1)

      }.width('85%').justifyContent(FlexAlign.Center).layoutWeight(3)

      Row() {
        Button('确认修改')
          .width('85%')
          .type(ButtonType.Normal)
          .borderRadius(10)
          .backgroundColor('#4a9df6')
          .onClick((event: ClickEvent) => {
            // 修改方法
            this.modify()
          })
      }.width('100%').layoutWeight(2).justifyContent(FlexAlign.Center)

      // 占位组件
      Blank().width('100%').layoutWeight(6)

    }.width('100%').layoutWeight(1)
  }

  // 修改密码校验
  async modify() {
    // 校验
    const flag1 = this.checkRegister()
    if (!flag1) {
      return
    }

    // 修改密码
    const flag2 = await this.update()
    if (!flag2) {
      return
    }
  }

  checkRegister() {
    if (!this.phone) {
      promptAction.showToast({message: '请填写手机号!', bottom: 350})
      return false
    } else if (!this.phoneRegular.test(this.phone)) {
      promptAction.showToast({message: '请输入合法的手机号！', bottom: 350})
      return false
    } else if (!this.captcha) {
      promptAction.showToast({message: '请输入验证码！', bottom: 350})
      return false
    } else if (!(this.captcha === this.verifyCaptcha)) {
      promptAction.showToast({message: '验证码错误！', bottom: 350})
      // 验证码清空
      this.captcha = ''
      return false
    } else if (!this.password) {
      promptAction.showToast({message: '请填写密码！', bottom: 350})
      return false
    } else if (this.password.length < 8) {
      promptAction.showToast({message: '密码长度少于8位！', bottom: 350})
      return false
    } else if (!this.passwordRegular.test(this.password)) {
      promptAction.showToast({message: '密码安全等级太低！', bottom: 350})
      return false
    }
    return true
  }

  async update() {
    // 向数据库查询号码是否注册
    const queryResult = await userDb.queryOneByPhone(this.phone)
    console.log('修改前查询(BackPassword)：' + JSON.stringify(queryResult))
    if (!queryResult) {
      // bottom: 吐司弹窗离屏幕底部的距离
      promptAction.showToast({message: '该号码还未注册！', bottom: 370})
    } else {
      // 将信息储存到对象中方便后续操作
      user.phone = this.phone
      user.password = this.password
      user.whetherLogin = 0

      // 账号更新时间
      const currentDate = new Date()
      const month = currentDate.getMonth()
      const year = currentDate.getFullYear()
      const day = currentDate.getDate()
      user.updateTime = `${year}-${month+1}-${day}`

      // 判断修改是否成功
      if (await userDb.updateUser(user, this.phone)) {
        promptAction.showToast({message: '密码修改成功即将返回登录页', bottom: 370})
        let timer = 500
        const timeId = setInterval(()=>{
          if (timer === 0) {
            // 清空定时器
            clearInterval(timeId)
            let paramsInfo: AccountInfo = {
              phone: this.phone,
              password: this.password
            }
            router.replaceUrl({ url: 'pages/login/Login' , params: paramsInfo })
          } else {
            timer -= 500
          }
        }, 500)
      }
    }
    console.log('修改后查询(BackPassword)：' + JSON.stringify(await userDb.queryOneByPhone(this.phone)))
    return true
  }
}
