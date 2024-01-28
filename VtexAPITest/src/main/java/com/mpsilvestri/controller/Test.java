package com.mpsilvestri.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String message;
	private int code;
	private String body;
	
	private String scroll_message;
	private int scroll_code;
	private String scroll_body;
	
	private String list_skus_message;
	private int list_skus_code;
	private String list_skus_body;
	
	private String list_orders_message;
	private int list_orders_code;
	private String list_orders_body;

	public Test() {

	}

	// ==> to create 3 methods to be called one for each endPoint, similar to the method test
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String account_name = (String) request.getParameter("account_name");
		String environment = (String) request.getParameter("environment");
		String appkey = (String) request.getParameter("appkey");
		String apptoken = (String) request.getParameter("apptoken");
		String data_entity = (String) request.getParameter("data_entity");
		
		if(account_name.isEmpty() || appkey.isEmpty() || apptoken.isEmpty() || data_entity.isEmpty()) {
			try { Thread.sleep(3000); } catch (InterruptedException e) { e.printStackTrace(); }
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} else {

		final OkHttpClient client = new OkHttpClient();
		test_scroll(account_name, environment, appkey, apptoken, data_entity, client);
		// try { Thread.sleep(1000); } catch (InterruptedException e) { e.printStackTrace(); }
		test_list_all_sku_ids(account_name, environment, appkey, apptoken, client);
		// try { Thread.sleep(1000); } catch (InterruptedException e) { e.printStackTrace(); }
		test_list_orders(account_name, environment, appkey, apptoken, client);
		
		request.setAttribute("scroll_code", this.scroll_code);
		request.setAttribute("scroll_message", this.scroll_message);
		request.setAttribute("scroll_body", this.scroll_body);
		request.setAttribute("list_skus_code", this.list_skus_code);
		request.setAttribute("list_skus_message", this.list_skus_message);
		request.setAttribute("list_skus_body", this.list_skus_body);
		request.setAttribute("list_orders_code", this.list_orders_code);
		request.setAttribute("list_orders_message", this.list_orders_message);
		request.setAttribute("list_orders_body", this.list_orders_body);
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		sdf.setTimeZone(TimeZone.getTimeZone("Brazil/East"));
		Timestamp timestamp = new Timestamp(new Date().getTime());
		String time = sdf.format(timestamp);
		request.setAttribute("time", time);

		RequestDispatcher rd = request.getRequestDispatcher("results.jsp");
		rd.forward(request, response);
		}
	}
	
	public void test_scroll(String account_name, String environment, String appkey, String apptoken, String data_entity,
			OkHttpClient client) throws IOException {
		Request endPoint_request = new Request.Builder()
				.url("https://" + account_name + "." + environment + ".com.br/api/dataentities/" + data_entity
						+ "/scroll?_fields=email%2CfirstName%2Cdocument")
				.header("User-Agent", "Yo").addHeader("Accept", "application/json")
				.addHeader("X-VTEX-API-AppKey", appkey).addHeader("X-VTEX-API-AppToken", apptoken).build();

		try (Response endPoint_response = client.newCall(endPoint_request).execute()) {
			if (!endPoint_response.isSuccessful()) {
				System.out.println("Possibly this error => 'Message': 'Maximum simultaneous scrolls rate exceeded (10)'");
				this.scroll_message = endPoint_response.message();
				this.scroll_code = endPoint_response.code();
				this.scroll_body = endPoint_response.body().string();
				
				System.out.println("Code: " + this.scroll_code);
				System.out.println("Message: " + this.scroll_message);
				System.out.println("Body: " + this.scroll_body);
				// throw new IOException("Error occurred: " + endPoint_response);
			} else {
			this.scroll_message = endPoint_response.message();
			this.scroll_code = endPoint_response.code();
			this.scroll_body = endPoint_response.body().string();
			
			System.out.println("Code: " + this.scroll_code);
			System.out.println("Message: " + this.scroll_message);
			System.out.println("Body: " + this.scroll_body);
			}

		} 
	}
	
	public void test_list_all_sku_ids(String account_name, String environment, String appkey, String apptoken, OkHttpClient client) throws IOException {
		Request endPoint_request = new Request.Builder()
				.url("https://"+account_name+"."+environment+".com.br/api/catalog_system/pvt/sku/stockkeepingunitids")
				.header("User-Agent", "Yo").addHeader("Accept", "application/json")
				.addHeader("X-VTEX-API-AppKey", appkey).addHeader("X-VTEX-API-AppToken", apptoken).build();

		try (Response endPoint_response = client.newCall(endPoint_request).execute()) {
			if (!endPoint_response.isSuccessful()) {
				System.out.println("Possibly this error => 'Message': 'Maximum simultaneous scrolls rate exceeded (10)'");
				this.list_skus_message = endPoint_response.message();
				this.list_skus_code = endPoint_response.code();
				this.list_skus_body = endPoint_response.body().string();
				
				System.out.println("Code: " + this.list_skus_code);
				System.out.println("Message: " + this.list_skus_message);
				System.out.println("Body: " + this.list_skus_body);
				// throw new IOException("Error occurred: " + endPoint_response);
			} else {
			
			this.list_skus_message = endPoint_response.message();
			this.list_skus_code = endPoint_response.code();
			this.list_skus_body = endPoint_response.body().string();
			
			System.out.println("Code: " + this.list_skus_code);
			System.out.println("Message: " + this.list_skus_message);
			System.out.println("Body: " + this.list_skus_body);
			}
		}
	}
	
	public void test_list_orders(String account_name, String environment, String appkey, String apptoken, OkHttpClient client) throws IOException {
		Request endPoint_request = new Request.Builder()
				.url("https://"+account_name+"."+environment+".com.br/api/oms/pvt/orders?utc=-2000")
				.header("User-Agent", "Yo").addHeader("Accept", "application/json")
				.addHeader("X-VTEX-API-AppKey", appkey).addHeader("X-VTEX-API-AppToken", apptoken).build();

		try (Response endPoint_response = client.newCall(endPoint_request).execute()) {
			if (!endPoint_response.isSuccessful()) {
				System.out.println("Possibly this error => 'Message': 'Maximum simultaneous scrolls rate exceeded (10)'");
				this.list_orders_message = endPoint_response.message();
				this.list_orders_code = endPoint_response.code();
				this.list_orders_body = endPoint_response.body().string();
				
				System.out.println("Code: " + this.list_orders_code);
				System.out.println("Message: " + this.list_orders_message);
				System.out.println("Body: " + this.list_orders_body);
				// throw new IOException("Error occurred: " + endPoint_response);
			} else {
			
			this.list_orders_message = endPoint_response.message();
			this.list_orders_code = endPoint_response.code();
			this.list_orders_body = endPoint_response.body().string();
			
			System.out.println("Code: " + this.list_orders_code);
			System.out.println("Message: " + this.list_orders_message);
			System.out.println("Body: " + this.list_orders_body);
			}
		}
	}

}
