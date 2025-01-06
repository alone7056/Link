import { equipmentSynopsis } from '../model/EquipmentSynopsis'

// 商城页面
// 首选办公
export const OfficePreferredArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14.jpg'), 'ThinkPad_E14', 'i3-11/8G/256G/核显/14', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/Link.jpg'), 'Link-R S2000', 'i9-14/32G/2048G/独显/27', 648, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/HP_440G7.jpg'), '惠普 440G7', 'i5-10/8G/256G/核显/14', 118, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/DE_CM3980.jpg'), '戴尔 成铭3980', 'i3-8/8G/256G/核显/21.4', 95, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E480.jpg'), 'ThinkPad_E480', 'i3-7/8G/256G/核显/14', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14Gen1.jpg'), 'ThinkPad_E14Gen1', 'i3-10/8G/256G/核显/14', 103, 'Laptop')
]

// 便携办公
export const OfficePortableArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/HP_440G7.jpg'), '惠普 430G8', 'i5-11/8G/256G/核显/13.3', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/DE_CM3980.jpg'), 'ThinkPad X390', 'i5-10/8G/256G/核显/13.3', 123, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_X13.jpg'), 'ThinkPad X13', 'i5-10/8G/256G/核显/13.3', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_X13.jpg'), 'ThinkPad X13', 'i5-10/8G/256G/核显/13.3', 153, 'Laptop')
]

// 技术开发
export const OfficeTechnologyArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/HP_400G9_SFFR.jpg'), '惠普 H400G9 SFF R', 'i5-13/16G/512G/核显/23.8', 158, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E141.jpg'), 'ThinkPad E14', 'i5-13/8G/512G/核显/14', 208, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14_Gen4.jpg'), 'ThinkPad E14 Gen4', 'i5-12/16G/256G * 2/核显/14', 178, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/HP_288G9.jpg'), '惠普 288G9', 'i5-12/8G/256G/核显/21.5', 128, 'Desktop')
]

// 图形处理
export const OfficeGraphicsArr: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('Mall/ThinkPad_E14_Gen5.jpg'), 'ThinkPad E14 Gen5', 'i7-13/16/512G/核显/14', 256, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/ThinkPad_P16V.jpg'), 'ThinkPad P16V', 'i7-13/16G/512G/4G独显/16', 458, 'Laptop'),
  new equipmentSynopsis($rawfile('Mall/HP_288G9TX.jpg'), '惠普 88G9TX', 'i5-12/16G/1T+256G/4G独显/24英寸显示器', 208, 'Desktop'),
  new equipmentSynopsis($rawfile('Mall/HP_Z2_G9_Gen2.jpg'), '惠普 Z2 G9 Gen2', 'i7-13700K/32G/1T SSD/RTX 4070/27', 518, 'Desktop')
]



