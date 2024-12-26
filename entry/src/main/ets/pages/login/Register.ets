
import router from '@ohos.router'
import { userDb } from '../../db/UserDb'
import { user } from '../../model/User'
import LoadingDialog from '../../utils/TipsDialog'
import { AccountInfo } from '../../model/RoutingData'

@Entry
@Component
struct Register {

  // 默认值方便测试
  @State phone: string = '18966668888'
  @State password: string = 'ww#123456'
  @State rePassword: string = 'ww#123456' // 确认密码
  @State isCheckbox: boolean = false   // 是否同意协议

  // 验证手机号码正则表达式
  private phoneRegular = /^1[3-9]\d{9}$/;
  private passwordRegular = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$/;

  build() {
    Column() {
      // 返回上一级与标题
      Stack() {

        // 标题
        Row(){
          Text('注册').fontSize(20)
        }

        // 返回上一级
        Row(){
          Image($r('app.media.0_back')).width(20).height(25)
            .onClick(()=>{
              router.back()
            })
        }.width('100%').justifyContent(FlexAlign.Start)

      }.width('100%').height('7%').padding(10)

      // 图标
      Row({ space: 10 }) {
        Image($r('app.media.icon')).objectFit(ImageFit.Contain).width(50).borderRadius(10)
        Text('办公设备出租').fontSize(20)
      }.width('100%').height('8%').padding({ left: 20 })

      // 输入框
      Column({ space: 15 }) {
        Text('使用手机号密码注册').width('100%').fontSize(13).fontColor('#ff777676')
        TextInput({ placeholder: '请输入手机号', text: this.phone}).type(InputType.Number).height(45).borderRadius(10)
          .onChange((value: string) => {
            this.phone = value
          })

        TextInput({ placeholder: '请输入密码', text: this.password}).type(InputType.Password).height(45).borderRadius(10)
          .onChange((value: string) => {
            this.password = value
          })

        TextInput({ placeholder: '再次输入密码', text: this.rePassword}).type(InputType.Password).height(45).borderRadius(10)
          .onChange((value: string) => {
            this.rePassword = value
          })
      }.width('90%').height('30%').justifyContent(FlexAlign.Center)

      // 同意协议登录按钮
      Column({ space: 15 }) {
        // 已阅读并同意
        Row({space:5}) {
          // 选择是否阅读并同意
          Checkbox({ name: 'checkbox', group: 'checkboxGroup' })
            .width(15)
            .select(this.isCheckbox)
            .selectedColor('#4a9df6')
            .onChange((value: boolean) => {
              this.isCheckbox = value
            })

          // 文本
          Text() {

            Span('已阅读并同意《 ').fontSize(12).fontColor('#ff706d6d')
            Span('用户协议').fontSize(12).fontColor('#ff706d6d')
              .decoration({ type: TextDecorationType.Underline, color: Color.Black })
              .onClick(() => {
                // 点击用户协议跳转页面
                router.pushUrl({ url: 'pages/agreement/UserAgreement' })
              })

            Span(' 》和《 ').fontSize(12).fontColor('#ff706d6d')
            Span('隐私协议').fontSize(12).fontColor('#ff706d6d')
              .decoration({ type: TextDecorationType.Underline, color: Color.Black })
              .onClick(() => {
                // 点击隐私协议跳转页面
                router.pushUrl({ url: 'pages/agreement/PrivacyAgreement' })
              })

            Span(' 》').fontSize(12).fontColor('#ff706d6d')

          }
        }.width('90%')

        // 注册按钮
        Button('注册')
          .type(ButtonType.Normal)
          .width('90%')
          .height(40)
          .borderRadius(10)
          .backgroundColor('#4a9df6')
          .fontColor('#000000')
          .onClick(() => {
            // 注册方法
            this.register()
          })

      }.width('100%')
    }
  }

  // 注册校验
  async register(){
    // 校验
    const flag1 = this.checkRegister()
    if (!flag1) {
      return
    }

    // 注册
    const flag2 = await this.add()
    if (!flag2) {
      return
    }
  }

  // 校验
  checkRegister(){

    if(!this.phone){
      LoadingDialog.showFailure('请填写手机号')
      return false
    } else if (!this.phoneRegular.test(this.phone)){
      LoadingDialog.showFailure('请输入合法的手机号！')
      return false
    } else if (!this.password) {
      LoadingDialog.showFailure('请填密码')
      return false
    } else if (this.password.length < 8) {
      LoadingDialog.showFailure('密码长度低于8位！')
      return false
    }else if (!this.passwordRegular.test(this.password)){
      LoadingDialog.showFailure('密码安全等级太低！')
      return false
    } else if (!this.rePassword) {
      LoadingDialog.showFailure('请再次输入密码确认！')
      return false
    } else if (this.password != this.rePassword) {
      LoadingDialog.showFailure('两次输入的密码不一致！')
      return false
    } else if (!this.isCheckbox) {
      LoadingDialog.showFailure('请阅读并同意协议！')
      return false
    }
    return true

  }

  // 注册
  async add(){

    // 2.查询用户
    const queryResult = await userDb.queryOneByPhone(this.phone)
    if (queryResult) {
      LoadingDialog.showFailure('用户已存在')
      return false
    }

    // 3.添加注册用户
    user.phone = this.phone
    user.password = this.password
    user.whetherLogin = 0 // 登录状态0表示未登录非零反之

    // 用户创建账号日期
    const currentDate = new Date()
    const month = currentDate.getMonth()
    const year = currentDate.getFullYear()
    const day = currentDate.getDate()
    user.createTime = `${year}-${month+1}-${day}`

    // 将注册的信息添加到数据库
    const result = await userDb.add(user)
    if (result) {
      LoadingDialog.showSuccess('注册成功')
      let timer = 500
      const timeId = setInterval(()=>{
        if (timer === 0) {
          // 清空定时器
          clearInterval(timeId)
          let paramsInfo: AccountInfo = {
            phone: this.phone,
            password: this.password
          }
          router.pushUrl({ url: 'pages/login/Login' , params: paramsInfo })
        } else {
          timer -= 500
        }
      }, 500)
    } else {
      LoadingDialog.showFailure('注册失败')
    }
  }

}
