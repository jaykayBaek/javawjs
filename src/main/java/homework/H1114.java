package homework;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/h1114")
public class H1114 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String[] buyers = request.getParameterValues("buyer");
		String[] productNames = request.getParameterValues("product_name");
		String[] productPrices = request.getParameterValues("product_price");
		String[] productCnts = request.getParameterValues("product_cnt");
		String[] sortingLists = request.getParameterValues("sorting_list");
		
		int price = 0, cnt = 0, total = 0;
		
		PrintWriter out = response.getWriter();
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		out.println("<h1'>제품 가격 계산하기</h1>");

		out.println("<div>");
		out.println("<table>");
		out.println("<thead>");
		out.println("<tr>");
		out.println("<th scope ='col'> 구매자 </th>");
		out.println("<th scope ='col'> 품명 </th>");
		out.println("<th scope ='col'> 가격 </th>");
		out.println("<th scope ='col'> 수량 </th>");
		out.println("<th scope ='col'> 금액 </th>");
		out.println("</tr>");
		out.println("</thead>");
		
		
		for(int i=0; i<productNames.length; i++) {
			price = Integer.parseInt(productPrices[i]);
			cnt = Integer.parseInt(productCnts[i]);
			total += price*cnt;
			out.println("<tbody>");
			out.println("<tr>");
			out.print("<td>" + buyers[i] + "</td>");
			out.print("<td>" + productNames[i] + "</td>");
			out.print("<td>" + decFormat.format(price) + "</td>");
			out.print("<td>" + decFormat.format(cnt) + "</td>");
			out.print("<td>" + sortingLists[i] + "</td>");
			out.println("</tr>");
			out.println("</tbody>");
		}
		
		
		out.println("<tfoot>");
		out.println("<tr>");
		out.println("<th scope ='row'>총금액</th>");
		out.println("<td colspan='4'>"+decFormat.format(total)+"</th>");
		out.println("</tr>");
		out.println("</tfoot>");
		out.println("</table>");
		out.println("</div>");

	}
}
