import notificationManager from '@ohos.notificationManager';

// 验证码通知类(模拟短信验证码)
export class CaptchaNotice{

  // 通知验证码
  notifyTheVerificationCode(){
    // 生成随机六位验证码
    let captcha = Math.floor(100000 + Math.random() * 900000)
    // 组件间传输验证码值
    AppStorage.SetOrCreate('captcha', captcha)
    let notificationRequest: notificationManager.NotificationRequest = {
      id: 1,
      content: {
        contentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT, // 普通文本类型通知
        normal: {
          title: '找回密码',
          text: `[Link]验证码：${captcha}（10分钟内有效）`,
          additionalText: '验证码',
        }
      }
    };

    notificationManager.publish(notificationRequest, (err) => {
      if (err) {
        console.error(`发布通知失败,code为 ${err.code}, message为${err.message}`);
        return;
      }
      console.info('已成功发布通知(验证码)');
    });
  }
}