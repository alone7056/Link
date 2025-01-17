export class PreferentialZoneInfo{
  icon: ResourceStr | string; // 设备图片
  theNameOfTheDevice: string; // 设备名称
  title: string; // 标题
  disposition: string; // 配置信息
  originalRent: number; // 原租金
  preferentialRent: number; // 特价租金
  equipmentType: string; // 设备类型

  // 构造器
  constructor(icon: ResourceStr | string, theNameOfTheDevice: string, title: string, disposition: string, originalRent: number, preferentialRent: number, equipmentType: string) {
    this.icon = icon;
    this.theNameOfTheDevice = theNameOfTheDevice;
    this.title = title;
    this.disposition = disposition;
    this.originalRent = originalRent;
    this.preferentialRent = preferentialRent;
    this.equipmentType = equipmentType;
  }
}