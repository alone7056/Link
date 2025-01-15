// 一体机参数信息
import { deviceDetails } from '../model/EquipmentClass'
export const allInOneMachineParameterInformation: string[][] = [
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
  ['配件清单', '电源适配器', '键盘', '鼠标']
]

// 一体机详情
export const allInOneMachineDetails: deviceDetails[] = [
// 设备名称ID标识
  new deviceDetails('Link D22',
    // 轮播图
    [
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper2.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper3.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['双核G3930/8G/128G SSD/核显/21.5/FHD', '68'],
      ['i5-12400/16G/512G SSD/核显/21.5/FHD', '118']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/ProductDetails1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['Link', 'D22', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['52.8*45*17.5cm', '约4.7kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-12400', '2.5/4.2GHz', '6核/12线程'],
      // 内存/内存类型/容量
      ['DDR4', '16G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['21.5英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['720p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙4.2模块', '支持802.11 a/b/g/n无线协议', '1000Mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机插孔、麦克风插孔', '1个 DP端口', '4个 USB 3.0 端口；2个 USB 2.0 端口；前置3个USB 2.0 端口（可选）；1个RJ-45网络接口'],
      // 配件清单/电源适配器/键盘/鼠标
      ['次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple iMac 2021',
    // 轮播图
    [
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/Apple_iMac_24_Swiper1.jpg')
    ],
    // 可选配置
    [
      ['M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/4.5K', '288'],
      ['M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/3K', '238']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/ProductDetails1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/ProductDetails2.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'iMac MGTF3CH/A', 'Mac系统'],
      // 外观尺寸/尺寸/重量/颜色
      ['14.7*54.7*46.1cm', '约4.46kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['M1', 'Apple M1 芯片', '2.5/4.2GHz', '8核中央处理器 (4个性能核心和4个能效核心)'],
      // 内存/内存类型/容量
      ['DDR4', '8G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '256G'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['24英寸', '4480*2520'],
      // 多媒体设备/摄像头
      ['1080p FaceTime 高清摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['支持蓝牙5.0模块', '802.11ax Wi-Fi 6 无线网络', '无（可选配，定制项）'],
      // IO接口/音频接口/视频接口/其他接口
      ['3.5 毫米耳机插孔', '两个雷雳', 'USB 4 端口'],
      // 配件清单/电源适配器/键盘/鼠标
      ['次新*1', '次新*1', '次新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('苹果Apple iMac 2024',
    // 轮播图
    [
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper2.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper3.jpg')
    ],
    // 可选配置
    [
      ['M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', '598']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/ProductDetails1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/ProductDetails2.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['苹果', 'Z1E2', 'Mac OS'],
      // 外观尺寸/尺寸/重量/颜色
      ['547*461*147mm', '4.42kg', '银色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Apple M4', 'Apple M4', '', '8核中央处理器'],
      // 内存/内存类型/容量
      ['板载', '16'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '512G SSD'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['24英寸', '4480*2520'],
      // 多媒体设备/摄像头
      ['12MP Center Stage 摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙5.3', 'Wi-Fi 6E', '无'],
      // IO接口/音频接口/视频接口/其他接口
      ['3.5毫米耳机插孔', '雷雳/USB4端口端口*2', '无'],
      // 配件清单/电源适配器/键盘/鼠标
      ['143W USB-C 电源适配器', 'USB-C充电 无线妙控', 'USB-C充电 无线妙控']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('Link D23',
    // 轮播图
    [
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper2.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper3.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper4.jpg')
    ],
    // 可选配置
    [
      ['i5-13600K/32G/1T SSD/核显/23.9/HD', '225'],
      ['i7-13700K/32G/1T SSD/核显/23.9/HD', '258']
    ],
    // 详情介绍图
    [
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/ProductDetails1.jpg'),
    $rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // 基本信息/品牌/型号
      ['Link', 'D23', 'Win10家庭版'],
      // 外观尺寸/尺寸/重量/颜色
      ['52.8*45*17.5cm', '约4.7kg', '黑色'],
      // 处理器/CPU系列/CPU型号/主频睿频/核心线程
      ['Intel 酷睿 i5', 'i5-13600K', '2.8/5.1GHz', '10核/16线程'],
      // 内存/内存类型/容量
      ['DDR4', '32G'],
      // 硬盘/硬盘类型/硬盘容量
      ['固态硬盘', '1T'],
      // 显卡/显卡类型/显卡容量
      ['核芯显卡', '共享系统内存'],
      // 屏幕/屏幕尺寸/屏幕分辨率
      ['23.9英寸', '1920*1080'],
      // 多媒体设备/摄像头
      ['1080p HD摄像头'],
      // 网络通讯/内置蓝牙/无线网卡/有线网卡
      ['蓝牙5.2模块', '支持802.11 a/b/g/n无线协议', '1000Mbps以太网卡'],
      // IO接口/音频接口/视频接口/其他接口
      ['耳机插孔、麦克风插孔', '1个 DP端口', '4个 USB 3.0 端口；2个 USB 2.0 端口；前置3个USB 2.0 端口（可选）；1个RJ-45网络接口'],
      // 配件清单/电源适配器/键盘/鼠标
      ['次新*1', '次新*1', '次新*1']
    ]
  ),
]