// 订单设备信息
export class orderDeviceInformation {
  iconSrc: string; // 图片地址
  theNameOfTheDevice: string; // 设备名称
  propagandaHeadline: string; // 设备标题
  introductionToParameters: string; // 参数简介
  monthlyPrice: number; // 月租价格
  lease: number; // 租期
  numberOfLeases: number; // 租借设备数量

  constructor(iconSrc?: string, theNameOfTheDevice?: string, propagandaHeadline?: string, introductionToParameters?: string, monthlyPrice?: number, lease?: number, numberOfLeases?: number) {
    this.iconSrc = iconSrc;
    this.theNameOfTheDevice = theNameOfTheDevice;
    this.propagandaHeadline = propagandaHeadline;
    this.introductionToParameters = introductionToParameters;
    this.monthlyPrice = monthlyPrice;
    this.lease = lease;
    this.numberOfLeases = numberOfLeases;
  }
}

export const odi: orderDeviceInformation = new orderDeviceInformation()