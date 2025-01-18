import { RdbUtil } from '../utils/RdbUtil'
import { User } from '../model/User'

// 表名
const tableName = 'user'

//建表语句
const CREATE_USER_SQL = `
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    phone TEXT(255),
    password TEXT(255),
    createTime TEXT(255),
    whetherLogin INT,
    updateTime TEXT(255)
  );`


export class UserDb {
  RdbUtil: RdbUtil = new RdbUtil()

  // 创建用户表
  async createUserTable() {
    try {
      await this.RdbUtil.createTable(CREATE_USER_SQL)
      console.log('用户表建表成功(UserDb)')
    } catch (err) {
      console.error('用户表建表错误(UserDb):'+JSON.parse(err))
    }
  }

  // 新增方法
  async add(user: User) {
    return await this.RdbUtil.add(tableName, user) > 0
  }

  // 查询所有用户方法
  async queryAllUser() {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    const list = await this.RdbUtil.query(p)
    return list
  }

  // 根据手机号查询单条数据
  async queryOneByPhone(phone: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('phone', phone)
    const list = await this.RdbUtil.query(p)
    return list[0]
  }

  // 根据手机号和密码查询数据方法
  async queryOneByPhoneAndPwd(phone: string, password: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('phone', phone)
    p.equalTo('password', password)
    // 查询
    const list = await this.RdbUtil.query(p)
    return list[0]
  }

  // 更新数据方法
  async updateUser(user: User, phone: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('phone', phone)
    return await this.RdbUtil.update(user, p)
  }

  // 删除

}

export const userDb = new UserDb()