
public class Loan {
	String Name;
	String Borrower_ID;
	long Phone_no;
	long Account_no;
	Guarantor guarantor;
	private String Loan_ID;
	private String LO_ID;
	String Loan_Type;
	String Collector_ID;
	String Approval_date;
	int Num_Installments;
	float Borrowed_Amount;
	float Amount_paid;
	String ID_proof;
	String Address;
	Loan()
	{
		guarantor = new Guarantor();
	}

}
