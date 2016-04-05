package com.zyj.framework.servlet;

import com.zyj.framework.common.ValidateCode;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateCodeServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Cache-Control", "no-cache");

		String verifyCode = ValidateCode.generateTextCode(0, 4, null);
		request.getSession().setAttribute("validate_code", verifyCode);

		response.setContentType("image/jpeg");
		BufferedImage bim = ValidateCode.generateImageCode(verifyCode, 90, 30,
				3, true, Color.WHITE, Color.BLACK, null);
		ImageIO.write(bim, "JPEG", response.getOutputStream());
	}
}