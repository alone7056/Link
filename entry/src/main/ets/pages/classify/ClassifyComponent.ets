import BaseDataSource from './BaseDataSource'
import { equipmentSynopsis } from '../../model/EquipmentSynopsis'

export class ClassifyComponent extends BaseDataSource<equipmentSynopsis> {
  private dataArray : Array<equipmentSynopsis> = []

  // 获取总数量
  public totalCount() : number{
    return this.dataArray.length
  }

  // 获取数据
  public getData(index: number): equipmentSynopsis{
    return this.dataArray[index]
  }

  // 添加数据
  public addData(index: number, data : equipmentSynopsis): void{
    this.dataArray.splice(index, 0, data)
    return this.onDataAdd(index)
  }

  public pushData(data : equipmentSynopsis) : void{
    this.dataArray.push(data)
    this.onDataAdd(this.dataArray.length -1)
  }

  public deleteAll(): void{
    this.dataArray.splice(0, this.dataArray.length);
  }
}