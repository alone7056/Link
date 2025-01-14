import { equipmentSynopsis } from '../model/EquipmentSynopsis'
import { deviceDetails } from '../model/EquipmentClass'

// 商城页面
// 首选办公
export const OfficePreferredArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14.jpg'), 'ThinkPad E14', 'ThinkPad E14', 'i3-11/8G/256G/核显/14', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/Link.jpg'), 'Link-R S2000', 'Link-R S2000', 'i9-14/32G/2048G/独显/27', 648, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/HP_440G7.jpg'), '惠普 440G7', '惠普 440G7', 'i5-10/8G/256G/核显/14', 118, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/DE_CM3980.jpg'), '戴尔 成铭3980', '戴尔 成铭3980', 'i3-8/8G/256G/核显/21.4', 95, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E480.jpg'), 'ThinkPad E480', 'ThinkPad E480', 'i3-7/8G/256G/核显/14', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14Gen1.jpg'), 'ThinkPad E14Gen1', 'ThinkPad E14Gen1', 'i3-10/8G/256G/核显/14', 103, 'Laptop')
]

// 便携办公
export const OfficePortableArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/HP_440G7.jpg'), '惠普 430G8', '惠普 430G8', 'i5-11/8G/256G/核显/13.3', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/DE_CM3980.jpg'), 'ThinkPad X390', 'ThinkPad X390', 'i5-10/8G/256G/核显/13.3', 123, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_X13.jpg'), 'ThinkPad X13', 'ThinkPad X13', 'i5-10/8G/256G/核显/13.3', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_X13.jpg'), 'ThinkPad X13', 'ThinkPad X13', 'i5-10/8G/256G/核显/13.3', 153, 'Laptop')
]

// 技术开发
export const OfficeTechnologyArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/HP_400G9_SFFR.jpg'), '惠普 H400G9 SFF R', '惠普 H400G9 SFF R', 'i5-13/16G/512G/核显/23.8', 158, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E141.jpg'), 'ThinkPad E14', 'ThinkPad E14', 'i5-13/8G/512G/核显/14', 208, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14_Gen4.jpg'), 'ThinkPad E14 Gen4', 'ThinkPad E14 Gen4', 'i5-12/16G/256G * 2/核显/14', 178, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/HP_288G9.jpg'), '惠普 288G9', '惠普 288G9', 'i5-12/8G/256G/核显/21.5', 128, 'Desktop')
]

// 图形处理
export const OfficeGraphicsArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14_Gen5.jpg'), 'ThinkPad E14 Gen5', 'ThinkPad E14 Gen5', 'i7-13/16/512G/核显/14', 256, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_P16V.jpg'), 'ThinkPad P16V', 'ThinkPad P16V', 'i7-13/16G/512G/4G独显/16', 458, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/HP_288G9TX.jpg'), '惠普 88G9TX', '惠普 88G9TX', 'i5-12/16G/1T+256G/4G独显/24英寸显示器', 208, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/HP_Z2_G9_Gen2.jpg'), '惠普 Z2 G9 Gen2', '惠普 Z2 G9 Gen2', 'i7-13700K/32G/1T SSD/RTX 4070/27', 518, 'Desktop')
]


