// 1.导入用户首选项模块
import preferences from '@ohos.data.preferences';
import common from '@ohos.app.ability.common';
export class PreferencesUtil{
  // 创建一个工具对象
  // private static preferenceUtil: PreferencesUtil = new PreferencesUtil()
  // 用户首选项对象
  private preference: preferences.Preferences
  // 上下文
  private context = getContext(this) as common.UIAbilityContext
  // 首选项的文件名
  private name: string = 'preferenceFile'

  // 初始化
  async init(){
    try{
      // 用户首选项对象不存在时创建
      if (!this.preference) {
        // 2.获取用户首选项对象
        this.preference = await preferences.getPreferences(this.context, this.name)
      }
    } catch (err) {
      console.error('获取用户首选项报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }

  // 新增
  async put(key: string, value: preferences.ValueType){
    try {
      await this.preference.put(key, value)
      // 持久化
      await this.preference.flush()
    } catch (err) {
      console.error('用户首选项新增put()方法报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }
  // 删除
  async delete(key: string){
    try {
      await this.preference.delete(key)
      await this.preference.flush()
    } catch (err) {
      console.error('用户首选项删除delete()方法报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }

  // 查询
  async get(key: string){
    try {
      // (key, 默认返回数据)
      return await this.preference.get(key, '')
    } catch (err) {
      console.error('用户首选项查询get()方法报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }

  // 判断
  async has(key: string){
    try {
      // 判断数据是否存在
      await this.preference.has(key)
    } catch (err) {
      console.error('用户首选项判断has()方法报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }

  // 清除
  async clear(){
    try {
      // 判断数据是否存在
      await this.preference.clear()
    } catch (err) {
      console.error('用户首选项清除clear()方法报错(PreferencesUtil)，错误信息：' + JSON.parse(err))
    }
  }
}