// 笔记本类
export class Laptop {
  TheNameOfTheNotebook: string; // 笔记本名称
  particularsSwiper: ResourceStr[]; // 轮播图片资源
  optionalConfiguration: string[][]; // 可选配置
  ProductDetails: ResourceStr[]; // 商品详情
  ProductParameters: string[][]; // 商品参数

  constructor(TheNameOfTheNotebook?: string, particularsSwiper?: ResourceStr[], optionalConfiguration?: string[][], ProductDetails?: ResourceStr[], ProductParameters?: string[][]) {
    this.TheNameOfTheNotebook = TheNameOfTheNotebook;
    this.particularsSwiper = particularsSwiper;
    this.optionalConfiguration = optionalConfiguration;
    this.ProductDetails = ProductDetails;
    this.ProductParameters = ProductParameters;
  }
}