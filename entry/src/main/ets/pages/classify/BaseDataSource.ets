// IDataSource基础数据源，DataChangeListener数据改变监听器
export default  class BaseDataSource<T> implements IDataSource{
  private originalArray: string[] = []
  private listners : DataChangeListener[] = []

  //获取总数量
  totalCount(): number {
    return 0
  }

  //根据索引获取数据
  getData(index: number) : T | void{

  }

  // 注册数据改变的监听器
  registerDataChangeListener(listener: DataChangeListener): void {
    if(this.listners.indexOf(listener) < 0){  //如果listener不在大数组listners里面
      this.listners.push(listener)  //添加数据
      // this.listners.splice(, 0, listener)
    }
  }

  // 注销数据改变的监听器
  unregisterDataChangeListener(listener: DataChangeListener): void {
    const pos = this.listners.indexOf(listener)
    if(pos >= 0){  //如果listener在大数组listners里面
      console.log('删除数据')
      this.listners.splice(pos, 1) //删除
    }
  }

  // 通知组件重新加载所有数据
  onDataReloaded(index: number) : void{
    this.listners.forEach((listener: DataChangeListener)=>{
      listener.onDataReloaded()
    })
  }

  // 添加数据
  onDataAdd(index: number) : void{
    this.listners.forEach((listener: DataChangeListener)=>{
      listener.onDataAdd(index)
    })
  }

  // 数据
  onDataChange(index: number) : void{
    this.listners.forEach((listener: DataChangeListener)=>{
      listener.onDataChange(index)
    })
  }
}
