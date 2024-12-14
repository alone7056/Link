
let loadingDialogController: CustomDialogController | null

export enum LoadingState {
  loading,
  success,
  error,
  info,
  progress,
}

export interface LoadingSettings {
  /**
   * msg default is ''
   */
  msg?: string
  /**
   * alignment default is center
   */
  alignment?: DialogAlignment
  /**
   * offset default is （0，0）
   */
  offset?: Offset
  /**
   * tintColor, image & LoadingProgress color, default is white
   */
  tintColor?: ResourceColor
  /**
   * textColor default is white
   */
  textColor?: ResourceColor
  /**
   * hideDelay default is 2000 ms
   */
  hideDelay?: number
  /**
   * fontSize default is 16fp
   */
  fontSize?: number | string | Resource
  /**
   * backgroundColor default is #cc000000
   */
  backgroundColor?: ResourceColor
  /**
   * maskColor default is Transparent
   */
  maskColor?: ResourceColor
  /**
   * borderRadius default is 10
   */
  borderRadius?: Length | BorderRadiuses
  /**
   * success image 最好是svg格式
   */
  successSrc?: PixelMap | ResourceStr
  /**
   * failure image 最好是svg格式
   */
  failureSrc?: PixelMap | ResourceStr
}

@Component
export struct LoadingComponent {
  /**
   * 显示 loading hud
   * @param value 可不传
   */
  showLoading(value: string | LoadingSettings = ''): void {
    this.showDialog(value, LoadingState.loading)
  }

  /**
   * 显示 success hud
   * @param value 可不传
   */
  showSuccess(value: string | LoadingSettings = ''): void {
    this.showDialog(value, LoadingState.success)

    this.hideDialogDelay(value)
  }

  /**
   * 显示 failure hud
   * @param value 可不传
   */
  showFailure(value: string | LoadingSettings = ''): void {
    this.showDialog(value, LoadingState.error)

    this.hideDialogDelay(value)
  }

  /**
   * 显示 info hud
   * @param value 可不传
   */
  showInfo(value: string | LoadingSettings = ''): void {
    this.showDialog(value, LoadingState.info)

    this.hideDialogDelay(value)
  }

  /**
   * 显示 progress hud
   * @param value 可不传
   * @param progress 取值 0 ~ 100
   */
  showProgress(value: string | LoadingSettings = '', progress: number = 0): void {
    this.hide()
    let alignment: DialogAlignment
    let offset: Offset
    let maskColor: ResourceColor
    if (typeof value == 'string') {
      alignment = loadingDialogGlobalSettings.alignment
      offset = loadingDialogGlobalSettings.offset
      maskColor = loadingDialogGlobalSettings.maskColor
    } else {
      alignment = value.alignment ?? loadingDialogGlobalSettings.alignment
      offset = value.offset ?? loadingDialogGlobalSettings.offset
      maskColor = value.maskColor ?? loadingDialogGlobalSettings.maskColor
    }
    loadingDialogController = new CustomDialogController({
      builder: LoadingDialogView({
        value: value,
        state: LoadingState.progress,
        progress: progress
      }),
      alignment: alignment,
      offset: offset,
      autoCancel: false,
      customStyle: true,
    })
    loadingDialogController?.open()
  }

  /**
   * 隐藏 hud
   */
  hide(): void {
    if (loadingDialogController) {
      loadingDialogController?.close()
      loadingDialogController = null
    }
  }

  setGlobalSettings(configs: (settings: LoadingDialogGlobalSettings) => void): void {
    configs(loadingDialogGlobalSettings)
  }

  private showDialog(value: string | LoadingSettings = '', state: LoadingState): void {
    this.hide()
    let alignment: DialogAlignment
    let offset: Offset
    let maskColor: ResourceColor
    if (typeof value == 'string') {
      alignment = loadingDialogGlobalSettings.alignment
      offset = loadingDialogGlobalSettings.offset
      maskColor = loadingDialogGlobalSettings.maskColor
    } else {
      alignment = value.alignment ?? loadingDialogGlobalSettings.alignment
      offset = value.offset ?? loadingDialogGlobalSettings.offset
      maskColor = value.maskColor ?? loadingDialogGlobalSettings.maskColor
    }
    loadingDialogController = new CustomDialogController({
      builder: LoadingDialogView({
        value: value,
        state: state
      }),
      alignment: alignment,
      offset: offset,
      autoCancel: false,
      customStyle: true
    })
    loadingDialogController?.open()
  }

