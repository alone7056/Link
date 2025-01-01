PersistentStorage.PersistProp('aProp', 47);

@Entry
@Component
struct Test {
  @State message: string = 'Hello World'
  @StorageLink('aProp') aProp: number = 48

  aboutToAppear(){
    // 大小排序
    let people1 = [
      { name: 'John', age: 45 },
      { name: 'Alice', age: 23 },
      { name: 'Bob', age: 30 }
    ];

    // 使用展开运算符创建原数组的一个副本
    let sortedPeople1 = [...people1].sort((a, b) => b.age - a.age);
    let sortedPeople2 = [...people1].sort((a, b) => a.age - b.age);

    console.log('Original array:', JSON.stringify(people1));
    console.log('Sorted array:', JSON.stringify(sortedPeople2));

    // 构建子搜索
    let people2 = [
      { name: 'John Doe', age: 45 },
      { name: 'Alice Johnson', age: 23 },
      { name: 'Bob Smith', age: 30 },
      { name: 'Michael Brown', age: 17 }
    ];

    // 定义关键字
    let keyword = 'John';

    // 使用filter方法筛选出包含关键字的对象
    let filteredPeople = people2.filter(person => person.name.includes(keyword));

    console.log('Original array:', JSON.stringify(people2));
    console.log('Filtered array:', JSON.stringify(filteredPeople));
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