// 分类页面
// 综合推荐
export const synthesisRecommend: equipmentSynopsis[] = [

// 显示器
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2', '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H', '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB', '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H', '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8', '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'), '飞利浦Philips 27B2N2100', '飞利浦Philips 27B2N2100 27英寸显示器租赁', '27/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),

  // 笔记本
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper1.jpg'), 'ThinkPad E490', 'ThinkPad E490 14英寸笔记本电脑', 'I3-8145U/8G/256G SSD/核显/14/HD', 65, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper1.jpg'), 'ThinkPad E14 Gen1', 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 'I3-10110U/8G/256G SSD/核显/14/FHD', 78, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper1.jpg'), 'ThinkPad E480', 'ThinkPad E480 14英寸笔记本电脑', 'I3-7020U/8G/256G SSD/核显/14/HD', 60, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper1.jpg'), 'ThinkPad E14', 'ThinkPad E14 Gen2 14英寸笔记本电脑租赁', 'I3-1115G4/8G/256G SSD/核显/14/FHD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper1.jpg'), 'ThinkPad L14', 'ThinkPad L14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/R625 2G独显14/FHD', 95, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper1.jpg'), '戴尔Dell 5400', '戴尔Dell 5400 笔记本电脑租赁', 'I5-8365U/8G/256G SSD/核显/14/FHD', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg'), 'ThinkPad X390', 'ThinkPad X390 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'), 'ThinkPad X13', 'ThinkPad X13 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'), 'ThinkPad T14', '【新客特价】ThinkPad T14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'), '联想Lenovo 扬天S14', '联想Lenovo 扬天S14 笔记本电脑租赁', 'I5-1155G7/8G/512G SSD/核显/14/FHD', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'), '惠普HP 440G8', '惠普HP 440G8 14英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/14/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'), '惠普HP 430G8', '惠普HP 430G8 13.3英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/13.3/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'), '惠普HP 440G7', '惠普HP 440G7 14英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/14/FHD', 99, 'Laptop'),

  // 台式机
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 63, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper2.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', 71, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.jpg'), '联想Lenovo E96X', '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/联想T2055 20英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper3.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4930/8G/120G SSD/核显/戴尔 E2219HN 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4', '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V202B 19.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.png'), '联想Lenovo E96X', '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 78, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper2.jpg'), '惠普HP 288G4', '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V220 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 台式机租赁', 'I3-9100/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 80, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT', '戴尔Dell 3967MT 台式机电脑租赁', 'I5-6500/8G/256G SSD/核显/戴尔E2219HN 21.5英寸显示器', 80, 'Desktop'),

  // 打印机
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper1.jpg'), '爱普生 L6468', '爱普生 L6468 彩色喷墨打印机 文印产品租赁', '含每月2000张黑白打印量，100张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 99, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper1.jpg'), '爱普生打印机 WF-M5799a', '爱普生打印机 WF-M5799a', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper1.jpg'), '佳能 LBP222dn', '佳能 LBP222dn 黑白激光打印机 文印产品租赁', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF-C5890A/APS_WF-C5890A_Swiper1.jpg'), '爱普生 WF-C5890a', '爱普生 WF-C5890a 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 228, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L15168/APS_L15168_Swiper1.jpg'), '爱普生 L15168', '爱普生 L15168 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 266, 'printer'),

  // 会议大屏
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper1.jpg'), 'Newline TC 65', 'Newline TC 65 65英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/65英寸/3840*2160/含ROOMS基础账号', 558, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper1.jpg'), 'Newline FLEX Max Pro', 'Newline FLEX Max Pro 43英寸会议大屏租赁', '搭配腾讯会议Rooms(1年)/4G/32G SSD/Newline OS 3/43英寸/3840*2160', 599, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper.jpg'), 'Newline TT-NC65GA2', 'Newline TT-NC65GA2 65英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/65英寸/3840*2160/含Rooms高级账号', 688, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper1.jpg'), 'Newline TC 86', 'Newline TC 86 86英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/86英寸/3840*2160/含ROOMS基础账号', 808, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper1.jpg'), 'Newline TT-NC75GA2', 'Newline TT-NC75GA2 75英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/75英寸/3840*2160/含Rooms高级账号', 888, 'conferenceScreen'),

  // 一体机
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D22', 'Link D22 21.5英寸一体机电脑', 'i5-12400/16G/512G SSD/核显/21.5/FHD', 118, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac 2021', '【特价】苹果Apple iMac 24英寸一体机电脑 2021款 MGTF3CH/A', 'M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/4.5K', 288, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac2024', '苹果Apple iMac 24英寸一体机电脑租赁 2024款 Z1E2', 'M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', 538, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D23', 'Link D23 23.9英寸一体机电脑', 'i5-13600K/32G/1T SSD/核显/23.9/HD', 225, 'allInOneMachine'),

  // 单主机
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', 'G4900/8G/240G SSD/核显', 48, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'), '联想Lenovo E96X', '联想Lenovo E96X 单主机电脑租赁', '4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4', '惠普HP 288G4 单主机电脑租赁', 'G4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT', '戴尔Dell 3967MT 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 65, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97', '联想Lenovo E97 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'), '联想Lenovo E98', '联想Lenovo E98 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3', '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'), '戴尔Dell 成铭3991', '戴尔Dell 成铭3991 单主机电脑租赁', 'I3-10100/8G/256G SSD/核显', 88, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6', '惠普HP 288G6 单主机电脑租赁', 'I5-10500/8G/256G SSD/核显', 103, 'AllInOneMachine'),
]

