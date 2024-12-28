import router from '@ohos.router'
import { userAddressDb } from '../db/UserAddressDb'
import { userDb } from '../db/UserDb'
import { PreferencesUtil } from '../utils/PreferencesUtil'


@Entry
@Component
struct Index {

  // 倒计时时长
  @State timer: number = 1000

  // 创建一个首选项对象
  private preferenceUtil: PreferencesUtil = new PreferencesUtil()

  // 页面加载时执行
  async aboutToAppear() {
    // 1.建库建表
    await userDb.createUserTable()
    // await userAddressDb.createUserAddressTable()

    /* 进入登录页面、首页
     * 首先判断是否第一次登录
     * 不是第一次测判断是否已经登录，没有则进入登录页面
     * 不是第一次并且已经登录，则进入首页
     */

    let url = 'pages/HomeSwiper'
    await this.preferenceUtil.init()
    const first_login = await this.preferenceUtil.get('firstLogin')

    // 第一次登录跳转至登录注册页面
    if (first_login != 1) {
      await this.preferenceUtil.put('firstLogin', 1)
      url = 'pages/login/Login'
    }

    const timeId = setInterval(async () => {
      if (this.timer === 0) {
        // 清空定时器
        clearInterval(timeId)
        const queryResult = await userDb.queryAllUser()
        const dataStr = JSON.stringify(queryResult)
        let whetherLogin: boolean = false
        // 判断用户是否登录
        // if (dataStr.includes('"whetherLogin":"1"')){
        //   whetherLogin = true
        // }

        // 找出登录状态的账号 确认用户是否登录
        for (let index = 0; index < queryResult.length; index++) {
          if (Number(queryResult[index].whetherLogin) == 1) {
            whetherLogin = true
            AppStorage.SetOrCreate('loginUserPhone', queryResult[index].phone)
          }
        }
        console.log('查询所有记录（Index）：' + JSON.stringify(queryResult))
        if (queryResult.length > 0 && whetherLogin) {
          console.log('查询单个记录的电话号码（Index）：' + JSON.stringify(queryResult[0].phone))
          router.replaceUrl({ url: url })
        } else {
          router.replaceUrl({url: 'pages/login/Login'})
        }

      } else {
        this.timer -= 1000
      }
    }, 1000)
  }

  // 页面销毁时执行
  aboutToDisappear(){
    console.log('Index销毁了')
  }

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {

      // 起始页面
      Column({ space: 30 }) {

        Image($r('app.media.icon')).objectFit(ImageFit.Contain).width(60).borderRadius(10)
        // Text('Link').fontSize(40)
        Text('租办公设备就来Link').fontSize(20).fontStyle(FontStyle.Italic).fontColor('#007dff')

      }.width('100%').height('100%').justifyContent(FlexAlign.Center)


      // // 倒计时显示
      // Text(`${this.timer / 1000} 秒`).width(70).height(35)
      //   .fontSize(20).fontWeight(600)
      //   .backgroundColor('#ffcbc9c9').textAlign(TextAlign.Center)
      //   .borderRadius(20).opacity(0.5)
      //   .fontColor('#fffc2b2b')

    }.width('100%').height('100%').padding(10)
    // .backgroundColor('#fdd633')
  }
}