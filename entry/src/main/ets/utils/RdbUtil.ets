//1、导入关系型数据库
import relationalStore from '@ohos.data.relationalStore'
import common from '@ohos.app.ability.common'

//关系型数据库工具类
export class RdbUtil{
  //关系型数据对象
  private rdbStore:relationalStore.RdbStore
  //上下文
  private context = getContext(this) as common.UIAbilityContext
  //数据库配置
  private storeConfig: relationalStore.StoreConfig={
    name:'link.db', //数据库名
    securityLevel:relationalStore.SecurityLevel.S1 //数据库安全级别
  }

  //数据初始化
  async init(){
    try {
      if (!this.rdbStore) {
        //2、获取关系型数据对象，建立数据库
        this.rdbStore = await relationalStore.getRdbStore(this.context, this.storeConfig)
      }
    }catch (err) {
      console.error('初始化数据库错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //建表
  async createTable(sql : string){
    await this.init()
    try{
      //3、建数据表
      await this.rdbStore.executeSql(sql)
    }catch (err) {
      console.error('关系型数据库建表错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //新增
  async add(tableName:string,date:any){
    try {
      return await this.rdbStore.insert(tableName,date)
    }catch(err){
      console.error('关系型数据库新增错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //删除
  async delete(tableName:string,id : number){
    try {
      const p = new relationalStore.RdbPredicates(tableName) //谓词
      p.equalTo('id',id)
      await this.rdbStore.delete(p)
      return true
    }catch(err){
      console.error('关系型数据库删除错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //修改
  async update(value: any, p: relationalStore.RdbPredicates){
    try {
      await this.rdbStore.update(value, p)
      return true
    }catch(err){
      console.error('关系型数据库修改错误(RdbUtil):'+JSON.parse(err))
      return false
    }
  }

  //获取谓词
  getRdbPredicates(tableName: string){
    return new relationalStore.RdbPredicates(tableName)
  }

  //查询
  async query(p: relationalStore.RdbPredicates){
    try {
      const rs = await this.rdbStore.query(p) //查询
      return this.warpResultSet(rs)  //结果集处理
    }catch(err){
      console.error('关系型数据库查询错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //查询
  async queryOneBySQL(sql: string){
    try {
      const rs = await this.rdbStore.querySql(sql) //查询
      return this.warpResultSet(rs)[0]  //结果集处理
    }catch(err){
      console.error('关系型数据库查询单条数据错误(RdbUtil):'+JSON.parse(err))
    }
  }

  // 查询多条
  async queryBySQL(sql: string){
    try {
      const rs = await this.rdbStore.querySql(sql) //查询
      return this.warpResultSet(rs) //结果集处理
    }catch(err){
      console.error('关系型数据库查询多条数据错误(RdbUtil):'+JSON.parse(err))
    }
  }

  //结果集处理
  warpResultSet(rs: relationalStore.ResultSet){
    const list: any[] = []

    //获取列数
    while (rs.goToNextRow()){
      const data: any = {}
      //循环列数
      for(let i = 0; i < rs.columnCount; i++){
        const name = rs.columnNames[i] //标签名字
        const index = rs.getColumnIndex(name) //根据标签名称取对应的索引
        const value = rs.getString(index) //根据索引取对应的值
        data[name] = value
      }
      //一个data表示一条数据
      list.push(data)
    }

    return list
  }
}
