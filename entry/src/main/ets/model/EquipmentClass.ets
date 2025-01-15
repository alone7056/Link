// 笔记本类
export class deviceDetails {
  TheNameOfTheDevice: string; // 设备名称
  particularsSwiper: ResourceStr[] | string[]; // 轮播图片资源
  optionalConfiguration: string[][]; // 可选配置
  ProductDetails: ResourceStr[]; // 商品详情
  ProductParameters: string[][]; // 商品参数

  constructor(TheNameOfTheDevice?: string, particularsSwiper?: ResourceStr[] | string[], optionalConfiguration?: string[][], ProductDetails?: ResourceStr[], ProductParameters?: string[][]) {
    this.TheNameOfTheDevice = TheNameOfTheDevice;
    this.particularsSwiper = particularsSwiper;
    this.optionalConfiguration = optionalConfiguration;
    this.ProductDetails = ProductDetails;
    this.ProductParameters = ProductParameters;
  }
}
