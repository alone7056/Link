import { RdbUtil } from '../utils/RdbUtil'
import { UserAddress } from '../model/UserAddress'

// 表名
const tableName = 'user_address'

//建表语句
const CREATE_USER_SQL = `
  CREATE TABLE IF NOT EXISTS user_address(
    phone TEXT(255) PRIMARY KEY,
    nickname TEXT(255),
    gender TEXT(255),
    location TEXT(255),
    fullAddress TEXT(255)
  );`

export class UserAddressDb{
  RdbUtil: RdbUtil = new RdbUtil()

  // 创建用户地址表
  async createUserAddressTable() {
    try {
      await this.RdbUtil.createTable(CREATE_USER_SQL)
    } catch (err) {
      console.error('用户地址建表错误(UserAddressDb):'+JSON.parse(err))
    }
  }

  // 新增方法
  async add(user_address: UserAddress) {
    return await this.RdbUtil.add(tableName, UserAddress) > 0
  }

  // 查询所有用户地址方法
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

  // 更新数据方法
  async updateUserAddress(user_address: UserAddress, phone: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('phone', phone)
    return await this.RdbUtil.update(user_address, p)
  }
}

export const userAddressDb = new UserAddressDb()