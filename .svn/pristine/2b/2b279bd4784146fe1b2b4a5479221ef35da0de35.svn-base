package com.zyj.util;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.apache.cxf.common.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import sun.misc.BASE64Decoder;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.zyj.global.Constants;

public class ImgUtil {
	
	/**
	 * 将文件保存至服务器
	 * */
	public static String saveImg(String path, String img){
		try {
			// 图片保存路径
			String datapath =  Constants.FILE_ROOT_NAME+"/"+path;
			String realPath = FileUtil.getBaseFilePath()+datapath;
			
			String date = DateUtil.getCrruentTime("yyyyMMddHHmmss")+StringUtil.randomABC(6);
			String filename = date+".jpg";
			File f = new File(realPath);
			// 创建文件夹
			if (!f.exists()){
				f.mkdirs();
			}
			
			byte[] imgBuffer = new BASE64Decoder().decodeBuffer(img);
			FileOutputStream fos = new FileOutputStream(new File(f,filename));
			fos.write(imgBuffer);
			fos.flush();
			fos.close();
			
			String headImg = datapath +"/"+ filename;
			return headImg;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("====================== 图片保存失败 ======================");
		}
		
		
		return "error";
	}
	
	
	/**
	 * 将临时文件夹下的文件保存至正式文件夹，并删除临时文件夹下的文件
	 * */
	public static String moveAndDelFile(String srcPath, Date date){
		String realPath = "";
		try{
			String dateStr = DateUtil.DateToString(date, "yyyyMMddHHmmss");
			// 正式保存的路径
			String saveActImgPath = srcPath.replace("tmp/", dateStr);
			// 绝对路径
			String saveActImgDir = FileUtil.getBaseFilePath()+saveActImgPath.substring(0,saveActImgPath.lastIndexOf("/"));
			File srcFile = new File(FileUtil.getBaseFilePath()+srcPath);
			//File srcFile = new File(srcPath);
			// 保存文件的文件夹
			File destDir = new File(saveActImgDir);
			if (!destDir.exists()) {  
				destDir.mkdirs();  
	        } 
			FileUtils.copyFileToDirectory(srcFile, destDir);
			
	        // 路径为文件且不为空则进行删除  
	        if (srcFile.isFile() && srcFile.exists()) {  
	        	srcFile.delete();  
	        }
	        
	        realPath = saveActImgPath;
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("======================将临时文件保存至正式文件夹出错======================");
		}
		
		return realPath;
	}
	
	
	/**
	 * 将临时文件夹下的文件保存至指定正式文件夹，并删除临时文件夹下的文件
	 * */
	public static String moveAndDelFile(String srcPath, String dirPath, Date date){
		String realPath = "";
		try{
			String dateStr = DateUtil.DateToString(date, "yyyyMMddHHmmss");
			// 正式保存的路径
			String saveActImgPath = srcPath.replace("activity/tmp/", dirPath+dateStr);
			// 绝对路径
			String saveActImgDir = FileUtil.getBaseFilePath()+saveActImgPath.substring(0,saveActImgPath.lastIndexOf("/"));
			File srcFile = new File(FileUtil.getBaseFilePath()+srcPath);
			//File srcFile = new File(srcPath);
			// 保存文件的文件夹
			File destDir = new File(saveActImgDir);
			if(!srcFile.exists()){
				//System.out.println("文件不存在，直接返回空''");
				return "";
			}
			if (!destDir.exists()) {  
				destDir.mkdirs();  
	        } 
			FileUtils.copyFileToDirectory(srcFile, destDir);
			
	        // 路径为文件且不为空则进行删除  
	        if (srcFile.isFile() && srcFile.exists()) {  
	        	srcFile.delete();  
	        }
	        
	        realPath = saveActImgPath;
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("======================将临时文件保存至正式文件夹出错======================");
		}
		
		return realPath;
	}
	
