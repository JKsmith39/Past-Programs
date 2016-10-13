

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.text.DecimalFormat;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.WindowConstants;
import javax.swing.SwingUtilities;
import java.sql.*;


/**
* This code was edited or generated using CloudGarden's Jigloo
* SWT/Swing GUI Builder, which is free for non-commercial
* use. If Jigloo is being used commercially (ie, by a corporation,
* company or business for any purpose whatever) then you
* should purchase a license for each developer using Jigloo.
* Please visit www.cloudgarden.com for details.
* Use of Jigloo implies acceptance of these licensing terms.
* A COMMERCIAL LICENSE HAS NOT BEEN PURCHASED FOR
* THIS MACHINE, SO JIGLOO OR THIS CODE CANNOT BE USED
* LEGALLY FOR ANY CORPORATE OR COMMERCIAL PURPOSE.
*/
public class FAMUSUB extends javax.swing.JFrame implements ActionListener,ItemListener {
	private JLabel title;
	private JCheckBox meatbox4;
	private JCheckBox meatbox6;
	private ButtonGroup buttonGroup2;
	private ButtonGroup buttonGroup1;
	private JTextField total;
	private JTextField subtotalField;
	private JLabel subtotal;
	private JTextField orders;
	private JButton showbtn;
	private JButton searchbtn;
	private JTextField custField1;
	private JLabel Cust;
	private JLabel totalLbel;
	private JLabel taxlbel;
	private JTextField tax;
	private JButton completebtn;
	private JLabel drink;
	private JComboBox jComboBox1;
	private JCheckBox meatbox5;
	private JCheckBox meatbox3;
	private JCheckBox meatbox2;
	private JCheckBox meatbox;
	private JLabel meats;
	private JCheckBox breadbox3;
	private JCheckBox breadbox2;
	private JCheckBox breadbox;
	private JCheckBox sizebox2;
	private JCheckBox sizebox;
	private JLabel bread;
	private JLabel size;
	String Drinks[] = {"None", "Sprite","Coke",
			"Mountain Dew", "Dr.Pepper" };
	double reg = 2.75;
	double foot = 4.50;
	double meat = 1.00;
	double soda = 1.50;
	double price = 0.00;
	double btax = 0.10;
	double ftax = 0.00;
	double sub;
	String s2,s3,s4,s5; 
	/**
	* Auto-generated main method to display this JFrame
	*/
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				FAMUSUB inst = new FAMUSUB();
				inst.setLocationRelativeTo(null);
				inst.setVisible(true);
			}
		});
	}
	
	public FAMUSUB() {
		super();
		initGUI();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			getContentPane().setLayout(null);
			{
				title = new JLabel();
				getContentPane().add(title);
				title.setText("FAMU SUBS");
				title.setBounds(214, 12, 74, 24);
			}
			{
				size = new JLabel();
				getContentPane().add(size);
				size.setText("Size:");
				size.setBounds(12, 49, 27, 21);
			}
			{
				bread = new JLabel();
				getContentPane().add(bread);
				bread.setText("Bread: ");
				bread.setBounds(152, 48, 43, 20);
			}
			{
				sizebox = new JCheckBox();
				getContentPane().add(sizebox);
				sizebox.setText("Regular");
				sizebox.setBounds(39, 49, 102, 21);
				sizebox.addActionListener(this);
				getButtonGroup1().add(sizebox);
				sizebox.addItemListener(this);
			}
			{
				sizebox2 = new JCheckBox();
				getContentPane().add(sizebox2);
				sizebox2.setText("Footlong");
				sizebox2.setBounds(39, 79, 102, 20);
				getButtonGroup1().add(sizebox2);
				sizebox2.addItemListener(this);

			}
			{
				breadbox = new JCheckBox();
				getContentPane().add(breadbox);
				breadbox.setText("White");
				breadbox.setBounds(202, 48, 66, 20);
				getButtonGroup2().add(breadbox);
			}
			{
				breadbox2 = new JCheckBox();
				getContentPane().add(breadbox2);
				breadbox2.setText("Wheat");
				breadbox2.setBounds(273, 48, 76, 20);
				getButtonGroup2().add(breadbox2);
			}
			{
				breadbox3 = new JCheckBox();
				getContentPane().add(breadbox3);
				breadbox3.setText("Honey Oat");
				breadbox3.setBounds(352, 48, 100, 22);
				getButtonGroup2().add(breadbox3);
			}
			{
				meats = new JLabel();
				getContentPane().add(meats);
				meats.setText("Meat:");
				meats.setBounds(12, 131, 34, 21);
			}
			{
				meatbox = new JCheckBox();
				getContentPane().add(meatbox);
				meatbox.setText("Ham");
				meatbox.setBounds(51, 132, 65, 20);
				meatbox.addItemListener(this);
			}
			{
				meatbox2 = new JCheckBox();
				getContentPane().add(meatbox2);
				meatbox2.setText("Turkey");
				meatbox2.setBounds(158, 132, 80, 20);
				meatbox2.addItemListener(this);
			}
			{
				meatbox3 = new JCheckBox();
				getContentPane().add(meatbox3);
				meatbox3.setText("Chicken");
				meatbox3.setBounds(249, 133, 85, 21);
				meatbox3.addItemListener(this);
			}
			{
				meatbox4 = new JCheckBox();
				getContentPane().add(meatbox4);
				meatbox4.setText("Roast Beef");
				meatbox4.setBounds(51, 171, 90, 20);
				meatbox4.addItemListener(this);
			}
			{
				meatbox5 = new JCheckBox();
				getContentPane().add(meatbox5);
				meatbox5.setText("Salami ");
				meatbox5.setBounds(158, 171, 80, 20);
				meatbox5.addItemListener(this);
			}
			{
				meatbox6 = new JCheckBox();
				getContentPane().add(meatbox6);
				meatbox6.setText("Meatballs");
				meatbox6.setBounds(249, 171, 85, 20);
				meatbox6.addItemListener(this);
			}
			{
				
				jComboBox1 = new JComboBox(Drinks);
				getContentPane().add(jComboBox1);
				jComboBox1.setBounds(404, 144, 76, 27);
				jComboBox1.addItemListener(this);
			}
			{
				drink = new JLabel();
				getContentPane().add(drink);
				drink.setText("Drink:");
				drink.setBounds(362, 149, 38, 22);
			}
			{
				completebtn = new JButton();
				getContentPane().add(completebtn);
				completebtn.setText("Submit Order");
				completebtn.setBounds(24, 284, 160, 34);
				completebtn.addActionListener(this);
			}
			{
				tax = new JTextField();
				getContentPane().add(tax);
				tax.setBounds(364, 236, 77, 30);
			}
			{
				total = new JTextField();
				getContentPane().add(total);
				total.setBounds(362, 278, 81, 28);
			}
			{
				taxlbel = new JLabel();
				getContentPane().add(taxlbel);
				taxlbel.setText("Tax: $");
				taxlbel.setBounds(318, 244, 44, 15);
			}
			{
				totalLbel = new JLabel();
				getContentPane().add(totalLbel);
				getContentPane().add(getCust());
				getContentPane().add(getCustField1());
				getContentPane().add(getSearchbtn());
				getContentPane().add(getShowbtn());
				getContentPane().add(getOrders());
				getContentPane().add(getSubtotal());
				getContentPane().add(getSubtotalField());
				totalLbel.setText("Total: $");
				totalLbel.setBounds(313, 282, 47, 19);
			}
			pack();
			this.setSize(515, 595);
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}
	
	private ButtonGroup getButtonGroup1() {
		if(buttonGroup1 == null) {
			buttonGroup1 = new ButtonGroup();
		}
		return buttonGroup1;
	}
	
	private ButtonGroup getButtonGroup2() {
		if(buttonGroup2 == null) {
			buttonGroup2 = new ButtonGroup();
		}
		return buttonGroup2;
	}

	@Override
	public void actionPerformed(ActionEvent action) {
        if( action.getSource( ) == completebtn){
        	String dataSourceName = "javaLabDB";
    		String dbUrl = "jdbc:odbc:" + dataSourceName;
    		
    		try{
    			s2=custField1.getText();
    			
    			if(sizebox.isSelected()){
    				s3= "Regular";
    			}
    			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    			
    			Connection con = DriverManager.getConnection(dbUrl,"","");
    			
    			Statement s = con.createStatement();
    			
    			
    			s.execute("drop table Orders");
    			s.execute("create table Orders(" + 
    					"Cust_name TEXT,Size TEXT, Bread TEXT, Meat TEXT, Drink TEXT)");
    			s.executeUpdate("insert into Orders(Cust_name,Size)values('"+s2+"','"+s3+"')");
    			
    		
    			s.close();
    			con.close();
    		}catch(Exception e){
    			System.out.println(e);
    		}
        }
	}

	@Override
	public void itemStateChanged(ItemEvent item) {
		
	DecimalFormat demfrmt = new DecimalFormat ("0.00");
		
		if(sizebox.isSelected())
	    {
	    	
			ftax = (reg * btax);
			price = reg + ftax;
			sub = reg;
	    	tax.setText(demfrmt.format(ftax));
	    	subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
	    }
		
	    if(sizebox2.isSelected())
	    {
			ftax = foot * btax;
			price = foot + ftax;
			sub = foot;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
	    }
		
		if(meatbox.isSelected())
		{
			sub = sub + meat;
			ftax = ftax + btax;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		if(meatbox2.isSelected())
		{
			sub = sub + meat;
			ftax += 0.10;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		if(meatbox3.isSelected())
		{
			sub = sub + meat;
			ftax += 0.10;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		if(meatbox4.isSelected())
		{
			sub = sub + meat;
			ftax += 0.10;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		if(meatbox5.isSelected())
		{
			sub += meat;
			ftax += 0.10;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		if(meatbox6.isSelected())
		{
			sub += meat;
			ftax += 0.10;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
	  
		if( jComboBox1.getSelectedIndex( ) == 0 )
		{ 
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
	    if(jComboBox1.getSelectedIndex() == 1)
		{
	    	sub += soda;
	    	ftax += btax;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
	    
	    if(jComboBox1.getSelectedIndex() == 2)
		{
	    	sub += soda;
	    	ftax += btax;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
	    
	    if(jComboBox1.getSelectedIndex() == 3)
		{
	    	sub += soda;
	    	ftax += btax;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
	    
	    if(jComboBox1.getSelectedIndex() == 4)
		{
	    	sub += soda;
	    	ftax += btax;
			price = sub + ftax;
			tax.setText(demfrmt.format(ftax));
			subtotalField.setText(demfrmt.format(sub));
	    	total.setText(demfrmt.format(price));
		}
		
		
	}
	
	private JLabel getCust() {
		if(Cust == null) {
			Cust = new JLabel();
			Cust.setText("Name:");
			Cust.setBounds(24, 209, 43, 20);
		}
		return Cust;
	}
	
	private JTextField getCustField1() {
		if(custField1 == null) {
			custField1 = new JTextField();
			custField1.setBounds(67, 208, 135, 22);
		}
		return custField1;
	}
	
	private JButton getSearchbtn() {
		if(searchbtn == null) {
			searchbtn = new JButton();
			searchbtn.setText("Search Orders by Name");
			searchbtn.setBounds(24, 244, 160, 35);
		}
		return searchbtn;
	}
	
	private JButton getShowbtn() {
		if(showbtn == null) {
			showbtn = new JButton();
			showbtn.setText("Show All");
			showbtn.setBounds(24, 323, 160, 35);
		}
		return showbtn;
	}
	
	private JTextField getOrders() {
		if(orders == null) {
			orders = new JTextField();
			orders.setBounds(24, 364, 463, 177);
		}
		return orders;
	}
	
	private JLabel getSubtotal() {
		if(subtotal == null) {
			subtotal = new JLabel();
			subtotal.setText("Subtotal: $");
			subtotal.setBounds(307, 200, 58, 18);
		}
		return subtotal;
	}
	
	private JTextField getSubtotalField() {
		if(subtotalField == null) {
			subtotalField = new JTextField();
			subtotalField.setBounds(365, 196, 76, 28);
		}
		return subtotalField;
	}

}
