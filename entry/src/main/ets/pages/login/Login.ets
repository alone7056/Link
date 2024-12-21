
import router from '@ohos.router'
import common from '@ohos.app.ability.common';
import { AccountInfo } from '../../model/AccountInfo'
import LoadingDialog from '../../utils/TipsDialog';
import { userDb } from '../../db/UserDb';
import { user } from '../../model/User';

/*
 * PersistentStorage：持久化存储UI状态
 * 限制条件：
 * PersistentStorage允许的类型和值有：
 * number, string, boolean, enum 等简单类型。
 * */
// PersistentStorage.PersistProp('loginUserPhone', '');
// PersistentStorage.PersistProp('loginUserPassword', '');

@Entry
@Component
struct Login {

  // 电话号码
  @State phone: string = ''
  // @StorageLink('loginUserPhone') phone: string = ''
  // 密码
  @State password: string = ''
  // @StorageLink('loginUserPassword') password: string = ''
  // 是否同意协议
  @State isCheckbox: boolean = false

  // 验证手机号码及密码正则表达式
  private phoneRegular = /^1[3-9]\d{9}$/;

  // 获取上下文
  private context = getContext(this) as common.UIAbilityContext

  // 自定义弹窗
  morLoginDialog = new CustomDialogController({
    builder:MoreLogin(),//自定义弹窗内容
    customStyle:true,//弹窗容器样式是否自定义
    alignment:DialogAlignment.Bottom
  })

  aboutToAppear(){

    // 获取注册和重置密码页面传递过来的账号信息
    try {
      const params: AccountInfo = router.getParams() as AccountInfo;
      this.phone = params.phone
      this.password = params.password
    } catch (err) {
      console.log('路由传参报错')
    }

  }

  build() {
    Column({ space: 15 }) {

      // 退出图标
      Row() {

        Image($r('app.media.close')).width(30)
          .onClick(()=>{
            // 结束程序
            this.context.terminateSelf()
          })

      }.width('100%').height('7%').padding(10).justifyContent(FlexAlign.End)

      // 图标
      Row({ space: 10 }) {
        Image($r('app.media.icon')).objectFit(ImageFit.Contain).width(50).borderRadius(10)
        Text('办公设备出租').fontSize(20)
      }.width('100%').height('8%').padding({ left: 20 })

      // 输入框
      Column({ space: 15 }) {
        Text('使用手机号密码登录').width('100%').fontSize(13).fontColor('#ff777676')
        TextInput({ placeholder: '请输入手机号', text: this.phone != '' ? this.phone : ''}).height(45).borderRadius(10)
          .onChange((v) => {
            this.phone = v
          })
        TextInput({ placeholder: '请输入密码', text: this.password != '' ? this.password : ''}).type(InputType.Password).height(45).borderRadius(10)
          .onChange((v) => {
            this.password = v
          })
      }.width('90%').height('20%').justifyContent(FlexAlign.Center)

      // 同意协议登录按钮
      Column({ space: 15 }) {
        // 已阅读并同意
        Row() {
          // 选择是否阅读并同意
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
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
        }.width('90%').margin({ top: 20 })

        // 登录按钮
        Button('登录')
          .type(ButtonType.Normal)
          .width('90%')
          .height(40)
          .borderRadius(10)
          .backgroundColor('#4a9df6')
          .fontColor('#000000')
          .onClick(() => {
            // 登录验证
            this.loginVerification()
          })

        // 找回密码和注册账号事件
        Row() {
          Text('找回密码').fontColor('#ff706d6d').fontSize(14)
            .onClick(() => {
              router.pushUrl({url: 'pages/login/BackPassword'})
            })

          Text('|').fontColor('#ff706d6d').fontSize(14)

          Text('注册账号').fontColor('#ff706d6d').fontSize(14)
            .onClick(() => {
              router.pushUrl({ url: 'pages/login/Register' })
            })
        }.width('45%').justifyContent(FlexAlign.SpaceBetween).margin({ top: 10 })
      }.width('100%')

      // 其他登录方式
      Column({ space: 20 }) {
        Row() {
          // 横线
          Divider().width(110)

          Text(' 其他方式登录 ').fontColor('#ff706d6d').fontSize(13)
            .onClick(() => {
              this.morLoginDialog.open()//显示自定义弹窗
            })

          Divider().width(110)
        }

        Button({ type: ButtonType.Normal }) {
          Image($r('app.media.4_wx')).width(30)
        }
        .width('90%')
        .height(45)
        .backgroundColor('#ffffff')
        .border({ width: 1, color: '#ff706d6d' })
        .borderRadius(10)
        .onClick(() => {

        })
      }.margin({ top: 70 })

    }.width('100%').height('100%')
  }

  // 登录校验
  async loginVerification(){
    // 校验
    if (!this.checkLogin()) {
      return
    }

    // 查询用户
    if (!this.query()) {
      return
    }
  }

  // 校验
  checkLogin(){
    if(!this.phone){
      LoadingDialog.showFailure('请填写手机号')
      return false
    } else if (!this.phoneRegular.test(this.phone)){
      LoadingDialog.showFailure('请输入合法的手机号！')
      return false
    } else if (!this.password) {
      LoadingDialog.showFailure('请填密码')
      return false
    } else if (!this.isCheckbox) {
      LoadingDialog.showFailure('请阅读并同意协议')
      return false
    }
    return true
  }

  // 查询
  async query(){
    const queryResult = await userDb.queryOneByPhoneAndPwd(this.phone, this.password)
    if (!queryResult) {
      LoadingDialog.showFailure('用户或者密码错误')
      return false
    }

    // 将账号状态改为登录
    user.whetherLogin = 1
    await userDb.updateUser(user, this.phone)
    console.log('修改登陆状态后查询(Login)：' + JSON.stringify(await userDb.queryOneByPhone(this.phone)))
    LoadingDialog.showSuccess('登录成功')

    let timer = 1000
    const timeId = setInterval(()=>{
      if (timer === 0) {
        // 清空定时器
        clearInterval(timeId)

        // 保存当前登录用户的数据
        AppStorage.SetOrCreate('loginUserId', queryResult.id)
        AppStorage.SetOrCreate('loginUserPhone', queryResult.phone)
        AppStorage.SetOrCreate('loginUserPassword', queryResult.Password)
        // 日志
        console.log('查询id(Login)：' + queryResult.id)
        console.log('查询phone(Login)：' + queryResult.phone)
        console.log('查询password(Login)：' + queryResult.password)

        router.replaceUrl({url: 'pages/HomeSwiper'})
      } else {
        timer -= 1000
      }
    }, 1000)

  }

}

// 更多登录弹窗
@CustomDialog
struct MoreLogin {
  controller: CustomDialogController
  label: string[] = ['注册', '手机登录', '直接试用', '取消']

  build() {
    Column() {
      ForEach(this.label, (label: string) => {
        Button(label, { type: ButtonType.Normal }).backgroundColor('#FFFF').fontColor('#000000')
          .fontSize(16).width('100%').height(50).border({ width: { bottom: 1 }, color: '#EDEDED' })
          .onClick(() => {

            if (label == '取消') {
              this.controller.close()
            }

            if (label == '手机登录') {

            }

            if (label == '直接试用') {
              router.replaceUrl({url: 'pages/HomeSwiper'})
            }

            if (label == '注册') {
              router.pushUrl({url:'pages/login/Register'})
            }

          })
      })
    }
  }
}