// 分类页面
// 综合推荐
export const synthesisRecommend: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'), '飞利浦Philips 27B2N2100 27英寸显示器租赁', '27/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper1.jpg'), 'ThinkPad E490 14英寸笔记本电脑', 'I3-8145U/8G/256G SSD/核显/14/HD', 65, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper1.jpg'), 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 78, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper1.jpg'), 'ThinkPad E480 14英寸笔记本电脑', 'I3-7020U/8G/256G SSD/核显/14/HD', 60, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper1.jpg'), 'ThinkPad E14 Gen2 14英寸笔记本电脑租赁', 'I3-1115G4/8G/256G SSD/核显/14/FHD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper1.jpg'), 'ThinkPad L14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/R625 2G独显14/FHD', 95, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper1.jpg'), '戴尔Dell 5400 笔记本电脑租赁', 'I5-8365U/8G/256G SSD/核显/14/FHD', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg'), 'ThinkPad X390 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'), 'ThinkPad X13 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'), '【新客特价】ThinkPad T14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'), '联想Lenovo 扬天S14 笔记本电脑租赁', 'I5-1155G7/8G/512G SSD/核显/14/FHD', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'), '惠普HP 440G8 14英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/14/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'), '惠普HP 430G8 13.3英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/13.3/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'), '惠普HP 440G7 14英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 63, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper2.jpg'), 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', 71, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.jpg'), '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/联想T2055 20英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper3.jpg'), 'Link S20 台式机租赁', 'G4930/8G/120G SSD/核显/戴尔 E2219HN 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V202B 19.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.png'), '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 78, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper2.jpg'), '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V220 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 台式机租赁', 'I3-9100/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 80, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT 台式机电脑租赁', 'I5-6500/8G/256G SSD/核显/戴尔E2219HN 21.5英寸显示器', 80, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper1.jpg'), 'Newline TC 65 65英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/65英寸/3840*2160/含ROOMS基础账号', 558, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper1.jpg'), 'Newline FLEX Max Pro 43英寸会议大屏租赁', '搭配腾讯会议Rooms(1年)/4G/32G SSD/Newline OS 3/43英寸/3840*2160', 599, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper.jpg'), 'Newline TT-NC65GA2 65英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/65英寸/3840*2160/含Rooms高级账号', 688, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper1.jpg'), 'Newline TC 86 86英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/86英寸/3840*2160/含ROOMS基础账号', 808, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper1.jpg'), 'Newline TT-NC75GA2 75英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/75英寸/3840*2160/含Rooms高级账号', 888, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper1.jpg'), '【新客特价】惠普 840G7 14英寸笔记本电脑租赁', 'I7-10510U/16G/512G SSD/核显/银/14/FHD', 123, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper1.jpg'), '惠普HP 240R G9 14英寸笔记本电脑租赁', 'I5-1335U/8G/512G SSD/核显/14/FHD', 148, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper1.jpg'), 'ThinkPad E14 Gen4 14英寸笔记本电脑租赁', 'I5-1240P/16G/256G SSD*2/核显/14/FHD', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper1.jpg'), '惠普HP 440G10 14英寸笔记本电脑租赁', 'I5-1340P/8G/512G SSD/核显/14/FHD', 158, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper1.jpg'), '【特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑 2019款 MV962CH/A', 'I5-8代 2.4GHz/8G/256G SSD/核显/深空灰/13.3/2K/Touch Bar', 178, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper1.jpg'), '【新客特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑租赁 2020款 MWP42CH/A', 'I5-10代 2.0GHz/16G/512G SSD/核显/深空灰/13.3/2K/Touch Bar', 198, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper1.png'), 'ThinkPad E14 Gen5 14英寸笔记本电脑租赁', 'I5-1340P/16G/512G SSD/核显/14/FHD', 208, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper1.jpg'), '苹果Apple Macbook Air 13.6英寸笔记本电脑租赁 2023款 MXCR3CH/A', 'M3 8核中央处理器/16G/512G SSD/10核图形处理器/深空灰/13.6/2K', 398, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper1.jpg'), 'ThinkPad P16v 16英寸笔记本电脑租赁', 'I7-13700H/16G/512G SSD/RTXA500 4G独显/16/FHD', 458, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper1.jpg'), '苹果Apple MacBook Pro 14.2英寸笔记本电脑租赁 2024款 MW2W3CH/A', 'M4 10核中央处理器/16G/512G SSD/10核图形处理器/银色/14.2/3K', 498, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper1.jpg'), '华为笔记本 MateBook X Pro 2024', 'Ultra7-155H/16G/1T SSD/核显/黑色/14.2/3K', 578, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D22 21.5英寸一体机电脑', 'i5-12400/16G/512G SSD/核显/21.5/FHD', 118, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/Apple_iMac_24_Swiper1.jpg'), '【特价】苹果Apple iMac 24英寸一体机电脑 2021款 MGTF3CH/A', 'M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/4.5K', 288, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac 24英寸一体机电脑租赁 2024款 Z1E2', 'M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', 538, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D23 23.9英寸一体机电脑', 'i5-13600K/32G/1T SSD/核显/23.9/HD', 225, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper1.jpg'), '爱普生 L6468 彩色喷墨打印机 文印产品租赁', '含每月2000张黑白打印量，100张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 99, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper1.jpg'), '爱普生打印机 WF-M5799a', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper1.jpg'), '佳能 LBP222dn 黑白激光打印机 文印产品租赁', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF-C5890A/APS_WF-C5890A_Swiper1.jpg'), '爱普生 WF-C5890a 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 228, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L15168/APS_L15168_Swiper1.jpg'), '爱普生 L15168 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 266, 'printer'),
]

