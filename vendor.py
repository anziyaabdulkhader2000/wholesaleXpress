from flask import * 
from database import*

from datetime import date



vendor=Blueprint('vendor',__name__)

@vendor.route('/vendorhome')
def vendorhome():
  
    return render_template('vendorhome.html')

@vendor.route('/vendor_viewbookings')
def vendor_viewbookings():
	data={}
	vid=session['vendor_id']
	q="SELECT * FROM `purchase_child` INNER JOIN `purchase_master` USING (`purchase_master_id`) INNER JOIN `vendor` USING (`vendor_id`) INNER JOIN `product` USING (`product_id`) where status='pending'"
	res=select(q)
	data['purchaseview']=res
	


	if "action" in request.args:
		action=request.args['action']
		omid=request.args['omid']


	else:
		action=None

	if action=='accept':
		q="update purchase_master  set status='Accept' where purchase_master_id='%s'"%(omid)
		update(q)
		return redirect(url_for('vendor.vendor_viewbookings',vid=vid))

	return render_template('vendor_viewbookings.html',data=data)