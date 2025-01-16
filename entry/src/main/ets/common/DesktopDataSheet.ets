// 台式机参数信息
import { deviceDetails } from '../model/EquipmentClass'
export const DesktopParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号', '操作系统'],
  ['外观尺寸', '机箱尺寸', '主机重量'],
  ['处理器', 'CPU系列', 'CPU型号', '主屏/睿频', '核心/线程'],
  ['内存', '内存类型', '内存容量'],
  ['硬盘', '硬盘类型', '硬盘容量'],
  ['显卡', '显卡类型', '显存容量'],
  ['通讯', '有线网卡', '无线网卡'],
  ['显示器', '品牌型号', '分辨率', '尺寸', '显示接口'],
  ['I/O接口', '音频接口', '视频接口', '数据接口', '其他接口'],
  ['配置清单', '电源线', '键盘', '鼠标', '显示器连接线']
]

// 台式机详情
export const DesktopDetails: deviceDetails[] = [
  // 设备名称ID标识
  new deviceDetails('Link S20',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['G4900/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', '78'],
      ['G4930/8G/120G SSD/核显/戴尔 E2219HN 21.5英寸显示器', '73'],
      ['I5-9400/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', '108'],
      ['I3-9100/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', '98'],
      ['I5-9400/8G/240G SSD/核显/惠普M2256 21.5英寸显示器', '108'],
      ['G4900/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', '71'],
      ['I3-9100/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', '98'],
      ['I5-9400/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', '116']

    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['Link', 'S20', 'win10'],
      // 外观尺寸/机箱尺寸/主机重量
      ['356*169*385MM', '约5.2kg（不含显示器）'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G4900', '2.5GHz', '2核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['飞利浦 243S7QDSBF', '1920*1080', '23.8英寸', 'VGA、DVI、HDMI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['前置：前置通用音频接口*1、后置：后置音频输入*1，音频输出*1', 'DP接口*2', '前置USB3.2*4，Type-C*1；后置USB3.2*3，USB2.0*3', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E96X',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper4.jpg')

    ],
    // 可选配置
    [
      ['G4900/8G/256G SSD/核显/联想T2055 20英寸显示器', '73'],
      ['G4900/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', '78']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['联想', 'E96X', 'win10'],
      // 外观尺寸/机箱尺寸/主机重量
      ['376*321*165mm', '约7kg（不含显示器）'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G4900', '2.5GHz', '2核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['联想 T2055', '1600x900', '19.5英寸', 'VGA'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机接口、麦克风接口', 'VGA接口、HDMI接口', 'USB 3.1 Gen1*6；USB 2.0 *4', 'PS/2接口、电源接口、串口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G4',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I3-9100/8G/256G SSD/核显/惠普M2456 23.8英寸显示器', '108'],
      ['G4900/8G/256G SSD/核显/惠普V202B 19.5英寸显示器', '73'],
      ['G4900/8G/256G SSD/核显/惠普V220 21.5英寸显示器', '78'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['惠普', '288G4', 'win10'],
      // 外观尺寸/机箱尺寸/主机重量
      ['170×338×277.5mm', '约5.4kg(不含显示器)'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔赛扬双核', 'Intel赛扬双核G4900', '3.1GHz', '2核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['惠普 V202B', '1600x900', '19.5英寸', 'VGA'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机输出接口×1，麦克风输入接口×1', 'VGA接口、HDMI接口', 'USB3.1Gen1 x4；USB2.0 x4', '电源接口，PS/2，COM串口RJ45网口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('戴尔Dell 3967MT',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-6500/8G/256G SSD/核显/戴尔E2219HN 21.5英寸显示器', '80'],
      ['I5-6/8G/256G SSD/核显/戴尔D2421H 23.8英寸显示器', '98']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['戴尔', '成铭 3967MT', 'win10'],
      // 外观尺寸/机箱尺寸/主机重量
      ['350×274×154mm', '约6.5Kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 i5', '6500', '3.2GHz/3.6GHz', '4核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['戴尔 D2421H', '1920x1080', '23.8英寸', 'VGA、HDMI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['前置耳麦二合一接口，后置耳机输出接口', 'VGA接口、HDMI接口', '4*USB2.0、4*USB3.0', '电源接口、RJ45网络接口、COM串口、PS/2'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E98',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Lenovo/Lenove_E98/Lenove_E98_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['G5905/8G/256G SSD/核显/联想T2055 20英寸显示器', '83'],
      ['G5905/8G/256G SSD/核显/联想P24I 23.8英寸显示器', '103'],
      ['G5905/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', '88'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/ProductDetails4.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['联想', 'E98', 'win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['370*278*170mm', '7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 双核', 'G5905', '3.2GHz/3.6GHz', '4核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['联想 T2055', '1920x1080', '19.5英寸', 'VGA、HDMI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['麦克风接口、耳机接口、音频接口', 'VGA接口、HDMI接口', '2*USB3.2Gen2/4*USB3.1Gen1/4*USB2.0', '电源按键、串口、P/S2接口、网络接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E97',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['G5905/8G/256G SSD/核显/飞利浦203V5LSB2 20英寸显示器', '83'],
      ['G5905双核/8G/256G SSD/核显/飞利浦223V5LSB 21.5英寸显示器', '88']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['联想', 'E97', 'win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['370*278*170mm', '7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 双核', 'G5905', '3.2GHz/3.6GHz', '4核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['联想 T2055', '1920x1080', '19.5英寸', 'VGA、HDMI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['麦克风接口、耳机接口、音频接口', 'VGA接口、HDMI接口', '2*USB3.2Gen2/4*USB3.1Gen1/4*USB2.0', '电源按键、串口、P/S2接口、网络接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 680G3',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/HP/HP_680G3/HP_680G3_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-6/8G/256G SSD/核显/联想T2224R 21.5英寸显示器', '98']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['惠普', '680G3', 'win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['170×274×308mm', '约7.14 kg（不含显示器）'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel酷睿i5', '6500', '3.2GHz/3.6GHz', '4核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['联想 T2224R', '1920x1080', '21.5英寸', 'VGA、DVI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机麦克风二合一接口、音频输出 、音频输入', 'VGA接口、DP接口*2', '6*USB2.0、4*USB3.0', '电源接口、RJ-45网络端口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G6',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/HP/HP_288G6/HP_288G6_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I3-10100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', '103'],
      ['I5-10500/16G/1T+256G SSD/GTX1650 4G独显/联想P27q-10 27英寸显示器', '238'],
      ['I7-10700/16G/1T+512G SSD/GTX1660S 6G独显/飞利浦273V7QH27英寸显示器', '296'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['惠普', '288 Pro G6', 'win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['337*155*303mm', '5.2kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel酷睿i3', 'i3-10100', '3.6GHz~4.3GHz', '4核8线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['惠普 M2256', '1920x1080', '21.5英寸', 'VGA、DVI'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['1*耳麦组合接口，1*音频输入接口，1*音频输出接口', 'VGA接口、HDMI接口', '前置：2*USB3.2Gen2、4*USB3.2Gen1；后置：2*USB2.0', '电源接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G9',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/HP/HP_288G9/HP_288G9_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I3-10100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', '103'],
      ['I3-12100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', '123'],
      ['I5-10500/16G/1T+256G SSD/GTX1650 4G独显/联想P27q-10 27英寸显示器', '238'],
      ['I7-10700/16G/1T+512G SSD/GTX1660S 6G独显/飞利浦273V7QH27英寸显示器', '296'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['惠普', '288G9', 'win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['155×337×303mm', '约4.7kg(不含显示器)'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel酷睿i3', 'i3-12100', '3.3GHz/4.3GHz', '4核8线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['惠普 M2456', '1920x1080', '23.8英寸', 'DP、HDMI、VGA'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['1 个麦克风/耳机组合插孔', 'VGA接口、HDMI接口', 'USB3.0 x4；USB3.2 x2；USB2.0 x2', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 400G9 SFF R',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/HP/HP_400G9/HP_400G9_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I3-13100/8G/512G SSD/核显/WIFI6+BT5.3/飞利浦24B2N2100 23.8英寸显示器', '133'],
      ['I5-13500/8G/512G SSD/核显/WIFI6+BT5.3/飞利浦24B2N2100 23.8英寸显示器', '158'],
      ['I5-13500/16G/512G SSD/核显/WIFI6+BT5.3/飞利浦27B2N2100 27英寸显示器', '173'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['惠普', '400G9 SFF R', 'win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['270×95×308mm', '约4.2kg(不含显示器)'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i5', 'i5-13500', '2.5GHz/4.8GHz', '14核20线程'],
      // 内存/内存类型/内存容量
      ['DDR4 3200MHz', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', 'WIFI6+BT5.3'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['飞利浦27B2N2100', '1980×1080', '23.8英寸', 'HDMI，VGA'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机麦克风二合一接口、音频输出 x1', 'DP接口、HDMI接口', 'USB Type-Cx1；USB3.0 x6；USB2.0 x2；PS/2×2', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo M930t',
    // 轮播图
    [
    $rawfile('ProductDetails/Desktop/Lenovo/Lenove_M930T/Lenove_M930T_Swiper2.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-10400/16G/1T SSD/GT1030 2G独显/惠普M2256 21.5英寸显示器', '163'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails4.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails5.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails6.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/ProductDetails7.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号/操作系统
      ['联想', 'M930t', 'win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['292.7*366*145mm', '约5.0kg(不含显示器)'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i5', 'i5-10400', '2.9GHz/4.3GHz', '6核12线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['独显', '2G'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // 显示器/品牌型号/分辨率/屏幕尺寸/显示接口
      ['惠普M2256', '1980×1080', '21.5英寸', 'DP、HDMI、VGA'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['1x耳机输出接口；1x麦克风输入接口；1x音频接口', '1xHDMI；1xVGA；1xDP', '8xUSB；Type-c', '电源接口；RJ45（网络接口）；2x PS/2'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*2', '次新*1', '次新*1', '次新*1']
    ]
  ),

]