	/**
	 * @Description: 将临时文件夹下的文件保存至指定正式文件夹，并删除临时文件夹下的文件
	 * @param srcPath：临时文件路径 /filialPietyFile/tmp/a.jpg
	 * @param dirPath：tmp 替换路径 
	 * @return
	 */
	public static String moveTmpImg(String srcPath, String dirPath, Date date){
		return moveTmpImg(srcPath, dirPath, DateUtil.DateToString(date, "yyyyMMddHHmmss"),false,null,null);
	}
	
	/**
	 * @Description: 将临时文件夹下的文件保存至指定正式文件夹，并删除临时文件夹下的文件
	 * @param srcPath：临时文件路径 /filialPietyFile/tmp/a.jpg
	 * @param dirPath：tmp 替换路径 
	 * @param needSnippet: 是否需要压缩
	 * @param width 缩放的宽度
     * @param height 缩放的高度
	 * @return
	 */
	public static String moveTmpImg(String srcPath, String dirPath, String dateStr,
			boolean needSnippet, Float width, Float height){
		String realPath = "";
		try{
			// 正式保存的路径
			String saveActImgPath = srcPath.replace("tmp/", dirPath+dateStr+"/");
			// 绝对路径
			String saveActImgDir = FileUtil.getBaseFilePath()+saveActImgPath.substring(0,saveActImgPath.lastIndexOf("/"));
			File srcFile = new File(FileUtil.getBaseFilePath()+srcPath);
			//File srcFile = new File(srcPath);
			// 保存文件的文件夹
			File destDir = new File(saveActImgDir);
			if(!srcFile.exists()){
//				System.out.println("文件不存在，直接返回空''");
				return "";
			}
			if (!destDir.exists()) {
				destDir.mkdirs();  
	        } 
			FileUtils.copyFileToDirectory(srcFile, destDir);
			if(needSnippet && width!=null && height!=null){
				//图片压缩
				String imgName = srcPath.substring(srcPath.lastIndexOf("/"));
				int site = imgName.lastIndexOf(".");
				String name = imgName.substring(0,site);
				String ext = imgName.substring(site);
				createThumbnail(FileUtil.getBaseFilePath()+srcPath, saveActImgDir+name+"_s"+ext, 
						width, height);
			}
	        // 路径为文件且不为空则进行删除  
	        if (srcFile.isFile() && srcFile.exists()) {  
	        	srcFile.delete();  
	        }
	        
	        realPath = saveActImgPath;
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("======================将临时文件保存至正式文件夹出错======================");
		}
		
		return realPath;
	}
	
	/**
	 * @Description: 将文件移动到临时文件夹下
	 * @param srcPath：临时文件路径 /filialPietyFile/tmp/a.jpg
	 * @return
	 */
	public static void moveImgToTmp(String srcPath){
		String realPath = "";
		try{
			// 绝对路径
			String saveActImgDir = FileUtil.getBaseFilePath()+Constants.FILE_ROOT_NAME+"/tmp";
			File srcFile = new File(FileUtil.getBaseFilePath()+srcPath);
			//File srcFile = new File(srcPath);
			// 保存文件的文件夹
			File destDir = new File(saveActImgDir);
			if(!srcFile.exists()){
//				System.out.println("文件不存在，直接返回空''");
				return ;
			}
			if (!destDir.exists()) {  
				destDir.mkdirs();  
	        }
			FileUtils.copyFileToDirectory(srcFile, destDir);
			
	        // 路径为文件且不为空则进行删除  
	        if (srcFile.isFile() && srcFile.exists()) {  
	        	srcFile.delete();  
	        }
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("======================将文件移到临时文件夹出错======================");
		}
		
	}
	
