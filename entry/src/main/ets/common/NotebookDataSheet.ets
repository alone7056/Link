// 笔记本电脑参数信息
import { deviceDetails } from '../model/EquipmentClass'

export const LaptopParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号', '操作系统'],
  ['外观尺寸', '尺寸', '重量', '颜色'],
  ['处理器', 'CPU系列', 'CPU型号', '主频/睿频', '核心/线程'],
  ['内存', '内存类型', '内存容量'],
  ['硬盘', '硬盘类型', '硬盘容量'],
  ['显卡', '显卡类型', '显存容量'],
  ['显示器', '屏幕尺寸', '分辨率'],
  ['多媒体设备', '摄像头'],
  ['网络通信', '内置蓝牙', '无线网卡', '有线网卡'],
  ['I/O接口', '音频接口', '视频接口', '其他接口'],
  ['电池描述', '电池'],
  ['配置清单', '电源适配器']
]

// 笔记本详情
export const LaptopDetails: deviceDetails[] = [
// 设备名称ID标识
  new deviceDetails('ThinkPad E490',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I3-8145U/16/512G SSD/核显/14/HD', '88'],
      ['I3-8145U/8G/256G SSD/核显/14/HD', '65']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E490', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['329×242×21.9mm', '约1.78kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i3', 'i3-8145U', '2.1/3.9GHz', '双核/四线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1366*768'],
      // 多媒体设备/摄像头
      ['720p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙4.1模块', '支持802.11ac无线协议', '1000mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI接口', '2×USB 3.1Gen1，1×Type-C，1×Thunderbolt 3.0，HDMI，RJ45'],
      // 电池描述/电池
      ['锂电池'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad E14 Gen1',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-1135G7/16G/512G SSD/核显/14/FHD', '163'],
      ['I3-1115G4/8G/256G SSD/核显/14/FHD', '108'],
      ['I5-10210U/8G/256G SSD/核显/14/FHD', '123'],
      ['I5-1135G7/8G/256G SSD/核显/14/FHD', '148'],
      ['I3-10110U/8G/256G SSD/核显/14/FHD', '78'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E14 2020款', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['325*232*20.9mm', '约1.77KG', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i3', 'i3-10110U', '1.6GHz/4.2GHz', '四核心/八线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ax（WiFi6)', '10/100/1000Mbps网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI*1', 'USB3.0*2，USB2.0*1，RJ45*1，全功能type-c，电源接口'],
      // 电池描述/电池
      ['锂聚合物电池45Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad E480',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper5.jpg'),
    ],
    // 可选配置
    [
      ['I3-7020U/8G/256G SSD/核显/14/HD', '60'],
      ['I3-8130U/8G/256G SSD/核显/14/HD', '78'],
      ['I5-10210U/16G/512G SSD/核显/13.3/HD', '112']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ProductDetails1.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E480', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['329×242×21.9mm', '约1.78kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i3', 'i3-8130U', '2.2/3.4GHz', '双核/四线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1366*768'],
      // 多媒体设备/摄像头
      ['720p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙4.1模块', '支持802.11ac无线协议', '1000mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI', '1×USB2.0，2×USB3.0，Type-C接口，RJ45网络接口，电源接口，micro SD读卡器'],
      // 电池描述/电池
      ['锂电池，45瓦时'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad X390',
    // 轮播图
    [$rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg')],
    // 可选配置
    [['I5-10210U/8G/256G SSD/核显/13.3/HD', '88'], ['I5-10210U/16G/512G SSD/核显/13.3/HD', '112']],
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'X390', 'Win10'],
      // 外观尺寸/尺寸/重量/颜色
      ['312x217x16.9mm', '约1.3Kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-10210u', '1.6GHz/4.2GHz', '四核心/八线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.3英寸', '1366*768'],
      // 多媒体设备/摄像头
      ['720p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙', 'Intel 9560 AC', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI', '2×USB 3.1Gen1，1×Type-C，1×Thunderbolt 3.0，HDMI，RJ45'],
      // 电池描述/电池
      ['4芯48WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad E14 Gen2',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-1135G7/16G/512G SSD/核显/14/FHD', '163'],
      ['I3-10110U/8G/256G SSD/核显/14/FHD', '103'],
      ['I3-1115G4/8G/256G SSD/核显/14/FHD', '88'],
      ['I5-10210U/8G/256G SSD/核显/14/FHD', '123'],
      ['I5-1135G7/8G/256G SSD/核显/14/FHD', '148'],
      ['I5-10210U/16G/512G SSD/核显/14/FHD', '138'],
      ['I7-1165G7/16G/512G SSD/MX450 2G独显/14/FHD', '218'],
      ['I7-10510U/16G/512G SSD/2G独显/14/FHD', '198'],
      ['I5-1135G7/16G/512G SSD/MX350 2G独显/14/FHD', '178'],
      ['I5-1135G7/16G/512G SSD/MX350 2G独显/14/FHD', '178']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E14 2021款', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['324*220*17.9mm', '约1.6kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i3', 'i3-1115G4', '3.0GHz/4.1GHz', '2核/4线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720p HD 摄像头，带ThinkShutter隐私开关'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.2模块', 'Intel Wi-Fi 6 AX201(Wi-Fi 2x2 802.11ax)', 'Gigabit Ethernet Connection, Realtek RTL8111H'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI', 'ThunderBolt4.0*1、USB 3.1 Gen1*1、USB 2.0*1、RJ45*1'],
      // 电池描述/电池
      ['锂聚合物电池45Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad L14',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-10210U/16G/256G SSD/R625 2G独显14/FHD', '95']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails1.png'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ProductDetails8.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'L14', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['331x235x20.4mm', '约1.6kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'I5-10210U', '1.6GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['独立显卡', '2G'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['有', '802.11ax', '10/100/1000Mbps'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI', 'USB3.0*2'],
      // 电池描述/电池
      ['45whr'],
      // 配件清单/电源适配器
      ['65W电源适配器']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('戴尔Dell 5400',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-8365U/8G/256G SSD/核显/14/FHD', '80']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/Dell/Dell_5400/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['戴尔Dell', 'Latitude 5400', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['323.05*216*19.6mm', '约1.52KG', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-8365U', '1.6/4.1GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ac', '10/100/1000Mbps'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI', 'USB 3.1*2，Type-c*1，RJ45*1，SD读卡器*1，电源接口*1'],
      // 电池描述/电池
      ['锂聚合物电池46Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad X13',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-10210U/8G/256G SSD/核显/13.3/FHD', '98'],
      ['I5-10210U/8G/256G SSD/核显/13.3/HD', '88'],
      ['I5-10210U/16G/512G SSD/核显/13.3/FHD', '123'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'X13', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['305.8 x 217.89 x 16.9mm', '约1.3Kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'I5-10210U', '1.6GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720pHD摄像头，带ThinkShutter隐私开关'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ac', 'Intel Wi-Fi 6 AX201(Wi-Fi 2x2 802.11ax)'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI', 'USB3.1*2；Type-C Gen 1*1；Thunderbolt 3*1；MicroSD card reade*1'],
      // 电池描述/电池
      ['6芯内置电池(48Wh)'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad X13',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-10210U/8G/256G SSD/核显/13.3/FHD', '98'],
      ['I5-10210U/8G/256G SSD/核显/13.3/HD', '88'],
      ['I5-10210U/16G/512G SSD/核显/13.3/FHD', '123'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'X13', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['305.8x217.89x16.9mm', '约1.3Kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-10210u', '1.6GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.3英寸', '1366*768'],
      // 多媒体设备/摄像头
      ['720pHD摄像头，带ThinkShutter隐私开关'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙', '支持802.11ac', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI', '2×USB 3.1Gen1，1×Type-C，1×Thunderbolt 3.0，HDMI，SD读卡器'],
      // 电池描述/电池
      ['6芯48WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad T14',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-10210U/16G/256G SSD/核显/14/FHD', '99']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails2.png'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ProductDetails7.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'T14', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['329x227x17.9mm', '约1.46KG', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-10210u', '1.6GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720pHD摄像头，带ThinkShutter隐私开关'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['内置蓝牙', 'WiFi 6', '10/100/1000Mbps'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳耳麦二合一接口*1', 'HDMI*1', 'Type-C，Thunderbolt 3，USB3.1*2，RJ45，Micro SD读卡器插槽，安全锁孔'],
      // 电池描述/电池
      ['50whr'],
      // 配件清单/电源适配器
      ['65W电源适配器']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('联想Lenovo 扬天S14',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper2.png'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper3.png'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper4.png')
    ],
    // 可选配置
    [
      ['I5-1155G7/16G/512G SSD/核显/14/FHD', '135'],
      ['I5-1155G7/8G/512G SSD/核显/14/FHD', '108']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/ProductDetails7.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['联想', '扬天S14', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['324*215*17.9mm', '约1.5kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-1155G7', '2.5/4.5GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080 45%NTSC'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', 'WiFi 6', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳耳麦二合一接口*1', 'HDMI*1', 'USB 2.0*1；USB3.0*1；Type-C*1 ；SD读卡器；电源接口'],
      // 电池描述/电池
      ['45Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 440G8',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper4.png'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper5.jpg'),
    ],
    // 可选配置
    [
      ['I5-1135G7/16G/512G SSD/核显/14/FHD', '113'],
      ['I7-1165G7/16G/512G SSD/MX450 2G独显/14/FHD', '203'],
      ['I5-1135G7/16G/512G SSD/核显/14/FHD', '143'],
      ['I5-1135G7/8G/256G SSD/核显/14/FHD', '128']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G8/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', 'Probook 440 G8', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['32.19 x 21.39 x 1.99 cm', '约1.38kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-1135G7', '2.4GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ac', '10/100/1000Mbps网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳耳麦二合一接口*1', 'HDMI*1', 'USB 3.1 GEN 1*3，TYPE-C*接口*1，RJ45网络接口*1，SD读卡器*1，电源接口*1'],
      // 电池描述/电池
      ['锂聚合物电池 45Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 430G8',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-1135G7/16G/512G SSD/核显/13.3/FHD', '143'],
      ['I5-1135G7/8G/256G SSD/核显/13.3/FHD', '113'],
      ['I7-1165G7/16G/512G SSD/核显/13.3/FHD', '193']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_430G8/ProductDetails5.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', 'ProBook 430 G8', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['薄至17.7mm', '约1.36kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['I5-11代', 'I5-1135G7', '2.4GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.3英寸', '1920*1080，250尼特'],
      // 多媒体设备/摄像头
      ['HD 720p RGB 88°广角摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙® 5', '英特尔® AX201 Wi-Fi 6 (2x2)', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳耳麦二合一接口*1', 'HDMI*1', 'USB 3.1 Gen1*2、USB-C 3.1 Gen2*1、Micro SD读卡器*1'],
      // 电池描述/电池
      ['快速充电的3芯45WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 440G7',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper4.png'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['I5-10210U/8G/256G SSD/核显/14/FHD', '99'],
      ['I5-10210U/16G/1T/256G SSD/核显/14/FHD', '138']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G7/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', '440G7', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['17.95mm厚', '约 1.6 kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['I5-10代', 'I5-10210U', '2.4GHz/4.2GHz', '4核/8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['机械+固态硬盘', '1T 机械硬盘+256G 固态硬盘'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['HD 720p RGB 88°广角摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙功能', '802.11ac', '10/100/1000Mbps有线网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风二合一接口', 'HDMI接口', '2*USB3.1， 1*USB3.0，1*USB Type-C接口，HDMI接口，耳机/麦克风二合一接口，RJ45（网络接口），电源接口，SD读卡器'],
      // 电池描述/电池
      ['快速充电的3芯45WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普 840G7',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I7-10510U/16G/512G SSD/核显/银/14/FHD', '123']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_840G7/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', '840G7', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['17.95mm厚', '约 1.6 kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['I7-10代', 'I7-10510U', '2.4GHz/4.2GHz', '6核/12线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['HD 720p RGB 88°广角摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙功能', '802.11ac', '10/100/1000Mbps有线网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风二合一接口', 'HDMI接口', '2*USB3.1， 1*USB3.0，1*USB Type-C接口，HDMI接口，耳机/麦克风二合一接口，RJ45（网络接口），电源接口，SD读卡器'],
      // 电池描述/电池
      ['快速充电的3芯45WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 240R G9',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-1335U/8G/512G SSD/核显/14/FHD', '148'],
      ['I5-1335U/16G/512G SSD/核显/14/FHD', '158'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_240R_G9/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', '240RG9', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['324*226*19mm', '约1.47kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿i5', 'i5-1335U', '3.4GHz/4.6GHz', '十核/十二线程'],
      // 内存/内存类型/容量
      ['DDR4 3200MHz', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['FHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙® 5.3', 'Wi-Fi 6 802.11a/b/g/n/ax', '1000Mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI*1', 'USB Type-A 3.2 Gen1*2；USB Type-C 3.2 Gen2*1（USB 充电、DP）；RJ-45*1；交流电源接口*1'],
      // 电池描述/电池
      ['41WHr'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad E14 Gen4',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I5-1240P/16G/256G SSD*2/核显/14/FHD', '178']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails8.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails9.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ProductDetails10.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E14 Gen4', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['324*220*17.9mm', '约1.6kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿i5', 'i5-1240P', '1.7GHz/4.4GHz', '12核16线程'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G*2'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['高清摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙® 5.3', 'WIFI 6E', '1000Mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI 2.0*1', 'Thunderbolt 4*1、USB 3.2Gen1*1、USB 2.0*1、RJ45*1'],
      // 电池描述/电池
      ['57Wh'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('惠普HP 440G10',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I5-1340P/8G/512G SSD/核显/14/FHD', '158'],
      ['I5-1340P/16G/512G SSD/核显/14/FHD', '198'],
      ['I7-1355U/16G/512G SSD/核显/14/FHD', '248'],
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/HP/HP_440G10/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['惠普', 'HP Probook 440G10', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['321.9*213.9*19.9mm', '约1.38kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿i5', 'i5-1340P', '1.9GHz/4.6GHz', '12核16线程'],
      // 内存/内存类型/容量
      ['DDR4-3200MHz', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '1920*1080 45%NTSC'],
      // 多媒体设备/摄像头
      ['720p 高清摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.3模块', '英特尔 Wi-Fi 6E AX (2x2)', '10/100/1000M GbE 网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳麦二合一接口*1', 'HDMI *1', 'USB 3.2 Gen1*2（1 个支持关机充电）；USB Type-C® 3.2 Gen2*2（USB 充电、DisplayPort™ 2.1），RJ45网络接口*1 ，电源接口*1'],
      // 电池描述/电池
      ['51Wh聚合物电池'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple MacBook Pro 2019',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['I5-8代 2.4GHz/8G/256G SSD/核显/深空灰/13.3/2K/Touch Bar', '178']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'MacBook MV962CH/A', 'MacOS'],
      // 外观尺寸/尺寸/重量/颜色
      ['304.1x212.4x15.6mm', '约1.4Kg', '深空灰色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿i5', 'i5-8259U', '2.4GHz/4.1Hz', '4核8线程'],
      // 内存/内存类型/容量
      ['DDR3', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.3英寸', '2560x1600'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '支持802.11a/b/g/n/ac无线协议', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI *1', '4×Thunderbolt3接口'],
      // 电池描述/电池
      ['内置58.0瓦时锂聚合物电池'],
      // 配件清单/电源适配器
      ['次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple MacBook Pro 2020',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper5.jpg')

    ],
    // 可选配置
    [
      ['I5-10代 2.0GHz/16G/512G SSD/核显/深空灰/13.3/2K/Touch Bar', '198']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'MacBook Pro MWP42CH/A 2020年', 'MacOS'],
      // 外观尺寸/尺寸/重量/颜色
      ['304.1x212.4x15.6mm', '约1.4Kg', '深空灰色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿i5', 'i5-10', '2.0GHz/3.8Hz', '4核8线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.3英寸', '2560x1600 视网膜显示屏'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ac Wi-Fi 无线网络', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', '四个雷雳 3 (USB-C) 端口', ''],
      // 电池描述/电池
      ['内置58.0瓦时锂聚合物电池'],
      // 配件清单/电源适配器
      ['61W USB‑C 电源适配器，USB-C 充电线']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad E14 Gen5',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper1.png'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper2.png'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper3.png')
    ],
    // 可选配置
    [
      ['I5-1340P/16G/512G SSD/核显/14/FHD', '208'],
      ['I5-1340P/8G/512G SSD/核显/14/FHD', '198'],
      ['I7-13700H/16G/512G SSD/核显/14/FHD', '378']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails8.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails9.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails10.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails11.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails12.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ProductDetails13.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'E14 Gen5 2023款', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['313*220*17.9mm', '约1.53kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'I5-1340PH', '2.0GHz/3.8Hz', '8核16线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14英寸', '	1920*1200'],
      // 多媒体设备/摄像头
      ['720pHD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', 'Intel Wi-Fi 6 AX201(Wi-Fi 2x2 802.11ax)', '有'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机/麦克风两用接口', 'HDMI2.1*1', 'USB2.0*1;USB3.2 Gen1*1;USB-C 3.2 Gen2*1；Thunderbolt 4*1；RJ45*1'],
      // 电池描述/电池
      ['锂聚合物电池57Whr'],
      // 配件清单/电源适配器
      ['全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple Macbook Air 2023',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['M3 8核中央处理器/16G/512G SSD/10核图形处理器/深空灰/13.6/2K', '398']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'MXCR3CH/A', 'Mac OS'],
      // 外观尺寸/尺寸/重量/颜色
      ['11.3*304.1*215mm', '1.24kg', '深空灰色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Apple M3', 'Apple M3', '', '8核中央处理器'],
      // 内存/内存类型/容量
      ['板载', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['13.6英寸', '2560X1664'],
      // 多媒体设备/摄像头
      ['1080p FaceTime 高清摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙5.30无线技术', '802.11ax（WiFi6E)', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['3.5毫米耳机插孔', '雷雳4(USB-C）端口*2', 'MagSafe3充电端口*1'],
      // 电池描述/电池
      ['52.6 瓦时锂聚合物电池'],
      // 配件清单/电源适配器
      ['35W USB-C 电源适配器']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('ThinkPad P16v',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['I7-13700H/16G/512G SSD/RTXA500 4G独显/16/FHD', '458']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails4.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails5.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails6.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails7.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails8.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails9.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails10.jpg'),
    $rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ProductDetails11.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['ThinkPad', 'P16v', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['365*261.92 *24.66mm', '约2.2kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i7', 'i7-13700H', '3.7GHz/5.0GHz', '14核/20线程'],
      // 内存/内存类型/容量
      ['DDR5-5200MHz', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['RTX A500独立显卡', '4G'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['16英寸', '2560X1664'],
      // 多媒体设备/摄像头
      ['1080p摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', 'wifi 6E', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['3.5毫米耳机插孔', 'HDMI 2.1', '2x USB 3.2 Gen 1，2×Thunderbolt 4，SD读卡器（支持SD Express 7.0）'],
      // 电池描述/电池
      ['90Wh'],
      // 配件清单/电源适配器
      ['全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple MacBook Pro 2024',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper5.jpg')
    ],
    // 可选配置
    [
      ['M4 10核中央处理器/16G/512G SSD/10核图形处理器/银色/14.2/3K', '498']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'MW2W3CH/A', 'Mac OS'],
      // 外观尺寸/尺寸/重量/颜色
      ['15.5*221.2*312.6mm', '1.55kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Apple M4', 'Apple M4', '', '10核中央处理器'],
      // 内存/内存类型/容量
      ['板载', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡 10核图形处理器', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14.2英寸', '3024X1964'],
      // 多媒体设备/摄像头
      ['12MP Center Stage 摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙5.30无线技术', '802.11ax（WiFi6E)', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['3.5毫米耳机插孔', '雷雳4(USB-C）端口*3、HDMI端口*1', 'MagSafe3充电端口*1、SDXC卡插槽*1'],
      // 电池描述/电池
      ['72.4 瓦时锂聚合物电池'],
      // 配件清单/电源适配器
      ['70W USB-C 电源适配器']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('华为笔记本 MateBook X Pro 2024',
    // 轮播图
    [
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper1.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper2.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper3.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper4.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper5.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper6.jpg')
    ],
    // 可选配置
    [
      ['Ultra7-155H/16G/1T SSD/核显/黑色/14.2/3K', '578']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/ProductDetails3.jpg'),
    $rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/ProductDetails4.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['华为', 'MateBook X Pro 2024', 'Win11家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['310mm×222mm×13.5mm', '约0.98kg', '砚黑'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Core Ultra', 'Core Ultra7 155H', '1.4 GHz/4.8 GHz', '16核22线程'],
      // 内存/内存类型/容量
      ['板载 LPDDR5X 频率：6400MT/s', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '1T'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['14.2英寸', '3120*2080'],
      // 多媒体设备/摄像头
      ['1080P摄像头带摄像头隐私开关'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙5.3', 'Wi-Fi 6', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['无', 'ThunderboltTM4 接口*2', '全功能USB-C 接口*1（支持传输数据、充电和DisplayPort）'],
      // 电池描述/电池
      ['70WH'],
      // 配件清单/电源适配器
      ['全新*1']
    ]
  ),

]