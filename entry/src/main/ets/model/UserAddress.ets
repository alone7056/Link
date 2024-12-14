// 用户地址信息类
export class UserAddress{
  phone: string;
  nickname: string;
  gender: string;
  location: string;
  fullAddress: string;

  constructor(phone?: string, nickname?: string, gender?: string, location?: string, fullAddress?: string) {
    this.phone = phone
    this.nickname = nickname
    this.gender = gender
    this.location = location
    this.fullAddress = fullAddress
  }

}

export const userAddress : UserAddress = new UserAddress()