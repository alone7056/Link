// Tab条的对象
export class TabItem {
  icon: ResourceStr; // 未被选中的图片
  selectedIcon: ResourceStr; // 被选中的图片
  text: ResourceStr; // 图片的文本
  constructor(icon: ResourceStr, selectedIcon: ResourceStr, text: ResourceStr) {
    this.icon = icon;
    this.selectedIcon = selectedIcon;
    this.text = text;
  }
}