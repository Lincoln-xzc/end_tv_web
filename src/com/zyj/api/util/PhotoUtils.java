package com.zyj.api.util;

import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PhotoUtils {
	public void showPicture(HttpServletRequest request, HttpServletResponse response, String path) throws Exception{
		String pic_path =path;
		FileInputStream is = new FileInputStream(pic_path);
		int i = is.available();//获取文件大小
		byte data[] = new byte[i];
		is.read(data);
		is.close();
		response.setContentType("image/*");//设置返回的文件类型
		OutputStream ops = response.getOutputStream();//得到像客户端输出的二进制数据的对象
		ops.write(data);
		ops.close();
	}
}
