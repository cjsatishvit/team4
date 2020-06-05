
public class Member 
{
	private String name,customer,amount,id,income,address,reason,aadhar,proof;

	public Member() {
		super();
	}

	public Member(String name, String customer, String amount, String id, String income, String address, String reason,
			String aadhar, String proof) {
		super();
		this.name = name;
		this.customer = customer;
		this.amount = amount;
		this.id = id;
		this.income = income;
		this.address = address;
		this.reason = reason;
		this.aadhar = aadhar;
		this.proof = proof;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name =name;
	}
	
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer =customer;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount =amount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id =id;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income =income;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address =address;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason =reason;
	}
	public String getAadhar() {
		return aadhar;
	}
	public void setAadhar(String aadhar) {
		this.aadhar =aadhar;
	}
	public String getProof() {
		return proof;
	}
	public void setProof(String proof) {
		this.proof =proof;
	}
}
