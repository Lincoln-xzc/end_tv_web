package com.zyj.api.action;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.ImageService;
import com.zyj.api.util.FileUtil;
import com.zyj.framework.action.BaseAction;
import com.zyj.framework.bean.ApiResultBean;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("image")
public class ImageAction extends BaseAction{
	       
	    @Autowired
	    private ImageService imageService;
	  
	    //上传图片
		@RequestMapping(value="/upload", method=RequestMethod.POST)
		@ResponseBody
		public Object saveImage(HttpServletRequest request, HttpServletResponse response, @RequestParam("file") MultipartFile file) throws IOException{
		        JSONObject obj = new JSONObject(); 
				String path = "F:\\tv_photos\\main\\";
				UUID uuid = UUID.randomUUID();
				String str = uuid.toString();
		        String id = str.substring(0, 8) + str.substring(9, 13) + str.substring(14, 18) + str.substring(19, 23) + str.substring(24);
				
				String originName = file.getOriginalFilename();
				String type = originName.substring(originName.lastIndexOf("."),originName.length());
				String newName = id +type;
				String url = path +newName;
			    String name = originName.substring(0, originName.lastIndexOf("."));
				try {
					if(FileUtil.upload(file, path, newName)){
					  MovieMessage image = new MovieMessage();
					  image.setId(id);
					  image.setUrl(url);
					  image.setName(name);
					  int number = imageService.insert(image);
					  obj.put("data",image);
					  obj.put("code", ApiResultBean.SUCCESS_CODE);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					obj.put("code", ApiResultBean.ERROR_CODE);
				}
			
			return obj;
			
		}
}