// 笔记本分类
export const LaptopClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E490/ThinkPad_E490_Swiper1.jpg'), 'ThinkPad E490 14英寸笔记本电脑', 'I3-8145U/8G/256G SSD/核显/14/HD', 65, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen1/ThinkPad_E14_Gen1_Swiper1.jpg'), 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 'ThinkPad E14 Gen1 14英寸笔记本电脑租赁', 78, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E480/ThinkPad_E480_Swiper1.jpg'), 'ThinkPad E480 14英寸笔记本电脑', 'I3-7020U/8G/256G SSD/核显/14/HD', 60, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen2/ThinkPad_E14_Gen2_Swiper1.jpg'), 'ThinkPad E14 Gen2 14英寸笔记本电脑租赁', 'I3-1115G4/8G/256G SSD/核显/14/FHD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_L14/ThinkPad_L14_Swiper1.jpg'), 'ThinkPad L14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/R625 2G独显14/FHD', 95, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Dell/Dell_5400/Dell_5400_Swiper1.jpg'), '戴尔Dell 5400 笔记本电脑租赁', 'I5-8365U/8G/256G SSD/核显/14/FHD', 80, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg'), 'ThinkPad X390 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'), 'ThinkPad X13 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'), '【新客特价】ThinkPad T14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'), '联想Lenovo 扬天S14 笔记本电脑租赁', 'I5-1155G7/8G/512G SSD/核显/14/FHD', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'), '惠普HP 440G8 14英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/14/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'), '惠普HP 430G8 13.3英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/13.3/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'), '惠普HP 440G7 14英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/14/FHD', 99, 'Laptop'),

  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper1.jpg'), '【新客特价】惠普 840G7 14英寸笔记本电脑租赁', 'I7-10510U/16G/512G SSD/核显/银/14/FHD', 123, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper1.jpg'), '惠普HP 240R G9 14英寸笔记本电脑租赁', 'I5-1335U/8G/512G SSD/核显/14/FHD', 148, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper1.jpg'), 'ThinkPad E14 Gen4 14英寸笔记本电脑租赁', 'I5-1240P/16G/256G SSD*2/核显/14/FHD', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper1.jpg'), '惠普HP 440G10 14英寸笔记本电脑租赁', 'I5-1340P/8G/512G SSD/核显/14/FHD', 158, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2019/Apple_MacBook_Pro_2019_Swiper1.jpg'), '【特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑 2019款 MV962CH/A', 'I5-8代 2.4GHz/8G/256G SSD/核显/深空灰/13.3/2K/Touch Bar', 178, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2020/Apple_MacBook_Pro_2020_Swiper1.jpg'), '【新客特价】苹果Apple MacBook Pro 13.3英寸笔记本电脑租赁 2020款 MWP42CH/A', 'I5-10代 2.0GHz/16G/512G SSD/核显/深空灰/13.3/2K/Touch Bar', 198, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen5/ThinkPad_E14_Gen5_Swiper1.png'), 'ThinkPad E14 Gen5 14英寸笔记本电脑租赁', 'I5-1340P/16G/512G SSD/核显/14/FHD', 208, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Air_2023/Apple_MacBook_Air_2023_Swiper1.jpg'), '苹果Apple Macbook Air 13.6英寸笔记本电脑租赁 2023款 MXCR3CH/A', 'M3 8核中央处理器/16G/512G SSD/10核图形处理器/深空灰/13.6/2K', 398, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_P16V/ThinkPad_P16V_Swiper1.jpg'), 'ThinkPad P16v 16英寸笔记本电脑租赁', 'I7-13700H/16G/512G SSD/RTXA500 4G独显/16/FHD', 458, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Apple/Apple_MacBook_Pro_2024/Apple_MacBook_Pro_2024_Swiper1.jpg'), '苹果Apple MacBook Pro 14.2英寸笔记本电脑租赁 2024款 MW2W3CH/A', 'M4 10核中央处理器/16G/512G SSD/10核图形处理器/银色/14.2/3K', 498, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Huawei/Huawei_MateBook_X_Pro_2024/Huawei_MateBook_X_Pro_2024_Swiper1.jpg'), '华为笔记本 MateBook X Pro 2024', 'Ultra7-155H/16G/1T SSD/核显/黑色/14.2/3K', 578, 'Laptop'),

  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X390/ThinkPad_X390_Swiper1.jpg'), 'ThinkPad X390 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_X13/ThinkPad_X13_Swiper1.jpg'), 'ThinkPad X13 13.3英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/13.3/HD', 88, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_T14/ThinkPad_T14_Swiper1.jpg'), '【新客特价】ThinkPad T14 14英寸笔记本电脑租赁', 'I5-10210U/16G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/Lenovo/Lenovo_YTS14/Lenovo_YTS14_Swiper1.png'), '联想Lenovo 扬天S14 笔记本电脑租赁', 'I5-1155G7/8G/512G SSD/核显/14/FHD', 108, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G8/HP_440G8_Swiper1.jpg'), '惠普HP 440G8 14英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/14/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_430G8/HP_430G8_Swiper1.jpg'), '惠普HP 430G8 13.3英寸笔记本电脑租赁', 'I5-1135G7/16G/512G SSD/核显/13.3/FHD', 113, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G7/HP_440G7_Swiper1.jpg'), '惠普HP 440G7 14英寸笔记本电脑租赁', 'I5-10210U/8G/256G SSD/核显/14/FHD', 99, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_840G7/HP_840G7_Swiper1.jpg'), '【新客特价】惠普 840G7 14英寸笔记本电脑租赁', 'I7-10510U/16G/512G SSD/核显/银/14/FHD', 123, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_240R_G9/HP_240R_G9_Swiper1.jpg'), '惠普HP 240R G9 14英寸笔记本电脑租赁', 'I5-1335U/8G/512G SSD/核显/14/FHD', 148, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/ThinkPad/ThinkPad_E14_Gen4/ThinkPad_E14_Gen4_Swiper1.jpg'), 'ThinkPad E14 Gen4 14英寸笔记本电脑租赁', 'I5-1240P/16G/256G SSD*2/核显/14/FHD', 128, 'Laptop'),
  new equipmentSynopsis($rawfile('ProductDetails/Laptop/HP/HP_440G10/HP_440G10_Swiper1.jpg'), '惠普HP 440G10 14英寸笔记本电脑租赁', 'I5-1340P/8G/512G SSD/核显/14/FHD', 158, 'Laptop'),
]

