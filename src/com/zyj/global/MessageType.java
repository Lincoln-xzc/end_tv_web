package com.zyj.global;
/**
 * @ClassName: MessageType
 * @Description:
 */

public class MessageType {
	
	/**
	 * 1、采购商 咨询结果
	 */
	public final static Integer PURCHASE_RESULT = 1;
	/**
	 * 2、分配咨询给专家
	 */
	public final static Integer DISTRIBUTE_CONSULT_EXPERT = 2;
	/**
	 * 3、专家解决方案结果
	 */
	public final static Integer SOLUTION_VERIFY_RESULT = 3;
	/**
	 * 4、供应商产品审核结果
	 */
	public final static Integer PRODUCT_VERIFY_RESULT = 4;

	private MessageType(){
		
	}
}
