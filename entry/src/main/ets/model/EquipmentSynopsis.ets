export class equipmentSynopsis{
  // 设备 equipment
  // 简介 synopsis
  picturesOfTheDevice: ResourceStr; // 设备图片
  theNameOfTheDevice: string; // 设备名称
  introductionToParameters: string; // 参数简介
  monthlyPrice: number; // 月租价格

  constructor(picturesOfTheDevice?: ResourceStr, theNameOfTheDevice?: string, introductionToParameters?: string, monthlyPrice?: number) {
    this.picturesOfTheDevice = picturesOfTheDevice;
    this.theNameOfTheDevice = theNameOfTheDevice;
    this.introductionToParameters = introductionToParameters;
    this.monthlyPrice = monthlyPrice;
  }
}