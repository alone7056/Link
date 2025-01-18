// 购物车设备信息
export class shoppingCartDeviceInformation {
  iconSrc: string; // 图片地址
  theNameOfTheDevice: string; // 设备名称
  propagandaHeadline: string; // 设备标题
  introductionToParameters: string; // 参数简介
  monthlyPrice: number; // 月租价格
  lease: number; // 租期
  deposit: number; // 押金
  numberOfLeases: number; // 租借设备数量
  equipmentType: string; // 设备类型

  constructor(iconSrc?: string, theNameOfTheDevice?: string, propagandaHeadline?: string, introductionToParameters?: string, monthlyPrice?: number, lease?: number, deposit?: number, numberOfLeases?: number, equipmentType?: string ) {
    this.iconSrc = iconSrc;
    this.theNameOfTheDevice = theNameOfTheDevice;
    this.propagandaHeadline = propagandaHeadline;
    this.introductionToParameters = introductionToParameters;
    this.monthlyPrice = monthlyPrice;
    this.lease = lease;
    this.deposit = deposit;
    this.numberOfLeases = numberOfLeases;
    this.equipmentType = equipmentType;
  }
}

export const scd : shoppingCartDeviceInformation = new shoppingCartDeviceInformation()
