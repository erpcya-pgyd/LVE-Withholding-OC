/*************************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                              *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2013 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Dixon Martinez www.erpconsultoresyasociados.com                    *
 *************************************************************************************/

package org.spin.model;

import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;

/**
 *	Callout BPartner TaxID and Value
 *  @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutBPartner extends CalloutEngine
{
	/**
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 15/10/2013, 09:48:38 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String taxID (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (isCalloutActive())		//	assuming it is resetting value
			return "";
		String taxID = null;
		if(mField.getColumnName().equals("TaxID")){
			taxID = mTab.get_ValueAsString("TaxID");
			if(taxID != null
					&& taxID.length() != 0){
				mTab.setValue("Value", taxID);
			}
		} else if(mField.getColumnName().equals("Value")){
			taxID = mTab.get_ValueAsString("Value");
			if(taxID != null
					&& taxID.length() != 0){
				mTab.setValue("TaxID", taxID);
			}
		}
		return "";
	}	//	TaxID	

}	//	CalloutBPartner
