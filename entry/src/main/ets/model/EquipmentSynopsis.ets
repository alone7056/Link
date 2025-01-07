export class equipmentSynopsis{
  // 设备 equipment
  // 简介 synopsis
  picturesOfTheDevice: ResourceStr; // 设备图片
  theNameOfTheDevice: string; // 设备名称
  propagandaHeadline:string; // 设备标题
  introductionToParameters: string; // 参数简介
  monthlyPrice: number; // 月租价格
  equipmentType: string; // 设备类型

  constructor(picturesOfTheDevice?: ResourceStr, theNameOfTheDevice?: string, propagandaHeadline?: string, introductionToParameters?: string, monthlyPrice?: number, equipmentType?: string) {
    this.picturesOfTheDevice = picturesOfTheDevice;
    this.theNameOfTheDevice = theNameOfTheDevice;
    this.propagandaHeadline = propagandaHeadline;
    this.introductionToParameters = introductionToParameters;
    this.monthlyPrice = monthlyPrice;
    this.equipmentType = equipmentType;
  }
}