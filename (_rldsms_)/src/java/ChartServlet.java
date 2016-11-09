//package chart;

import java.awt.BasicStroke;
import java.awt.Color;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

public class ChartServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
                String distinction =request.getParameter("clear");
                String first = request.getParameter("first");
                String second = request.getParameter("second");
                String fail = request.getParameter("fail");
                int d=Integer.parseInt(distinction);
                int f=Integer.parseInt(first);
                int s=Integer.parseInt(second);
                int fa=Integer.parseInt(fail);
		response.setContentType("image/png");

		OutputStream outputStream = response.getOutputStream();

		JFreeChart chart = getChart(d,f,s,fa);
		int width = 500;
		int height = 350;
		ChartUtilities.writeChartAsPNG(outputStream, chart, width, height);

	}

	public JFreeChart getChart(int a,int b,int c,int d) {
		DefaultPieDataset dataset = new DefaultPieDataset();
		dataset.setValue("above 90", a);
		dataset.setValue("75 to 90", b);
		dataset.setValue("50 to 75", c);
                dataset.setValue("below 50", d);

		boolean legend = true;
		boolean tooltips = false;
		boolean urls = false;

		JFreeChart chart = ChartFactory.createPieChart("Marks", dataset, legend, tooltips, urls);

		chart.setBorderPaint(Color.GREEN);
		chart.setBorderStroke(new BasicStroke(5.0f));
		chart.setBorderVisible(true);

		return chart;
	}

}