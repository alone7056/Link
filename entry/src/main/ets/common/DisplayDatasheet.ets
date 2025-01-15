// 显示器参数信息
import { deviceDetails } from '../model/EquipmentClass'
export const DisplayParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号'],
  ['外观尺寸', '尺寸','重量', '壁挂', '底座'],
  ['显示参数', '面板类型', '面板尺寸', '屏幕比例', '屏幕分辨率'],
  ['接口参数', '显示接口', '其他接口'],
  ['配件信息', '适配器', '显示器连接线']
]

// 显示器详情
export const DisplayDetails: deviceDetails[] = [
// 设备名称ID标识
  new deviceDetails('飞利浦Philips 203V5LSB2',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper4.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['20/1600x900/60Hz/VGA', '20']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['飞利浦', '203V5LSB2'],
      // 尺寸/重量/是否支持壁挂/底座
      ['537.8×166×356.1 毫米', '约3.26千克', '不支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '19.5英寸', '16:9', '1600x900'],
      // 显示接口/其他接口
      ['VGA', '无'],
      // 电源线/显示器连接线
      ['次新*1', 'VGA*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('戴尔Dell E2016H',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper4.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper5.jpg')
    ],
    // 可选配置
    [['19.5/1600x900/60Hz/VGA+DP', '20']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['戴尔', 'E2016H'],
      // 尺寸/重量/是否支持壁挂/底座
      ['537.8×166×356.1 毫米', '约3.26千克', '不支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '19.5英寸', '16:9', '1600x900'],
      // 显示接口/其他接口
      ['VGA，DP', '无'],
      // 电源线/显示器连接线
      ['次新*1', 'DP*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('飞利浦Philips 223V5LSB',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper4.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper5.jpg')
    ],
    // 可选配置
    [['21.5/1920x1080/60Hz/VGA+DVI', '25']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['飞利浦', '223V5LSB'],
      // 尺寸/重量/是否支持壁挂/底座
      ['537.8×166×356.1 毫米', '约3.12千克', '不支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '21.5英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['VGA', '无'],
      // 电源线/显示器连接线
      ['次新*1', 'VGA*1']
    ]
  ),


]