// 笔记本分类
export const LaptopClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper1.jpg'), 'ThinkPad E490', 'ThinkPad E490 14英寸笔记本电脑', 'I3-8145U/8G/256G SSD/核显/14/HD', 65, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper1.jpg'), 'ThinkPad E14 Gen1', 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 'I3-10110U/8G/256G SSD/核显/14/FHD', 78, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper1.jpg'), 'ThinkPad E480', 'ThinkPad E480 14英寸笔记本电脑', 'I3-7020U/8G/256G SSD/核显/14/HD', 60, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper1.jpg'), 'ThinkPad E14', 'ThinkPad E14 Gen2 14英寸笔记本电脑租赁', 'I3-1115G4/8G/256G SSD/核显/14/FHD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper1.jpg'), 'ThinkPad L14', 'ThinkPad L14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/R625 2G独显14/FHD', 95, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper1.jpg'), '戴尔Dell 5400', '戴尔Dell 5400 笔记本电脑租赁', 'I5-8365U/8G/256G SSD/核显/14/FHD', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg'), 'ThinkPad X390', 'ThinkPad X390 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'), 'ThinkPad X13', 'ThinkPad X13 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'), 'ThinkPad T14', '【新客特价】ThinkPad T14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'), '联想Lenovo 扬天S14', '联想Lenovo 扬天S14 笔记本电脑租赁', 'I5-1155G7/8G/512G SSD/核显/14/FHD', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'), '惠普HP 440G8', '惠普HP 440G8 14英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/14/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'), '惠普HP 430G8', '惠普HP 430G8 13.3英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/13.3/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'), '惠普HP 440G7', '惠普HP 440G7 14英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/14/FHD', 99, 'Laptop'),

  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper1.jpg'), '惠普 840G7', '【新客特价】惠普 840G7 14英寸笔记本电脑租赁', 'I7-10510U/16G/512G SSD/核显/银/14/FHD', 123, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper1.jpg'), '惠普HP 240R G9', '惠普HP 240R G9 14英寸笔记本电脑租赁', 'I5-1335U/8G/512G SSD/核显/14/FHD', 148, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper1.jpg'), 'ThinkPad E14 Gen4', 'ThinkPad E14 Gen4 14英寸笔记本电脑租赁', 'I5-1240P/16G/256G SSD*2/核显/14/FHD', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper1.jpg'), '惠普HP 440G10', '惠普HP 440G10 14英寸笔记本电脑租赁', 'I5-1340P/8G/512G SSD/核显/14/FHD', 158, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper1.jpg'), '苹果Apple MacBook Pro 2019', '【特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑 2019款 MV962CH/A', 'I5-8代 2.4GHz/8G/256G SSD/核显/深空灰/13.3/2K/Touch Bar', 178, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper1.jpg'), '苹果Apple MacBook Pro 2020', '【新客特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑租赁 2020款 MWP42CH/A', 'I5-10代 2.0GHz/16G/512G SSD/核显/深空灰/13.3/2K/Touch Bar', 198, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper1.png'), 'ThinkPad E14 Gen5', 'ThinkPad E14 Gen5 14英寸笔记本电脑租赁', 'I5-1340P/16G/512G SSD/核显/14/FHD', 208, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper1.jpg'), '苹果Apple Macbook Air 2023', '苹果Apple Macbook Air 13.6英寸笔记本电脑租赁 2023款 MXCR3CH/A', 'M3 8核中央处理器/16G/512G SSD/10核图形处理器/深空灰/13.6/2K', 398, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper1.jpg'), 'ThinkPad P16v', 'ThinkPad P16v 16英寸笔记本电脑租赁', 'I7-13700H/16G/512G SSD/RTXA500 4G独显/16/FHD', 458, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper1.jpg'), '苹果Apple MacBook Pro 2024', '苹果Apple MacBook Pro 14.2英寸笔记本电脑租赁 2024款 MW2W3CH/A', 'M4 10核中央处理器/16G/512G SSD/10核图形处理器/银色/14.2/3K', 498, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper1.jpg'), '华为笔记本 MateBook X Pro 2024', '华为笔记本 MateBook X Pro 2024', 'Ultra7-155H/16G/1T SSD/核显/黑色/14.2/3K', 578, 'Laptop'),

]

