package com.zyj.api.service.impl;

import java.util.UUID;

import org.springframework.stereotype.Service;
import com.zyj.api.model.MovieMessage;
import com.zyj.api.service.ImageService;
import com.zyj.framework.service.impl.CommonFunction;

@Service("ImageService")
public class ImageServiceImpl extends CommonFunction implements ImageService {

	@Override
	public int insert(MovieMessage image) {
		// TODO Auto-generated method stub
        int number =  this.insert("MovieMessage.insert",image);
        return number;
	}

}