// 台式机分类
export const DesktopClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 63, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper2.jpg'), 'Link S20 台式机租赁', 'G4900/8G/240G SSD/核显/飞利浦243S7QDSBF 23.8英寸显示器', 71, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.jpg'), '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/联想T2055 20英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper3.jpg'), 'Link S20 台式机租赁', 'G4930/8G/120G SSD/核显/戴尔 E2219HN 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V202B 19.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E96X/Lenove_E96X_Swiper2.png'), '联想Lenovo E96X 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 78, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G4/HP_288G4_Swiper2.jpg'), '惠普HP 288G4 台式机电脑租赁', 'G4900/8G/256G SSD/核显/惠普V220 21.5英寸显示器', 73, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 台式机租赁', 'I3-9100/8G/240G SSD/核显/飞利浦223S5LHSB 21.5英寸显示器', 80, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT 台式机电脑租赁', 'I5-6500/8G/256G SSD/核显/戴尔E2219HN 21.5英寸显示器', 80, 'Desktop'),

  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E98/Lenove_E98_Swiper1.jpg'), '联想Lenovo E98 台式机电脑租赁', 'G5905/8G/256G SSD/核显/联想T2055 20英寸显示器', 83, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97 台式机电脑租赁', 'G5905/8G/256G SSD/核显/飞利浦203V5LSB2 20英寸显示器', 83, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_E97/Lenove_E97_Swiper2.jpg'), '联想Lenovo E97 台式机电脑租赁', 'G5905双核/8G/256G SSD/核显/飞利浦223V5LSB 21.5英寸显示器', 88, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3 台式机电脑租赁', 'I5-6/8G/256G SSD/核显/联想T2224R 21.5英寸显示器', 98, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6 台式机电脑租赁', 'I3-10100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 103, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_288G9/HP_288G9_Swiper1.jpg'), '惠普HP 288G9 台式机电脑租赁', 'I3-12100/8G/256G SSD/核显/惠普M2256 21.5英寸显示器', 123, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/HP/HP_400G9/HP_400G9_Swiper1.jpg'), '惠普HP 400G9 SFF R台式机电脑租赁', 'I5-13500/8G/512G SSD/核显/WIFI6+BT5.3/飞利浦24B2N2100 23.8英寸显示器', 158, 'Desktop'),
  new equipmentSynopsis($rawfile('ProductDetails/Desktop/Lenovo/Lenove_M930T/Lenove_M930T_Swiper2.png'), '联想Lenovo M930t 台式机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显/惠普M2256 21.5英寸显示器', 163, 'Desktop'),

]