// 台式机分类
export const DesktopClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 63, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper2.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', 71, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.jpg'), '联想Lenovo E96X', '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/联想T2055 20英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper3.jpg'), 'Link S20', 'Link S20 台式机租赁', 'G4930/8G/120G SSD/核显/戴尔 E2219HN 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4', '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V202B 19.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.png'), '联想Lenovo E96X', '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 78, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper2.jpg'), '惠普HP 288G4', '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V220 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 台式机租赁', 'I3-9100/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 80, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT', '戴尔Dell 3967MT 台式机电脑租赁', 'I5-6500/8G/256G SSD/核显/戴尔E2219HN 21.5英寸显示器', 80, 'Desktop'),

  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E98/Lenove_E98_Swiper1.jpg'), '联想Lenovo E98', '联想Lenovo E98 台式机电脑租赁', 'G5905/8G/256G SSD/核显/联想T2055 20英寸显示器', 83, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97', '联想Lenovo E97 台式机电脑租赁', 'G5905/8G/256G SSD/核显/飞利浦203V5LSB2 20英寸显示器', 83, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E97/Lenove_E97_Swiper2.jpg'), '联想Lenovo E97', '联想Lenovo E97 台式机电脑租赁', 'G5905双核/8G/256G SSD/核显/飞利浦223V5LSB 21.5英寸显示器', 88, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3', '惠普HP 680G3 台式机电脑租赁', 'I5-6/8G/256G SSD/核显/联想T2224R 21.5英寸显示器', 98, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6', '惠普HP 288G6 台式机电脑租赁', 'I3-10100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 103, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G9/HP_288G9_Swiper1.jpg'), '惠普HP 288G9', '惠普HP 288G9 台式机电脑租赁', 'I3-12100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 123, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_400G9/HP_400G9_Swiper1.jpg'), '惠普HP 400G9 SFF R', '惠普HP 400G9 SFF R台式机电脑租赁', 'I5-13500/8G/512G SSD/核显/WIFI6+BT5.3/飞利浦24B2N2100 23.8英寸显示器', 158, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_M930T/Lenove_M930T_Swiper2.png'), '联想Lenovo M930t', '联想Lenovo M930t 台式机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显/惠普M2256 21.5英寸显示器', 163, 'Desktop'),

]

// 一体机分类
export const allInOneMachineClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D22', 'Link D22 21.5英寸一体机电脑', 'i5-12400/16G/512G SSD/核显/21.5/FHD', 118, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac 2021', '【特价】苹果Apple iMac 24英寸一体机电脑 2021款 MGTF3CH/A', 'M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/4.5K', 288, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac 2024', '苹果Apple iMac 24英寸一体机电脑租赁 2024款 Z1E2', 'M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', 538, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D23', 'Link D23 23.9英寸一体机电脑', 'i5-13600K/32G/1T SSD/核显/23.9/HD', 225, 'allInOneMachine'),
]

// 显示器分类
export const DisplayClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2', '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H', '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB', '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H', '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8', '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'), '飞利浦Philips 27B2N2100', '飞利浦Philips 27B2N2100 27英寸显示器租赁', '27/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),

  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2', '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H', '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB', '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H', '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8', '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'), '飞利浦Philips 27B2N2100', '飞利浦Philips 27B2N2100 27英寸显示器租赁', '27/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100', '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456', '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
]

