// 打印机参数信息
import { deviceDetails } from '../model/EquipmentClass'

export const printerParameterInformation: string[][] = [
  ['基本信息', '品牌', '型号', '打印类型'],
  ['外观尺寸', '外观尺寸','重量', '最大幅面'],
  ['打印功能', '分辨率', '打印速度'],
  ['复印能力', '复印分辨率', '最大复印页数'],
  ['扫描功能', '扫描类型', '扫描分辨率'],
  ['配件清单', '电源线', '打印机数据线', '传真线']
]

export const printerDetails: deviceDetails[] = [
  // 设备名称ID标识
  new deviceDetails('爱普生 L6468',
    // 轮播图
    [
    $rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper1.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper2.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper3.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper4.jpg')
    ],
    // 可选配置
    [['含每月2000张黑白打印量，100张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', '99']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Printer/APS/APS_L6468/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_L6468/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_L6468/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // ['基本信息', '品牌', '型号', '打印类型'],
      ['爱普生', 'L6468', 'A4彩色商用墨仓式数码多功能一体机'],
      // ['外观尺寸', '外观尺寸','重量', '最大幅面'],
      ['375x347x346mm', '7.3KG', 'A4'],
      // ['打印功能', '分辨率', '打印速度'],
      ['标准600 x 300 dpi', '黑白17页/分钟，彩色9.5页/分钟'],
      // ['复印能力', '复印分辨率', '最大复印页数'],
      ['600 x 600 dpi', '99'],
      // ['扫描功能', '扫描类型', '扫描分辨率'],
      ['平板彩色图像扫描仪', '最大1200 x 2400 dpi'],
      // ['配件清单', '电源线', '打印机数据线', '传真线']
      ['全新*1', '全新*1', '全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('爱普生打印机 WF-M5799a',
    // 轮播图
    [
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper1.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper2.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper3.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper4.jpg')
    ],
    // 可选配置
    [['含每月2000张黑白打印量，超印部分黑白0.04元/张', '158']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/ProductDetails2.jpg'),
    $rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/ProductDetails3.jpg')
    ],
    // 详细参数
    [
    // ['基本信息', '品牌', '型号', '打印类型'],
      ['爱普生', 'WF-M5799a', 'A4黑白商用墨仓式打印机'],
      // ['外观尺寸', '外观尺寸','重量', '最大幅面'],
      ['425x535x357mm', '18.7KG', 'A4'],
      // ['打印功能', '分辨率', '打印速度'],
      ['1200*1200dpi', '34页/分钟经济模式，24页/分钟标准模式'],
      // ['复印能力', '复印分辨率', '最大复印页数'],
      ['1200 x 1200 dpi', '999'],
      // ['扫描功能', '扫描类型', '扫描分辨率'],
      ['平板彩色图像扫描仪，支持自动双面扫描（除了 A5, Legal）', '最大1200 x 2400 dpi'],
      // ['配件清单', '电源线', '打印机数据线', '传真线']
      ['全新*1', '全新*1', '全新*1']
    ]
  ),

  // 设备名称ID标识
  new deviceDetails('佳能 LBP222dn',
    // 轮播图
    [
    $rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper1.jpg'),
    $rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper2.jpg')
    ],
    // 可选配置
    [['含每月2000张黑白打印量，超印部分黑白0.04元/张', '158']],
    // 详情介绍图
    [
    $rawfile('ProductDetails/Printer/JN/JN_LBP222DN/ProductDetails1.jpg'),
    $rawfile('ProductDetails/Printer/JN/JN_LBP222DN/ProductDetails2.jpg')
    ],
    // 详细参数
    [
    // ['基本信息', '品牌', '型号', '打印类型'],
      ['佳能', 'LBP222DN', '黑白激光打印机'],
      // ['外观尺寸', '外观尺寸','重量', '最大幅面'],
      ['401×373×250mm', '约8.8KG', 'A4'],
      // ['打印功能', '分辨率', '打印速度'],
      ['1200*1200dpi', '33页/分钟 单面'],
      // ['复印能力', '复印分辨率', '最大复印页数'],
      ['1200 x 1200 dpi', '999'],
      // ['扫描功能', '扫描类型', '扫描分辨率'],
      ['平板彩色图像扫描仪，支持自动双面扫描（除了 A5, Legal）', '最大1200 x 2400 dpi'],
      // ['配件清单', '电源线', '打印机数据线', '传真线']
      ['全新*1', '全新*1', '全新*1']
    ]
  ),
]