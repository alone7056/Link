export class PreferentialZoneInfo{
  icon: ResourceStr; // 设备图片
  title: string; // 标题
  disposition: string; // 配置信息
  originalRent: number; // 原租金
  preferentialRent: number; // 特价租金

  // 构造器
  constructor(icon: ResourceStr, title: string, disposition: string, originalRent: number, preferentialRent: number) {
    this.icon = icon;
    this.title = title;
    this.disposition = disposition;
    this.originalRent = originalRent;
    this.preferentialRent = preferentialRent;
  }
}