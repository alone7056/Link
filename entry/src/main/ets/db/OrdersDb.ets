import { RdbUtil } from '../utils/RdbUtil'
import { orderDeviceInformation } from '../model/orderData'

// 表名
const tableName = 'orders'

//建表语句
const CREATE_USER_SQL = `
  CREATE TABLE IF NOT EXISTS orders(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    iconSrc TEXT(255),
    theNameOfTheDevice TEXT(255),
    propagandaHeadline TEXT(255),
    introductionToParameters TEXT(255),
    monthlyPrice INTEGER,
    numberOfLeases INTEGER
  );`

export class OrdersDb {
  RdbUtil: RdbUtil = new RdbUtil()

  // 创建订单表 createAnOrderForm
  async createAnOrderForm() {
    try {
      await this.RdbUtil.createTable(CREATE_USER_SQL)
      console.log('订单表建表成功(OrdersDb)')
    } catch (err) {
      console.error('订单表建表错误(OrdersDb):'+JSON.parse(err))
    }
  }

  // 新增方法
  async add(odi: orderDeviceInformation) {
    try {
      return await this.RdbUtil.add(tableName, odi) > 0
    } catch (err) {
      console.log('add方法报错(OrdersDb)')
    }
  }

  // 查询订单设备方法
  async inquireAboutOrderInformation() {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    const list = await this.RdbUtil.query(p)
    return list
  }

  // 更新数据方法
  async updateTheOrder(odi: orderDeviceInformation, theNameOfTheDevice: string) {
    const p = this.RdbUtil.getRdbPredicates(tableName)
    p.equalTo('theNameOfTheDevice', theNameOfTheDevice)
    return await this.RdbUtil.update(odi, p)
  }

  // 删除订单
  async deleteTheOrder(theNameOfTheDevice: string){
    return await this.RdbUtil.deleteAccordingToTheName(tableName, theNameOfTheDevice)
  }
}

export const ordersDb = new OrdersDb()