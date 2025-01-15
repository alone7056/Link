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
]