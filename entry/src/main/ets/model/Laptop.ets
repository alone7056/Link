// 笔记本类
export class Laptop {
  TheNameOfTheNotebook: string; // 笔记本名称
  brand: string; // 品牌
  model: string; // 型号
  particularsSwiper: ResourceStr[]; // 轮播图片资源
  optionalConfiguration: string[][]; // 可选配置
  ProductDetails: ResourceStr[]; // 商品详情
  ProductParameters: string[][]; // 商品参数

  constructor(TheNameOfTheNotebook?: string, brand?: string, model?: string, particularsSwiper?: ResourceStr[], optionalConfiguration?: string[][], ProductDetails?: ResourceStr[], ProductParameters?: string[][]) {
    this.TheNameOfTheNotebook = TheNameOfTheNotebook;
    this.brand = brand;
    this.model = model;
    this.particularsSwiper = particularsSwiper;
    this.optionalConfiguration = optionalConfiguration;
    this.ProductDetails = ProductDetails;
    this.ProductParameters = ProductParameters;
  }
}