package com.zhbit.book.Domain;

public class address {
	private int addressId;
	private String address;
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getAddress() {
		return address;
	}
	@Override
	public String toString() {
		return "address [addressId=" + addressId + ", address=" + address + "]";
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
