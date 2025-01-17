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

  // 设备名称ID标识
  new deviceDetails('戴尔Dell E2220H',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper4.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper5.jpg')
    ],
    // 可选配置
    [['21.5/1920x1080/60Hz/DP+VGA', '25']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/ProductDetails6.jpg')
    ],
    // 详细参数
    [
      // 品牌/型号
      ['戴尔', 'E2220H'],
      // 尺寸/重量/是否支持壁挂/底座
      ['51.22 cm x 17.1 cm x 39.93 cm', '约6kg', '支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['TN', '21.5英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['DP，VGA', '无'],
      // 电源线/显示器连接线
      ['次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('飞利浦Philips 24B2N2100',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper4.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper5.jpg')
    ],
    // 可选配置
    [['23.8/1920x1080/100Hz/HDMI+VGA', '25']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails8.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails9.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails10.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails11.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails12.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/ProductDetails13.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['飞利浦', '24B2N2100'],
      // 尺寸/重量/是否支持壁挂/底座
      ['54.2 cm x 41.3 cm x 18.1cm', '约3.81kg', '支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '23.8英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['VGA，HDMI', '无'],
      // 电源线/显示器连接线
      ['全新*1', '全新HDMI*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('飞利浦Philips 241V8',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper4.jpg')
    ],
    // 可选配置
    [['23.8/1920x1080/75Hz/HDMI+VGA', '33']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails8.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails9.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails10.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/ProductDetails11.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['飞利浦', '241V8'],
      // 尺寸/重量/是否支持壁挂/底座
      ['540mmX416mmX220mm', '约3.06kg', '支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '23.8英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['VGA，HDMI', '无'],
      // 电源线/显示器连接线
      ['次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP M2456',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg')
    ],
    // 可选配置
    [['23.8/1920x1080/60Hz/HDMI+VGA +DP', '33']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/HP/HP_M2456_23.8/ProductDetails1.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['惠普', 'M2456'],
      // 尺寸/重量/是否支持壁挂/底座
      ['539mmX440mmX168mm', '约3.2kg', '支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '23.8英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['DP*1，HDMI*1，VGA*1', '无'],
      // 电源线/显示器连接线
      ['次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('飞利浦Philips 27B2N2100',
    // 轮播图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper3.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper4.jpg')
    ],
    // 可选配置
    [['27/1920x1080/100Hz/HDMI+VGA', '35']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['飞利浦', '27B2N2100'],
      // 尺寸/重量/是否支持壁挂/底座
      ['61.7 cm x 45.6 cm x 20.6cm', '约3.81kg', '支持', '普通'],
      // 面板类型/屏幕尺寸/屏幕比例/分辨率
      ['IPS', '27英寸', '16:9', '1920x1080'],
      // 显示接口/其他接口
      ['VGA，HDMI', '无'],
      // 电源线/显示器连接线
      ['全新*1', '全新HDMI*1']
    ]
  ),

]