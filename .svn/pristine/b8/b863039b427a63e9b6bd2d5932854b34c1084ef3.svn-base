package com.zyj.util;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.zyj.global.Constants;

import sun.misc.BASE64Decoder;

public class UploadUtil
{

    public UploadUtil()
    {
    }
    
    /**
     * 把base64图片流转为图片
     * @param datapath 要保存图片的目录  比如  /image
     * @param img 图片base64数据流字符串
     * @return
     */
    public static String uploadImgByBase64(String datapath,String img){
    	String url = "";
    	try{
    		if(StringUtil.isNotEmpty(img)){
				String filename = DateUtil.getCrruentTime("yyyyMMddHHmmss")+StringUtil.randomABC(6)+".jpg";
				String realPath = FileUtil.getBaseFilePath()+"/"+datapath;
				url = datapath +"/"+ filename;
				File newFile = new File(realPath,filename);
				FileUtils.writeByteArrayToFile(newFile, new BASE64Decoder().decodeBuffer(img));
    			
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
		
    	return url;
    }
    
    /**
     * 把base64图片流转为图片 --- 重载
     * @param datapath 要保存图片的目录  比如  /image
     * @param img 图片base64数据流字符串
     * @return 相对路径
     */
    public static String uploadImgByBase64(String datapath,String img, Object userId){
    	String url = "";
    	try{
    		if(StringUtil.isNotEmpty(img)){
				String filename = userId+".jpg";
				String realPath = FileUtil.getBaseFilePath()+"/"+datapath;
				url = datapath +"/"+ filename;
				File newFile = new File(realPath,filename);
				FileUtils.writeByteArrayToFile(newFile, new BASE64Decoder().decodeBuffer(img));
    			
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
		
    	return url;
    }
    
    /**
     * 把base64图片流转array为图片  返回图片地址array
     * @param datapath 要保存图片的目录  比如  /image
     * @param img 图片base64数据流字符串
     * @return
     */
    public static List<String> uploadImgByBase64Array(String datapath,List<String> imgArray){
    	List<String> urlArray = new ArrayList<String>();
    	try{
    		if(imgArray!=null && imgArray.size()>0){
    			for(String img : imgArray){
    				if(StringUtil.isNotEmpty(img)){
    	    			HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	    			String realPath = request.getSession().getServletContext().getRealPath(datapath);
    	    			String date = DateUtil.getCrruentTime("yyyyMMddHHmmss")+StringUtil.randomABC(6);
    	    			String filename = date+".jpg";
    	    			File f = new File(realPath);
    	    			if (!f.exists()){
    	    				f.mkdirs();
    	    			}
    	    			byte[] imgBuffer = new BASE64Decoder().decodeBuffer(img);
    	    			FileOutputStream fos = new FileOutputStream(new File(f,filename));
    	    			fos.write(imgBuffer);
    	    			fos.flush();
    	    			fos.close();
    	    			
    	    			String url = datapath + "/" +  filename;
    	    			urlArray.add(url);
    	    		}
    			}
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return urlArray;
    }

    public static void saveFile(String fileName, byte fileData[], int size, String dest)
        throws FileNotFoundException, IOException
    {
        if(!checkSize(size))
            throw new IOException((new StringBuilder(String.valueOf(size))).append(" is too large !").toString());
        if(!checkType(fileName))
            throw new IOException("Unvaildate type !");
        if(dest.equals("database"))
            saveToDb(fileName, fileData);
        if(dest.equals("file"))
            saveToFile(fileName, fileData);
    }

    private static void saveToDb(String s, byte abyte0[])
    {
    }

    private static void saveToFile(String fileName, byte fileData[])
        throws FileNotFoundException, IOException
    {
        OutputStream o = new FileOutputStream(fileName);
        o.write(fileData);
        o.close();
    }

    public static void delFile(String fileName, String dest)
        throws NullPointerException, SecurityException
    {
        if(dest.equals("database"))
            delFromDb(fileName);
        if(dest.equals("file"))
            delFromFile(fileName);
    }

    private static void delFromDb(String s)
    {
    }

    private static void delFromFile(String fileName)
        throws NullPointerException, SecurityException
    {
        File file = new File(fileName);
        if(file.exists())
            file.delete();
    }

    private static boolean checkSize(int size)
    {
        return size <= 1048576;
    }

    private static boolean checkType(String fileName)
    {
        for(int i = 0; i < TYPES.length; i++)
            if(fileName.toLowerCase().endsWith(TYPES[i]))
                return true;

        return false;
    }

    public static final String SAVE = "save";
    public static final String DELETE = "delete";
    public static final String DATABASE_DEST = "database";
    public static final String FILE_DEST = "file";
    private static final int MAX_SIZE = 1048576;
    private static final String TYPES[] = {
        ".jpg", ".gif", ".zip", ".rar", ".xls"
    };

}