package com.zyj.util;

import java.awt.Color;

import jxl.format.Alignment;
import jxl.format.Border;
import jxl.format.BorderLineStyle;
import jxl.format.Colour;
import jxl.format.UnderlineStyle;
import jxl.format.VerticalAlignment;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WriteException;

public class ExcelFormatUtil {

	
	static int charTitle = 10;// 标题字体大小
	static int charNormal = 10;// 标题字体大小
	// 用于标题
	public static WritableCellFormat sheetTitle() {
		
		jxl.write.WritableFont titleFont = new jxl.write.WritableFont(WritableFont.createFont("宋体"), 20, WritableFont.BOLD);
		try {
			titleFont.setColour(Colour.RED);
			titleFont.setUnderlineStyle(UnderlineStyle.SINGLE);
		} catch (WriteException e1) {		
			e1.printStackTrace();
		}
		jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(titleFont);
		try {
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			titleFormat.setAlignment(Alignment.CENTRE); // 水平对齐
			titleFormat.setWrap(false); // 是否换行
			titleFormat.setBackground(Colour.WHITE);// 背景色暗灰-25%
		} catch (WriteException e) {
			e.printStackTrace();
		}
		return titleFormat;

	}
	
	// 用于查询条件
	public static WritableCellFormat sheetCondition() {
		
		jxl.write.WritableFont titleFont = new jxl.write.WritableFont(WritableFont.createFont("宋体"), 10, WritableFont.BOLD);
		
		try {
			titleFont.setColour(Colour.SEA_GREEN);
		} catch (WriteException e1) {			
			e1.printStackTrace();
		}

		jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(titleFont);
		try {
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			titleFormat.setAlignment(Alignment.CENTRE); // 水平对齐
			titleFormat.setWrap(true); // 是否换行
			titleFormat.setBackground(Colour.WHITE);// 背景色暗灰-25%
		} catch (WriteException e) {
			e.printStackTrace();
		}
		return titleFormat;

	}
	
	// 用于合计
	public static WritableCellFormat sheetSum() {
		
		jxl.write.WritableFont titleFont = new jxl.write.WritableFont(WritableFont.createFont("宋体"), charTitle, WritableFont.BOLD);
		
		try {
			titleFont.setColour(Colour.WHITE);
		} catch (WriteException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(titleFont);
		try {
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			titleFormat.setAlignment(Alignment.CENTRE); // 水平对齐
			titleFormat.setWrap(true); // 是否换行
			titleFormat.setBackground(Colour.GREEN);// 背景色暗灰-25%
		} catch (WriteException e) {
			e.printStackTrace();
		}
		return titleFormat;

	}
	
	// 用于for中的标题
	public static WritableCellFormat sheetContentTitle() {
		
		jxl.write.WritableFont titleFont = new jxl.write.WritableFont(WritableFont.createFont("宋体"), charTitle, WritableFont.BOLD);
		try {
			titleFont.setColour(Colour.WHITE);
		} catch (WriteException e1) {		
			e1.printStackTrace();		
			}
		jxl.write.WritableCellFormat titleFormat = new jxl.write.WritableCellFormat(titleFont);
		try {
			titleFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			titleFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			titleFormat.setAlignment(Alignment.CENTRE); // 水平对齐
			titleFormat.setWrap(true); // 是否换行			
			titleFormat.setBackground(Colour.TURQUOISE);// 背景色暗灰-25%			
			
		} catch (WriteException e) {
			e.printStackTrace();
		}
		return titleFormat;

	}
	
	//用于正文_one
	public static WritableCellFormat sheetContent_one(){		
		   WritableFont normalFont = new WritableFont(WritableFont.createFont("宋体"), charNormal);				
		   jxl.write.WritableCellFormat normalFormat = new jxl.write.WritableCellFormat(normalFont);
		   try {
			normalFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			normalFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			normalFormat.setAlignment(Alignment.CENTRE);// 水平对齐
			normalFormat.setWrap(true); // 是否换行
		} catch (WriteException e) {			
			e.printStackTrace();
		} 
		 
		return normalFormat;

	}
	
	//用于正文_two
	public static WritableCellFormat sheetContent_two(){		
		   WritableFont normalFont = new WritableFont(WritableFont.createFont("宋体"), charNormal);
		   try {
			   normalFont.setColour(Colour.BLACK);
			} catch (WriteException e1) {		
				e1.printStackTrace();		
				}
		   jxl.write.WritableCellFormat normalFormat = new jxl.write.WritableCellFormat(normalFont);
		   try {
			normalFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			normalFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			normalFormat.setAlignment(Alignment.CENTRE);// 水平对齐
			normalFormat.setWrap(true); // 是否换行
			normalFormat.setBackground(Colour.LIGHT_TURQUOISE);// 背景色暗灰-25%	
		} catch (WriteException e) {			
			e.printStackTrace();
		} 
		 
		return normalFormat;

	}
	
	//用于报表尾部
	public static WritableCellFormat sheetFooter(){		
		   WritableFont normalFont = new WritableFont(WritableFont.createFont("宋体"), charNormal);
		   try {
			   normalFont.setColour(Colour.GRAY_25);
			} catch (WriteException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		   jxl.write.WritableCellFormat normalFormat = new jxl.write.WritableCellFormat(normalFont);
		   try {
			normalFormat.setBorder(Border.ALL, BorderLineStyle.THIN);// 线条
			normalFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
			normalFormat.setAlignment(Alignment.CENTRE);// 水平对齐
			normalFormat.setWrap(true); // 是否换行
		} catch (WriteException e) {			
			e.printStackTrace();
		} 
		 
		return normalFormat;

	}

}
