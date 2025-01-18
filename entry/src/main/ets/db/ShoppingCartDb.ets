import { RdbUtil } from '../utils/RdbUtil'
import { shoppingCartDeviceInformation } from '../model/ShoppingCartData'

// 表名
const tableName = 'shoppingCart'

//建表语句
const CREATE_USER_SQL = `
  CREATE TABLE IF NOT EXISTS shoppingCart(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    iconSrc TEXT(255),
    theNameOfTheDevice TEXT(255),
    propagandaHeadline TEXT(255),
    introductionToParameters TEXT(255),
    monthlyPrice INTEGER,
    lease INTEGER,
    deposit INTEGER,
    numberOfLeases INTEGER,
    equipmentType TEXT(255)
  );`

export class ShoppingCartDb {
  RdbUtil: RdbUtil = new RdbUtil()

  // 创建用户表
  async createUserTable() {
    try {
      await this.RdbUtil.createTable(CREATE_USER_SQL)
      console.log('购物车表建表成功(ShoppingCartDb)')
    } catch (err) {
      console.error('购物车表建表错误(ShoppingCartDb):'+JSON.parse(err))
    }
  }

  // 新增方法
  async add(SCD: shoppingCartDeviceInformation) {
    try {
      return await this.RdbUtil.add(tableName, SCD) > 0
    } catch (err) {
      console.log('add方法报错(ShoppingCartDb)')
    }
  }

  // 查询购物购物车设备方法
  async queryShoppingCartInformation() {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    const list = await this.RdbUtil.query(p)
    return list
  }

  // 更新数据方法
  async updateShoppingCart(SCD: shoppingCartDeviceInformation, theNameOfTheDevice: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('theNameOfTheDevice', theNameOfTheDevice)
    return await this.RdbUtil.update(SCD, p)
  }

  // 删除数据
  async deleteShoppingCart(theNameOfTheDevice: string){
    return await this.RdbUtil.deleteAccordingToTheName(tableName, theNameOfTheDevice)
  }
}

export const shoppingCartDb = new ShoppingCartDb()