// 一体机分类
export const allInOneMachineClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D22 21.5英寸一体机电脑', 'i5-12400/16G/512G SSD/核显/21.5/FHD', 118, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2021/Apple_iMac_24_Swiper1.jpg'), '【特价】苹果Apple iMac 24英寸一体机电脑 2021款 MGTF3CH/A', 'M1 8核中央处理器/8G/256G SSD/7核图形处理器/银色/24/4.5K', 288, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Apple_iMac/Apple_iMac_24_2024/Apple_iMac_24_Swiper1.jpg'), '苹果Apple iMac 24英寸一体机电脑租赁 2024款 Z1E2', 'M4 8核中央处理器/16G/512G SSD/8核图形处理器/银色/24/4.5K', 538, 'allInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/AllInOneMachine/Link/Link_D22/Link_D22_Swiper1.jpg'), 'Link D23 23.9英寸一体机电脑', 'i5-13600K/32G/1T SSD/核显/23.9/HD', 225, 'allInOneMachine'),
]

// 显示器分类
export const DisplayClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_27B2N2100_27/FLP_Philips_27B2N2100_27_Swiper1.jpg'), '飞利浦Philips 27B2N2100 27英寸显示器租赁', '27/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 35, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/HP/HP_M2456_23.8/HP_M2456_23.8_Swiper1.jpg'), '惠普HP M2456 23.8英寸显示器 HDMI/VGA/DP接口', '23.8/1920x1080/60Hz/HDMI+VGA +DP', 33, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_203V5LSB2_20/FLP_PHilips_203V5LSB2_20_Swiper1.jpg'), '飞利浦Philips 203V5LSB2 20英寸显示器租赁', '20/1600x900/60Hz/VGA', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2016H_20/Dell_E2016H_20_Swiper1.jpg'), '戴尔Dell E2016H 20英寸显示器租赁', '19.5/1600x900/60Hz/VGA+DP', 20, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_223V5LSB_21.5/FLP_Philips_223V5LSB_21.5_Swiper1.jpg'), '飞利浦Philips 223V5LSB 21.5英寸显示器租', '21.5/1920x1080/60Hz/VGA+DVI', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/Dell/Dell_E2220H_21.5/Dell_E2220H_21.5_Swiper1.jpg'), '戴尔Dell E2220H 21.5英寸显示器租赁', '21.5/1920x1080/60Hz/DP+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_24B2N2100_23.8/FLP_Philips_24B2N2100_23.8_Swiper1.jpg'), '飞利浦Philips 24B2N2100 23.8英寸显示器租赁', '23.8/1920x1080/100Hz/HDMI+VGA', 25, 'Display'),
  new equipmentSynopsis($rawfile('ProductDetails/Display/FLP/FLP_Philips_241V8_23.8/FLP_Philips_241V8_23.8_Swiper1.jpg'), '飞利浦Philips 241V8 23.8英寸显示器租赁', '23.8/1920x1080/75Hz/HDMI+VGA', 33, 'Display'),
]

// 会议大屏分类
export const conferenceScreenClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_65/Newline_TC_65_Swiper1.jpg'), 'Newline TC 65 65英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/65英寸/3840*2160/含ROOMS基础账号', 558, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_FLEX_Max_Pro/Newline_FLEX_Max_Pro_Swiper1.jpg'), 'Newline FLEX Max Pro 43英寸会议大屏租赁', '搭配腾讯会议Rooms(1年)/4G/32G SSD/Newline OS 3/43英寸/3840*2160', 599, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC65GA2/Newline_TT_NC65GA2_Swiper.jpg'), 'Newline TT-NC65GA2 65英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/65英寸/3840*2160/含Rooms高级账号', 688, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TC_86/Newline_TC_86_Swiper1.jpg'), 'Newline TC 86 86英寸会议大屏租赁', '搭配腾讯会议Rooms/Windows/86英寸/3840*2160/含ROOMS基础账号', 808, 'conferenceScreen'),
  new equipmentSynopsis($rawfile('ProductDetails/ConferenceScreen/Newline/Newline_TT_NC75GA2/Newline_TT_NC75GA2_Swiper1.jpg'), 'Newline TT-NC75GA2 75英寸会议大屏租赁', '海思811.4/4G/32G SSD/安卓8.0/75英寸/3840*2160/含Rooms高级账号', 888, 'conferenceScreen'),
]