  private hideDialogDelay(value: string | LoadingSettings = ''): void {
    let hideDelay: number
    if (typeof value == 'string') {
      hideDelay = loadingDialogGlobalSettings.hideDelay
    } else {
      hideDelay = value.hideDelay ?? loadingDialogGlobalSettings.hideDelay
    }
    setTimeout(() => {
      this.hide()
    }, hideDelay)
  }

  build() {
  }
}

@CustomDialog
struct LoadingDialogView {
  controller: CustomDialogController
  value: string | LoadingSettings = ''
  state: LoadingState = LoadingState.loading
  progress: number = 0
  private msg: string = ''
  private settings?: LoadingSettings

  aboutToAppear(): void {
    if (typeof this.value == 'string') {
      this.msg = this.value
    } else {
      this.msg = this.value.msg ?? loadingDialogGlobalSettings.msg
      this.settings = this.value
    }
  }

  aboutToDisappear(): void {

  }

  build() {
    Column({ space: '15vp' }) {
      if (this.state == LoadingState.loading) {
        LoadingProgress()
          .color(this.settings?.tintColor ?? loadingDialogGlobalSettings.tintColor)
          .width('54vp')
          .height('54vp')
      } else if (this.state == LoadingState.success) {
        Image(this.settings?.successSrc ?? loadingDialogGlobalSettings.successSrc)
          .fillColor(this.settings?.tintColor ?? loadingDialogGlobalSettings.tintColor)
          .width('48vp')
          .height('48vp')
      } else if (this.state == LoadingState.error) {
        Image(this.settings?.failureSrc ?? loadingDialogGlobalSettings.failureSrc)
          .fillColor(this.settings?.tintColor ?? loadingDialogGlobalSettings.tintColor)
          .width('48vp')
          .height('48vp')
      } else if (this.state == LoadingState.progress) {
        Stack() {
          Progress({ value: this.progress, total: 100, type: ProgressType.Ring })
            .width('100%')
            .height('100%')
            .color(this.settings?.tintColor ?? loadingDialogGlobalSettings.tintColor)
            .backgroundColor("#4dffffff")
            .style({
              strokeWidth: 5
            })

          Text(`${this.progress}%`)
            .width('100%')
            .height('100%')
            .fontSize('14fp')
            .fontColor(this.settings?.tintColor ?? loadingDialogGlobalSettings.tintColor)
            .textAlign(TextAlign.Center)
        }
          .width('54vp')
          .height('54vp')
      }

      if (this.msg != '') {
        Text(this.msg)
          .fontColor(this.settings?.textColor ?? loadingDialogGlobalSettings.textColor)
          .textAlign(TextAlign.Center)
          .fontSize(this.settings?.fontSize ?? loadingDialogGlobalSettings.fontSize)
      }
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .constraintSize({
      minWidth: '150vp',
      minHeight: '150vp'
    })
    .padding({
      left: '10vp',
      right: '10vp',
      top: '20vp',
      bottom: '20vp'
    })
    .backgroundColor(this.settings?.backgroundColor ?? loadingDialogGlobalSettings.backgroundColor)
    .borderRadius(this.settings?.borderRadius ? loadingDialogGlobalSettings.borderRadius : 10)
  }
}


export class LoadingDialogManager {
  getDialog = new LoadingComponent()
}

export class LoadingDialogGlobalSettings {
  msg: string = ''
  alignment: DialogAlignment = DialogAlignment.Center
  offset: Offset = {dx: 0, dy: 0}
  tintColor: ResourceColor = Color.White
  textColor: ResourceColor = Color.White
  hideDelay: number = 1500
  fontSize: number | string | Resource = '16fp'
  backgroundColor: ResourceColor = '#cc000000'
  maskColor: ResourceColor = Color.Transparent
  borderRadius: Length = 10
  successSrc: PixelMap | ResourceStr = $r('app.media.tips_success')
  failureSrc: PixelMap | ResourceStr = $r('app.media.tips_error')
}

let loadingDialogGlobalSettings = new LoadingDialogGlobalSettings()

let LoadingDialog = new LoadingDialogManager().getDialog
export default LoadingDialog