// 会议大屏幕参数信息
import { deviceDetails } from '../model/EquipmentClass'
export const conferenceScreenParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号'],
  ['外观尺寸', '尺寸','重量'],
  ['设备参数', '分辨率', '亮度', '操作系统'],
  ['接口参数', '前置接口', '后置接口'],
  ['配件信息', '适配器', '书写笔', '遥控器']
]

export const conferenceScreenDetails: deviceDetails[] = [
// 设备名称ID标识
  new deviceDetails('Newline TC 65',
    // 轮播图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper2.jpg')
    ],
    // 可选配置
    [['搭配腾讯会议Rooms/Windows/65英寸/3840*2160/含ROOMS基础账号', '558']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/ProductDetails1.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['鸿合newline', 'TC65'],
      // 外观尺寸/尺寸/重量
      ['65英寸', '45.5kg'],
      // 设备参数/分辨率/亮度/操作系统
      ['3840*2160，比例16：9', '370cd/m²', 'Windows系统'],
      // 接口参数/前置接口/后置接口
      ['USB3.0*2;USB 3.0 Touch*1;RJ45*1;RS232*1;Type-c*1', 'HDMI IN*2;VGA In*1;Audio In*1;Microphone In*1;AC In*1'],
      // 配件信息/适配器/书写笔/遥控器
      ['次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('Newline FLEX Max Pro',
    // 轮播图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper2.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper3.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper4.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper5.jpg')
    ],
    // 可选配置
    [['搭配腾讯会议Rooms(1年)/4G/32G SSD/Newline OS 3/43英寸/3840*2160', '599']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/ProductDetails1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/ProductDetails2.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['鸿合newline', 'FLEX Max Pro'],
      // 外观尺寸/尺寸/重量
      ['43英寸', '60kg'],
      // 设备参数/分辨率/亮度/操作系统
      ['3840*2160，比例16：9', '300cd/m²', 'Newline OS 3'],
      // 接口参数/前置接口/后置接口
      ['USB-A', 'USB-A, USB-B, USB-C (全功能USB 2.0+4K60Hz 显示+5V/2A 供电), HDMI'],
      // 配件信息/适配器/书写笔/遥控器
      ['全新*1', '全新*1', '全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('Newline TT-NC65GA2',
    // 轮播图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper2.jpg')
    ],
    // 可选配置
    [['海思811.4/4G/32G SSD/安卓8.0/65英寸/3840*2160/含Rooms高级账号', '688']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/ProductDetails1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['鸿合newline', 'TT-NC65GA2'],
      // 外观尺寸/尺寸/重量
      ['65英寸', '41.5kg'],
      // 设备参数/分辨率/亮度/操作系统
      ['3840*2160', '≥450 cd/㎡ Min', '安卓8.0'],
      // 接口参数/前置接口/后置接口
      ['USB 2.0(pubilc)*1', 'USB 3.0(Android)*1; USB 2.0(Public)*2；HDMI 2.0 IN*2；RJ 45*1；RS232*1；OPS接口；AC IN *1'],
      // 配件信息/适配器/书写笔/遥控器
      ['全新*1', '全新*1', '全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('Newline TC 86',
    // 轮播图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper2.jpg')
    ],
    // 可选配置
    [['搭配腾讯会议Rooms/Windows/86英寸/3840*2160/含ROOMS基础账号', '808']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/ProductDetails1.jpg'),
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['鸿合newline', 'TC86'],
      // 外观尺寸/尺寸/重量
      ['86英寸', '60kg'],
      // 设备参数/分辨率/亮度/操作系统
      ['3840*2160，比例16：9', '370cd/m²', 'Windows系统'],
      // 接口参数/前置接口/后置接口
      ['USB 2.0(Android)*1;USB 3.0(Public)*2;HDMI2.0 IN*2;', 'HDMI Out*1;Earphone *1;SPDIF*1;USB 3.0 Touch*1'],
      // 配件信息/适配器/书写笔/遥控器
      ['次新*1', '次新*1', '次新*1']
    ]
  ),
  // 设备名称ID标识
  new deviceDetails('Newline TT-NC75GA2',
    // 轮播图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper2.jpg')
    ],
    // 可选配置
    [['海思811.4/4G/32G SSD/安卓8.0/75英寸/3840*2160/含Rooms高级账号', '888']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/ProductDetails1.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/ProductDetails2.jpg'),
    $rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['鸿合newline', 'TT-NC75GA2'],
      // 外观尺寸/尺寸/重量
      ['75英寸', '53.5kg'],
      // 设备参数/分辨率/亮度/操作系统
      ['3840*2160，比例16：9', '370cd/m²', 'Windows系统'],
      // 接口参数/前置接口/后置接口
      ['USB 2.0(pubilc)*1', 'USB 3.0(Android)*1; USB 2.0(Public)*2；HDMI 2.0 IN*2；RJ 45*1；RS232*1；OPS接口；AC IN *1'],
      // 配件信息/适配器/书写笔/遥控器
      ['全新*1', '全新*1', '全新*1']
    ]
  ),

]