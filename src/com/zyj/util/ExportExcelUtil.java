package com.zyj.util;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class ExportExcelUtil {
	
	private static Log log = LogFactory.getLog(ExportExcelUtil.class);
	
	/**
	 * 生成Excel文件,列头在第一行,如非第一行不适用
	 * 可生成多个sheet页 
	 * @param response
	 * @param fileName		文件名称
	 * @param colNames		列头名称数组,小标需要对应
	 * @param rowList		数据list,小标需要对应
	 * @param loginUser		制表人,取登录用户
	 * @param sheetRows		设定一个sheet 多少行数据
	 */
	public  void exportDataExcel(HttpServletResponse response,String fileName,String[] colNames ,
			List<Map<String,Object>> rowList,String loginUser,int sheetRows){
		try{
			String excelName = URLEncoder.encode(fileName,"utf-8");
			 response.setContentType("application/vnd.ms-excel");
			 response.setHeader("Content-Disposition","attachment; filename="+DateUtil.getCurrentTimeMillis("yyyyMMddHHmmss")+".xls");
			 OutputStream os=response.getOutputStream(); 
			 WritableWorkbook w = Workbook.createWorkbook(os);	
			 
			 int sizel = rowList.size();
			 
			 int sheetLen = (int)Math.ceil((double)sizel/sheetRows);		//向上取整
			 if(sheetLen>0){
				 for(int q=0;q<sheetLen;q++){
					 CreateSheets(fileName, colNames, rowList, loginUser, sheetRows, w, q);
				 }
			 }else{
				 CreateSheets(fileName, colNames, rowList, loginUser, sheetRows, w, 0);
			 }
			 w.write();
			 w.close();
		}catch(Exception e){
			log.error(fileName+" export excel Exception!"+e.getMessage());
			log.error("ClientAbortException:  java.net.SocketException: Connection reset (not Attention)");
//			e.printStackTrace();
		}
		
	}

	/**
	 * 生成单个sheet 页
	 * @param fileName  	sheet名称
	 * @param colNames		列名称数组,小标需要对应
	 * @param rowList		数据List, 小标需要对应
	 * @param loginUser		制表人,取登录人
	 * @param sheetRows		设定一个sheet 多少行数据
	 * @param w				WritableWorkbook 对象	
	 * @param q				当前sheet 小标
	 * @throws WriteException
	 * @throws RowsExceededException
	 */
	private  void CreateSheets(String fileName, String[] colNames, List<Map<String,Object>> rowList,
			String loginUser, int sheetRows, WritableWorkbook w, int q) throws WriteException, RowsExceededException {
		
		 WritableSheet s = w.createSheet(fileName+"_"+q, q);	
		 int cols= colNames.length;
		 
		 int colsInitRow = 0 ;		//列头起始行
		 
		 for(int i=0;i<cols;i++){
			 s.setColumnView(i, 25);
			 s.addCell(new Label(i,colsInitRow, colNames[i],ExcelFormatUtil.sheetContentTitle()));		// 直接列头在第一行
		 }
		 int indexFooter = 2;
		 if(rowList!=null && rowList.size()>0){
			 int i = 0;
			 int j = colsInitRow+1;
			 int initRows = q*sheetRows;
			 
			 int n = 0;
			 
			 int sizel = rowList.size();
			 int sheetLen = (int)Math.ceil((double)sizel/sheetRows);		//向上取整
			 
			 if(rowList.size()>sheetRows){
				 if(q<sheetLen-1)
					 n = initRows+sheetRows;
				 else{
					 int endRows = sizel%sheetRows;
					 n = initRows+endRows;
				 }
			 }
			 else n = rowList.size();
			 
			 for(int k=initRows;k<n;k++){
				 Map<String,Object> su =  (Map<String, Object>) rowList.get(k);
				 if(k%2==0){
//					 s.addCell(new Label(i,j,String.valueOf(k+1),ExcelFormatUtil.sheetContent_one()));	//序号
					 s.addCell(new Label(0,j,String.valueOf(su.get("bettingCode")==null? "" : su.get("bettingCode")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(1,j,String.valueOf(su.get("bettingDate")==null? "" : su.get("bettingDate")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(2,j,String.valueOf(su.get("account")==null? "" : su.get("account")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(3,j,String.valueOf(su.get("memberName")==null? "" : su.get("memberName")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(4,j,String.valueOf(su.get("memberReturnRatio")==null? "" : su.get("memberReturnRatio")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(5,j,String.valueOf(su.get("period")==null? "" : su.get("period")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(6,j,String.valueOf(su.get("plateName")==null? "" : su.get("plateName")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(7,j,String.valueOf(su.get("loteryName")==null? "" : su.get("loteryName")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(8,j,String.valueOf(su.get("bettingDetails")==null? "" : su.get("bettingDetails")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(9,j,String.valueOf(su.get("odds")==null? "" : su.get("odds")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(10,j,String.valueOf(su.get("oddsPoor")==null? "" : su.get("oddsPoor")),ExcelFormatUtil.sheetContent_one()));
					 if(su.get("moneyType")!=null){
						 if("0".equals(su.get("moneyType"))){
							 s.addCell(new Label(11,j,"信用额度",ExcelFormatUtil.sheetContent_one()));
						 }else if("1".equals(su.get("moneyType"))){
							 s.addCell(new Label(11,j,"快开额度",ExcelFormatUtil.sheetContent_one()));
						 }else{
							 s.addCell(new Label(11,j,"",ExcelFormatUtil.sheetContent_one()));
						 }
					 }else{
						 s.addCell(new Label(11,j,"",ExcelFormatUtil.sheetContent_one()));
					 }
					 s.addCell(new Label(12,j,String.valueOf(su.get("creditMoney")==null? "" : su.get("creditMoney")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(13,j,String.valueOf(su.get("quickMoney")==null? "" : su.get("quickMoney")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(14,j,String.valueOf(su.get("bettingMoney")==null? "" : su.get("bettingMoney")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(15,j,String.valueOf(su.get("ratio")==null? "" : su.get("ratio")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(16,j,String.valueOf(su.get("returnRatio")==null? "" : su.get("returnRatio")),ExcelFormatUtil.sheetContent_one()));
					 s.addCell(new Label(17,j,String.valueOf(su.get("mayWinMoney")==null? "" : su.get("mayWinMoney")),ExcelFormatUtil.sheetContent_one()));
					 if(su.get("op")!=null){
						 if("0".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"正常投注",ExcelFormatUtil.sheetContent_one()));
						 }else if("1".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"注单取消",ExcelFormatUtil.sheetContent_one()));
						 }else if("2".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"取消重建",ExcelFormatUtil.sheetContent_one()));
						 }else{
							 s.addCell(new Label(18,j,"",ExcelFormatUtil.sheetContent_one()));
						 }
					 }else{
						 s.addCell(new Label(18,j,"",ExcelFormatUtil.sheetContent_one()));
					 }
				 }else{
//					 s.addCell(new Label(i,j,String.valueOf(k+1),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(0,j,String.valueOf(su.get("bettingCode")==null? "" : su.get("bettingCode")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(1,j,String.valueOf(su.get("bettingDate")==null? "" : su.get("bettingDate")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(2,j,String.valueOf(su.get("account")==null? "" : su.get("account")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(3,j,String.valueOf(su.get("memberName")==null? "" : su.get("memberName")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(4,j,String.valueOf(su.get("memberReturnRatio")==null? "" : su.get("memberReturnRatio")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(5,j,String.valueOf(su.get("period")==null? "" : su.get("period")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(6,j,String.valueOf(su.get("plateName")==null? "" : su.get("plateName")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(7,j,String.valueOf(su.get("loteryName")==null? "" : su.get("loteryName")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(8,j,String.valueOf(su.get("bettingDetails")==null? "" : su.get("bettingDetails")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(9,j,String.valueOf(su.get("odds")==null? "" : su.get("odds")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(10,j,String.valueOf(su.get("oddsPoor")==null? "" : su.get("oddsPoor")),ExcelFormatUtil.sheetContent_two()));
					 if(su.get("moneyType")!=null){
						 if("0".equals(su.get("moneyType"))){
							 s.addCell(new Label(11,j,"信用额度",ExcelFormatUtil.sheetContent_two()));
						 }else if("1".equals(su.get("moneyType"))){
							 s.addCell(new Label(11,j,"快开额度",ExcelFormatUtil.sheetContent_two()));
						 }else{
							 s.addCell(new Label(11,j,"",ExcelFormatUtil.sheetContent_two()));
						 }
					 }else{
						 s.addCell(new Label(11,j,"",ExcelFormatUtil.sheetContent_two()));
					 }
					 s.addCell(new Label(12,j,String.valueOf(su.get("creditMoney")==null? "" : su.get("creditMoney")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(13,j,String.valueOf(su.get("quickMoney")==null? "" : su.get("quickMoney")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(14,j,String.valueOf(su.get("bettingMoney")==null? "" : su.get("bettingMoney")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(15,j,String.valueOf(su.get("ratio")==null? "" : su.get("ratio")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(16,j,String.valueOf(su.get("returnRatio")==null? "" : su.get("returnRatio")),ExcelFormatUtil.sheetContent_two()));
					 s.addCell(new Label(17,j,String.valueOf(su.get("mayWinMoney")==null? "" : su.get("mayWinMoney")),ExcelFormatUtil.sheetContent_two()));
					 if(su.get("op")!=null){
						 if("0".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"正常投注",ExcelFormatUtil.sheetContent_two()));
						 }else if("1".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"注单取消",ExcelFormatUtil.sheetContent_two()));
						 }else if("2".equals(String.valueOf(su.get("op")))){
							 s.addCell(new Label(18,j,"取消重建",ExcelFormatUtil.sheetContent_two()));
						 }else{
							 s.addCell(new Label(18,j,"",ExcelFormatUtil.sheetContent_two()));
						 }
					 }else{
						 s.addCell(new Label(18,j,"",ExcelFormatUtil.sheetContent_two()));
					 }
				 }
				 i = 0;
				 ++j;
			 }
			 indexFooter = j  + 1;
		 }
		s.addCell(new Label(0,indexFooter,"制表人:",ExcelFormatUtil.sheetFooter()));
		s.addCell(new Label(1,indexFooter,loginUser,ExcelFormatUtil.sheetFooter()));
		s.addCell(new Label(2,indexFooter,"制表日期:",ExcelFormatUtil.sheetFooter()));
		s.addCell(new Label(3,indexFooter,DateUtil.DateToString(new Date(),"yyyy-MM-dd HH:mm:ss"),ExcelFormatUtil.sheetFooter()));
	}
}
