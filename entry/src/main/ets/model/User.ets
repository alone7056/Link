// 用户类
export class User{
  id: number;           // id用户唯一标识
  phone: string;        // 手机号码
  password: string;     // 用户密码
  createTime: string;   // 账号创建时间
  whetherLogin: number; // 是否登录
  updateTime: string;   // 更新时间

  // 简单构造器（注册模块）
  constructor(phone?: string, password?: string, whetherLogin?: number) {
    this.phone = phone;
    this.password = password;
    this.whetherLogin = whetherLogin;
  }

  // constructor(id?: number, name?: string, password?: string, phone?:string, createTime?: string, whetherLogin?: number, updateTime?: string) {
  //   this.id = id;
  //   this.name = name;
  //   this.phone = phone;
  //   this.password = password;
  //   this.createTime = createTime;
  //   this.whetherLogin = whetherLogin;
  //   this.updateTime = updateTime;
  // }
}

export const user : User = new User()