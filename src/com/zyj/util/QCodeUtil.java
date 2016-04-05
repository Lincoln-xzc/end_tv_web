package com.zyj.util;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

/**
 * ZXingUtil.java
 * 
 */

public class QCodeUtil {
	
	public static BitMatrix createQCode(String content, int width, int height){
		BitMatrix resMatrix = null;
		try {
			Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix matrix = new MultiFormatWriter().encode(content,
					BarcodeFormat.QR_CODE, width, height, hints);// 生成矩阵
			int[] rec = matrix.getEnclosingRectangle();
			int resWidth = rec[2] + 1;
			int resHeight = rec[3] + 1;

			resMatrix = new BitMatrix(resWidth, resHeight);
			resMatrix.clear();
			for (int i = 0; i < resWidth; i++) {
				for (int j = 0; j < resHeight; j++) {
					if (matrix.get(i + rec[0], j + rec[1]))
						resMatrix.set(i, j);
				}
			}
		} catch (Exception e) {
		}
		return resMatrix;
	}
	
	public static void main(String[] args){
		String filePath = "D://";
		String fileName = "zxing.png";
		String format = "png";// 图像类型
		BitMatrix bitMatrix = QCodeUtil.createQCode("生成矩阵", 200, 200);// 生成矩阵
		Path path = FileSystems.getDefault().getPath(filePath, fileName);
		try {
			MatrixToImageWriter.writeToPath(bitMatrix, format, path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("输出成功.");
	}

}
