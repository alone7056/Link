PersistentStorage.PersistProp('aProp', 47);

@Entry
@Component
struct Test {
  @State message: string = 'Hello World'
  @StorageLink('aProp') aProp: number = 48

  aboutToAppear(){
    let people = [
      { name: 'John', age: 45 },
      { name: 'Alice', age: 23 },
      { name: 'Bob', age: 30 }
    ];

    // 使用展开运算符创建原数组的一个副本
    let sortedPeople1 = [...people].sort((a, b) => b.age - a.age);
    let sortedPeople2 = [...people].sort((a, b) => a.age - b.age);

    console.log('Original array:', JSON.stringify(people));
    console.log('Sorted array:', JSON.stringify(sortedPeople2));
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
        // 应用退出时会保存当前结果。重新启动后，会显示上一次的保存结果
        Text(`${this.aProp}`)
          .onClick(() => {
            this.aProp = Number(this.aProp) + 1;
          })
      }.width('100%').height('100%').justifyContent(FlexAlign.Center).alignItems(HorizontalAlign.Center)
    }
  }
}
