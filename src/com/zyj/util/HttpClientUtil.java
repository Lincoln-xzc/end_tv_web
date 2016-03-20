package com.zyj.util;

import java.net.URI;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.http.HttpMethod;

import com.zyj.api.model.SinaCityJson;
import com.google.gson.Gson;

/**
 * HttpClientUtil.java
 * 
 */

public class HttpClientUtil {
	
	public static void main(String[] args){
		Map<String,String> map = new HashMap<>();
		map.put("format", "json");
		map.put("ip", "111.85.35.152");
		SinaCityJson str = HttpClientUtil.sendRequest("http://int.dpool.sina.com.cn/iplookup/iplookup.php",
				HttpMethod.POST, map,null, SinaCityJson.class);
		System.out.println(str.getProvince()+" "+str.getCity());
	}

	private HttpClientUtil() {
	}

	public static final Long currentTimeInSec() {
		return Long.valueOf(new Date().getTime() / 1000);
	}
	
	@SuppressWarnings("unchecked")
	public static final <T> T sendRequest(String url, HttpMethod method,
			Map<String, String> params, HttpEntity requestEntity,
			Class<T> resultClass) {
		return sendRequest(url, method, params, requestEntity, resultClass, false);
	}

	public static final <T> T sendRequest(String url, HttpMethod method,
			Map<String, String> params, HttpEntity requestEntity,
			Class<T> resultClass, boolean decoder) {
		HttpClient client = HttpClientBuilder.create().build();
		HttpRequestBase request = null;

		try {
			if (HttpMethod.GET.equals(method)) {
				request = new HttpGet();
			} else if (HttpMethod.POST.equals(method)) {
				request = new HttpPost();
				if (requestEntity != null) {
					((HttpPost) request).setEntity(requestEntity);
				}
			}
			URIBuilder builder = new URIBuilder(url);

			if (params != null) {
				for (Map.Entry<String, String> entry : params.entrySet()) {
					builder.addParameter(entry.getKey(), entry.getValue());
				}
			}
			URI uri = builder.build();
			if(decoder){
				uri = new URI(URLDecoder.decode(uri.toString(), "UTF-8"));
			}
			request.setURI(uri);

			HttpResponse response = client.execute(request);
			HttpEntity entity = response.getEntity();
			String respBody = EntityUtils.toString(entity,"UTF-8");
			if (entity != null) {
				EntityUtils.consume(entity);
			}

			if (String.class.isAssignableFrom(resultClass)) {
				return (T) respBody;
			} else {
				Gson gson = new Gson();
				T result = gson.fromJson(respBody, resultClass);
				return result;
			}

		} catch (Exception e) {
			return null;
		} 
	}

}
