import { deviceDetails } from '../model/EquipmentClass'

export const singleHostParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号', '操作系统'],
  ['外观尺寸', '机箱尺寸', '主机重量'],
  ['处理器', 'CPU系列', 'CPU型号', '主屏/睿频', '核心/线程'],
  ['内存', '内存类型', '内存容量'],
  ['硬盘', '硬盘类型', '硬盘容量'],
  ['显卡', '显卡类型', '显存容量'],
  ['通讯', '有线网卡', '无线网卡'],
  ['I/O接口', '音频接口', '视频接口', '数据接口', '其他接口'],
  ['配置清单', '电源线', '键盘', '鼠标', '显示器连接线']
]

export const singleHostDetails: deviceDetails[] = [
  // 设备名称ID标识
  new deviceDetails('Link S20',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['G4900/8G/240G SSD/核显', '48'],
      ['I3-9100/8G/240G SSD/核显', '83'],
      ['I5-9400/8G/240G SSD/核显', '93'],
      ['14900K/64G/4T SSD/RTX A100', '1899']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Link/Link_S20/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['Link', 'S20', 'win11'],
      // 外观尺寸/机箱尺寸/主机重量
      ['356*169*385MM', '约9.2kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿', 'i9-14900K', '3.5GHz/5.5GHz', '20核32线程'],
      // 内存/内存类型/内存容量
      ['DDR5', '64G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '4T'],
      // 显卡/显卡类型/显卡容量
      ['独显', '48G'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', 'AX411'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['前置：前置通用音频接口*1；后置：后置音频输入*1，音频输出*1', '前置USB3.2*4，Type-C*1；后置USB3.2*3，USB2.0*3', 'USB 3.1 Gen1*6；USB 2.0 *4', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['全新*1', '全新*1', '全新*1', '全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E96X',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['G4900/8G/256G SSD/核显', '63']
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
    // 品牌/型号
      ['联想', 'E96X', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['376*321*165mm', '约7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G4900', '1GHz/2.5GHz', '2核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机接口、麦克风接口', 'VGA接口、HDMI接口', 'USB 3.1 Gen1*6；USB 2.0 *4', 'USB 3.1 Gen1*6；USB 2.0 *4', 'PS/2接口、电源接口、串口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G4',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper4.jpg')

    ],
    // 可选配置
    [
      ['I3-9100/8G/256G SSD/核显', '85'],
      ['G4900/8G/256G SSD/核显', '63']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G4/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['惠普', '288G4', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['170×338×277.5mm', '约5.4kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G4900', '3.1GHz', '2核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机输出接口×1，麦克风输入接口×1', 'VGA接口、HDMI接口', 'USB3.1Gen1 x4；USB2.0 x4', '电源接口，PS/2，COM串口RJ45网口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('戴尔Dell 3967MT',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper4.jpg')

    ],
    // 可选配置
    [
      ['I5-6/8G/256G SSD/核显', '65']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['戴尔', '成铭 3967MT', 'Win10家庭版'],
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
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['前置耳麦二合一接口，后置耳机输出接口', 'VGA接口、HDMI接口', '4*USB2.0、4*USB3.0', '电源接口、RJ45网络接口、COM串口、PS/2'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E97',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['G5905/8G/256G SSD/核显', '73']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['联想', 'E97', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['370*278*170mm', '约7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G5905', '3.5GHz/不支持睿频', '2核2线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['麦克风接口、耳机接口、音频接口', 'VGA接口、HDMI接口', '4*USB2.0、6*USB3.1', 'PS/2接口、电源接口、串口、网络接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo E98',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['G5905/8G/256G SSD/核显', '73']
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
    // 品牌/型号
      ['联想', 'E97', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['370*278*170mm', '约7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel 酷睿 赛扬双核', 'G5905', '3.5GHz/不支持睿频', '2核2线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['麦克风接口、耳机接口、音频接口', 'VGA接口、HDMI接口', '4*USB2.0、6*USB3.1', 'PS/2接口、电源接口、串口、网络接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 680G3',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-6/8G/256G SSD/核显', '83']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_680G3/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['惠普', '680G3', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['170×274×308mm', '约7.14 kg'],
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
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机麦克风二合一接口、音频输出 、音频输入', 'VGA接口、DP接口*2', '6*USB2.0、4*USB3.0', '电源接口、RJ-45网络端口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('戴尔Dell 成铭3991',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I3-10100/8G/256G SSD/核显', '88']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['戴尔', '成铭3991', 'Win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['154*324.2*292mm', '约7.7 kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel酷睿i3', 'i3-10100', '3.2GHz/3.6GHz', '4核4线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['麦克风耳机二合一接口、耳机输出接口', 'VGA接口、DP接口*2', '4*USB2.0、4*USB3.2', '2*PS/2接口、电源接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G6',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I3-10100/8G/256G SSD/核显', '88'],
      ['I5-10500/8G/256G SSD/核显', '103'],
      ['I5-10500/16G/1T+256G SSD/GTX1650 4G独显', '173'],
      ['I7-10700/16G/1T+512G SSD/GTX1660S 6G独显', '263']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G6/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['惠普', '288 Pro G6', 'Win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['337*155*303mm', '5.2kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['Intel酷睿i5', 'I5-10500', '3.1GHz~4.5GHz', '6核12线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['1*耳麦组合接口，1*音频输入接口，1*音频输出接口', 'VGA接口、DP接口*2', '前置：2*USB3.2Gen2、4*USB3.2Gen1；后置：2*USB2.0', '电源接口'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 400G9',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I5-13500/8G/512G SSD/核显/WIFI6+BT5.3', '128'],
      ['I3-13100/8G/512G SSD/核显/WIFI6+BT5.3', '108'],
      ['I5-13500/16G/512G SSD/核显/WIFI6+BT5.3', '138']
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
    // 品牌/型号
      ['惠普', '400G9 SFFR', 'Win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['270×95×308mm', '约4.2kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i3', 'i3-13100', '3.4GHz/4.5GHz', '4核8线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', 'WIFI6+BT5.3'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机麦克风二合一接口、音频输出 x1', 'DP接口、HDMI接口', 'USB Type-Cx1；USB3.0 x6；USB2.0 x2；PS/2×2', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 288G9',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I5-12500/16G/1T+256G SSD/GTX1650 4G独显', '178'],
      ['I3-12100/8G/256G SSD/核显', '93'],
      ['I5-12500/16G/512G SSD/核显', '128'],
      ['I5-12500/8G/256G SSD/核显', '113']
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
    // 品牌/型号
      ['惠普', '288G9', 'Win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['155×337×303mm', '约4.7kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i3', 'i3-12100', '3.3GHz/4.3GHz', '4核8线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', 'WIFI6+BT5.3'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['耳机麦克风二合一接口、音频输出 x1', 'DP接口、HDMI接口', 'USB3.0 x4；USB3.2 x2；USB2.0 x2', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),
  // 设备名称ID标识
  new deviceDetails('惠普HP Z2G9',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I7-13700K/32G/1T SSD/RTX4060 8G独显', '483']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/ProductDetails1.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/ProductDetails2.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/ProductDetails3.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/ProductDetails4.jpg'),
    $rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 品牌/型号
      ['惠普', 'Z2 G9 Gen2', 'Win11家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['356*169*385MM', '约6.2kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i7', 'i7-13700K', '3.5GHz/5.2GHz', '16核24线程'],
      // 内存/内存类型/内存容量
      ['DDR5-4800MHz', '32G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '1T SSD'],
      // 显卡/显卡类型/显卡容量
      ['独显 RTX4060', '8G'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['前置：前置通用音频接口*1。后置：后置音频输入*1，音频输出*1', 'DP接口*2', '前置USB3.2*4，Type-C*1；后置USB3.2*3，USB2.0*3', '电源接口，RJ45（网络接口）'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo M930t',
    // 轮播图
    [
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper2.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper3.jpg'),
    $rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-10400/16G/1T SSD/GT1030 2G独显', '148']
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
    // 品牌/型号
      ['联想', 'M930t', 'Win10家庭版'],
      // 外观尺寸/机箱尺寸/主机重量
      ['292.7*366*145mm', '约5.0kg'],
      // 处理器/CPU系列/CPU型号/主屏睿频/核心线程
      ['英特尔酷睿 i5', 'i5-10400', '2.9GHz/4.3GHz', '6核12线程'],
      // 内存/内存类型/内存容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '1T SSD'],
      // 显卡/显卡类型/显卡容量
      ['独显 GT1030', '2G'],
      // 通讯/有线网卡/无线网卡
      ['10/100/1000Mbps网卡', '无'],
      // IO接口/音频接口/视频接口/数据接口/其他接口
      ['1x耳机输出接口；1x麦克风输入接口；1x音频接口', '1xHDMI；1xVGA；1xDP', '8xUSB；Type-c', '电源接口；RJ45（网络接口）；2x PS/2'],
      // 配置清单/电源线/键盘/鼠标/显示器连接线
      ['次新*1', '次新*1', '次新*1', '次新*1']
    ]
  ),

]