// 打印机分类
export const printerClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L6468/APS_L6468_Swiper1.jpg'), '爱普生 L6468 彩色喷墨打印机 文印产品租赁', '含每月2000张黑白打印量，100张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 99, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF_M5799A/APS_WF_M5799A_Swiper1.jpg'), '爱普生打印机 WF-M5799a', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/JN/JN_LBP222DN/JN_LBP222DN_Swiper1.jpg'), '佳能 LBP222dn 黑白激光打印机 文印产品租赁', '含每月2000张黑白打印量，超印部分黑白0.04元/张', 158, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_WF-C5890A/APS_WF-C5890A_Swiper1.jpg'), '爱普生 WF-C5890a 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 228, 'printer'),
  new equipmentSynopsis($rawfile('ProductDetails/Printer/APS/APS_L15168/APS_L15168_Swiper1.jpg'), '爱普生 L15168 彩色喷墨打印机 文印产品租赁', '含每月3000张黑白打印量，300张彩色打印量，超印部分黑白0.04元/张，彩色0.4元/张', 266, 'printer'),
]

// 单主机分类
export const singleHostClassify: equipmentSynopsis[] = [
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 单主机电脑租赁', 'G4900/8G/240G SSD/核显', 48, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'), '联想Lenovo E96X 单主机电脑租赁', '4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4 单主机电脑租赁', 'G4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 65, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'), '联想Lenovo E98 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'), '戴尔Dell 成铭3991 单主机电脑租赁', 'I3-10100/8G/256G SSD/核显', 88, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6 单主机电脑租赁', 'I5-10500/8G/256G SSD/核显', 103, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper1.jpg'), '惠普HP 400G9 SFF R单主机电脑租赁', 'I3-13100/8G/512G SSD/核显/WIFI6+BT5.3', 108, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper1.jpg'), '惠普HP 288G9 单主机电脑租赁', 'I3-12100/8G/256G SSD/核显', 93, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper1.jpg'), '惠普HP Z2G9 Gen2 工作站租赁', 'I7-13700K/32G/1T SSD/RTX4060 8G独显', 483, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 单主机电脑租赁', 'G4900/8G/240G SSD/核显', 48, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E96X/Lenove_E96X_Swiper1.png'), '联想Lenovo E96X 单主机电脑租赁', '4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G4/HP_288G4_Swiper1.jpg'), '惠普HP 288G4 单主机电脑租赁', 'G4900/8G/256G SSD/核显', 63, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_3967MT/Dell_3967MT_Swiper1.jpg'), '戴尔Dell 3967MT 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 65, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E97/Lenove_E97_Swiper1.png'), '联想Lenovo E97 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_E98/Lenove_E98_Swiper1.png'), '联想Lenovo E98 单主机电脑租赁', 'G5905/8G/256G SSD/核显', 73, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Link/Link_S20/Link_S20_Swiper1.jpg'), 'Link S20 单主机电脑租赁', '14900K/64G/4T SSD/RTX A100', 1899, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Dell/Dell_CM3991/Dell_CM3991_Swiper1.jpg'), '戴尔Dell 成铭3991 单主机电脑租赁', 'I3-10100/8G/256G SSD/核显', 88, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G6/HP_288G6_Swiper1.jpg'), '惠普HP 288G6 单主机电脑租赁', 'I5-10500/8G/256G SSD/核显', 103, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_680G3/HP_680G3_Swiper1.jpg'), '惠普HP 680G3 单主机电脑租赁', 'I5-6/8G/256G SSD/核显', 83, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_400G9_SFF_R/HP_400G9_SFF_R_Swiper1.jpg'), '惠普HP 400G9 SFF R单主机电脑租赁', 'I3-13100/8G/512G SSD/核显/WIFI6+BT5.3', 108, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_288G9/HP_288G9_Swiper1.jpg'), '惠普HP 288G9 单主机电脑租赁', 'I3-12100/8G/256G SSD/核显', 93, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/HP/HP_Z2G9_Gen2/HP_Z2G9_Gen2_Swiper1.jpg'), '惠普HP Z2G9 Gen2 工作站租赁', 'I7-13700K/32G/1T SSD/RTX4060 8G独显', 483, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
  new equipmentSynopsis($rawfile('ProductDetails/SingleHost/Lenovo/Lenove_M930T/Lenove_M930T_Swiper1.jpg'), '联想Lenovo M930t 单主机电脑租赁', 'I5-10400/16G/1T SSD/GT1030 2G独显', 148, 'AllInOneMachine'),
]








