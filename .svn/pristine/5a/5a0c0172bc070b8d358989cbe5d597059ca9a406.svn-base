package com.zyj.framework.exception;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.zyj.framework.bean.ApiResultBean;
import com.zyj.util.JsonUtil;

public class MyHandlerExceptionResolver implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception ex) {
		
		String header = request.getHeader("x-requested-with");
		if (StringUtils.isEmpty(header)) {
			request.setAttribute("msg", "网页有错误");
			ModelAndView view = new ModelAndView();
			view.setViewName("error");
			return view;
		}
		
		FilialPietyException exception = null;

		if (ex instanceof FilialPietyException) {
			exception = (FilialPietyException) ex;
		} else {
			exception = new FilialPietyException("未知异常");
		}

		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			Map<String, Object> resultMap = new HashMap<String, Object>();
			resultMap.put("code", ApiResultBean.ERROR_CODE);
			resultMap.put("msg", exception.getMessage());
			writer.write(JsonUtil.toJSONObject(resultMap).toString());
			writer.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}