	/**
	 * @Description: 删除文件、文件夹
	 * @param path
	 */
	public static void deleteFile(String path){
		if(StringUtils.isEmpty(path))
			return;
		File file = new File(FileUtil.getBaseFilePath()+path);
		try {
			if(file!=null && file.isDirectory())
				FileUtils.deleteDirectory(file);
			else if(file!=null && file.exists())
				file.delete();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
     * 创建图片缩略图(等比缩放)
     * 
     * @param src  源图片文件完整路径
     * @param dist 目标图片文件完整路径
     * @param width 缩放的宽度
     * @param height 缩放的高度
     */
    public static void createThumbnail(String src, String dist, float width,
            float height) {
        try {
            File srcfile = new File(src);
            if (!srcfile.exists()) {
//                System.out.println("文件不存在");
                return;
            }
            BufferedImage image = ImageIO.read(srcfile);
            // 获得缩放的比例
            double ratio = 1.0;
            // 判断如果高、宽都不大于设定值，则不处理
            if (image.getHeight() > height || image.getWidth() > width) {
                if (image.getHeight() > image.getWidth()) {
                    ratio = height / image.getHeight();
                } else {
                    ratio = width / image.getWidth();
                }
            }
            // 计算新的图面宽度和高度
            int newWidth = (int) (image.getWidth() * ratio);
            int newHeight = (int) (image.getHeight() * ratio);

            BufferedImage bfImage = new BufferedImage(newWidth, newHeight,
                    BufferedImage.TYPE_INT_RGB);
            bfImage.getGraphics().drawImage(
                    image.getScaledInstance(newWidth, newHeight,
                            Image.SCALE_SMOOTH), 0, 0, null);

            FileOutputStream os = new FileOutputStream(dist);
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
            encoder.encode(bfImage);
            os.close();
        } catch (Exception e) {
        	e.printStackTrace();
            System.out.println("创建缩略图发生异常" + e.getMessage());
        }
    }
    
    
    /**
     * springmvc MultipartFile 文件上传
     * */
    public static String getUploadFilePath(MultipartFile mulFile, String physicalPath, 
    		String fileURLPath){
    	String msg = "";
    	try {
			if (mulFile == null) {
				msg = "文件不能为空";
				return msg;
			}
			String originalFilename = mulFile.getOriginalFilename();
			if (StringUtil.isEmpty(originalFilename)) {
				msg = "文件不能为空";
				return msg;
			}
			String newFileName = UUID.randomUUID().toString().replace("-", "") + originalFilename.substring(originalFilename.lastIndexOf("."));
			
			File parentFolder = new File(physicalPath);
			if (!parentFolder.exists())
				parentFolder.mkdirs();
			
			File newFile = new File(physicalPath + File.separator + newFileName);
			mulFile.transferTo(newFile);
			fileURLPath = fileURLPath + File.separator + newFileName;
		} catch (Exception e) {
			e.printStackTrace();
			
			msg = "系统出错";
			return msg;
		}
    	return fileURLPath;
    }
    
    /**
	 * 将临时文件夹下的文件保存至指定正式文件夹，并删除临时文件夹下的文件
	 * */
	public static void moveAndDelFile(String srcPath, String dirPath){
		try{
			System.out.println("xxxxxxxxxxxxxxxx");
			String baseUrl = StringUtil.getBaseFilePath();
			File srcFile = new File(baseUrl+srcPath);
			
			// 保存文件的文件夹
			File destDir = new File(baseUrl+dirPath);
			System.out.println("img file exists : "+srcFile.exists()+"=========================");
			if(!srcFile.exists()){
				System.out.println("文件不存在，直接返回空''");
			}else{
				if (!destDir.exists()) {  
					destDir.mkdirs();  
		        } 
				FileUtils.copyFileToDirectory(srcFile, destDir);
				
		        // 路径为文件且不为空则进行删除  
		        if (srcFile.isFile() && srcFile.exists()) {  
		        	srcFile.delete();  
		        }
			}
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("======================将临时文件保存至正式文件夹出错======================");
		}
		
	}
	
	public static void main(String args[]){
		/*String srcPath = "E:/tmp/test.jpg";
		moveAndDelFile(srcPath, new Date());*/
	}

}