// 会议大屏分类
export const conferenceScreenClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper1.jpg'), 'Newline TC 65', 'Newline TC 65 65英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/65英寸/3840*2160/含ROOMS基础账号', 558, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper1.jpg'), 'Newline FLEX Max Pro', 'Newline FLEX Max Pro 43英寸会议大屏租赁', '搭配腾讯会议Rooms(1年)/4G/32G SSD/Newline OS 3/43英寸/3840*2160', 599, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper.jpg'), 'Newline TT-NC65GA2', 'Newline TT-NC65GA2 65英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/65英寸/3840*2160/含Rooms高级账号', 688, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper1.jpg'), 'Newline TC 86', 'Newline TC 86 86英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/86英寸/3840*2160/含ROOMS基础账号', 808, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper1.jpg'), 'Newline TT-NC75GA2', 'Newline TT-NC75GA2 75英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/75英寸/3840*2160/含Rooms高级账号', 888, 'conferenceScreen'),
]

// 打印机分类
export const printerClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper1.jpg'), '爱普生 L6468', '爱普生 L6468 彩色喷墨打印机 文印产品租赁', '含每月2000张黑白打印量，100张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 99, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper1.jpg'), '爱普生打印机 WF-M5799a', '爱普生打印机 WF-M5799a', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper1.jpg'), '佳能 LBP222dn', '佳能 LBP222dn 黑白激光打印机 文印产品租赁', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF-C5890A/APS_WF-C5890A_Swiper1.jpg'), '爱普生 WF-C5890a', '爱普生 WF-C5890a 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 228, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L15168/APS_L15168_Swiper1.jpg'), '爱普生 L15168', '爱普生 L15168 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 266, 'printer'),
]

// 单主机分类
export const singleHostClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', 'G4900/8G/240G SSD/核显', 48, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'), '联想Lenovo E96X', '联想Lenovo E96X 单主机电脑租赁', '4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4', '惠普HP 288G4 单主机电脑租赁', 'G4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT', '戴尔Dell 3967MT 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 65, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97', '联想Lenovo E97 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'), '联想Lenovo E98', '联想Lenovo E98 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3', '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'), '戴尔Dell 成铭3991', '戴尔Dell 成铭3991 单主机电脑租赁', 'I3-10100/8G/256G SSD/核显', 88, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6', '惠普HP 288G6 单主机电脑租赁', 'I5-10500/8G/256G SSD/核显', 103, 'AllInOneMachine'),

  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3', '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper1.jpg'), '惠普HP 400G9', '惠普HP 400G9 SFF R单主机电脑租赁', 'I3-13100/8G/512G SSD/核显/WIFI6+BT5.3', 108, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper1.jpg'), '惠普HP 288G9', '惠普HP 288G9 单主机电脑租赁', 'I3-12100/8G/256G SSD/核显', 93, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper1.jpg'), '惠普HP Z2G9', '惠普HP Z2G9 Gen2 工作站租赁', 'I7-13700K/32G/1T SSD/RTX4060 8G独显', 483, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t', '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t', '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper1.jpg'), '惠普HP Z2G9 Gen2', '惠普HP Z2G9 Gen2 工作站租赁', 'I7-13700K/32G/1T SSD/RTX4060 8G独显', 483, 'AllInOneMachine'),

  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', 'G4900/8G/240G SSD/核显', 48, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'), '联想Lenovo E96X', '联想Lenovo E96X 单主机电脑租赁', '4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4', '惠普HP 288G4 单主机电脑租赁', 'G4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT', '戴尔Dell 3967MT 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 65, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97', '联想Lenovo E97 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'), '联想Lenovo E98', '联想Lenovo E98 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3', '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20', 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'), '戴尔Dell 成铭3991', '戴尔Dell 成铭3991 单主机电脑租赁', 'I3-10100/8G/256G SSD/核显', 88, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6', '惠普HP 288G6 单主机电脑租赁', 'I5-10500/8G/256G SSD/核显', 103, 'AllInOneMachine'),

]





// 笔记本电脑参数信息
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

]

// 显示器参数信息
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

// 台式机参数信息
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
]


// 一体机参数信息
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

// 会议大屏幕参数信息
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
]










