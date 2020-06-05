
public class Member 
{
	private String custid,type,loanid,amount,reason,Aadharno,Accountno;

	public Member() {
		super();
	}

	public Member(String custid, String type, String loanid, String amount, String reason, String Aadharno, String Accountno) {
		super();
		this.custid = custid;
		this.type = type;
		this.loanid = loanid;
		this.amount = amount;
		this.reason = reason;
		this.Aadharno = Aadharno;
		this.Accountno=Accountno;
	}

	public String getCustid() {
		return custid;
	}

	public void setCustid(String custid) {
		this.custid = custid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLoanid() {
		return loanid;
	}

	public void setLoanid(String loanid) {
		this.loanid = loanid;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getAadharno() {
		return Aadharno;
	}

	public void setAadharno(String aadharno) {
		Aadharno = aadharno;
	}

	public String getAccountno() {
		return Accountno;
	}

	public void setAccountno(String accountno) {
		Accountno = accountno;
	}

}
