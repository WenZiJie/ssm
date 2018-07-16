package com.bdqa;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.params.MapSolrParams;

import com.bdqa.question.domain.Question;

public class httpSolrServer extends HttpServlet{
	// 代码
	//创建查询条件
		/** 
		 *  1. 查询 
		 */
		public static void main(String[] args) throws Exception {
			// 构建一个solr 客户端
			HttpSolrClient client = new HttpSolrClient.Builder("http://192.168.1.12:8983/solr").build();
			// 准备参数
			Map<String, String> params = new HashMap<>();
			params.put("q", "*:*");
			params.put("rows", "60");
			params.put("start", "0");
			
			
			// 查询
			// 第一个参数 coreName
			QueryResponse response = client.query("question", new MapSolrParams(params));
			List<Question> list = response.getBeans(Question.class);
			for (Question question : list) {
				System.out.println(question);
			}
			}
		
		public static void main1(String[] args) throws Exception {
			// 构建一个solr 客户端
			HttpSolrClient client = new HttpSolrClient.Builder("http://192.168.1.12:8983/solr").build();
			// 准备参数
			Map<String, String> params = new HashMap<>();
			params.put("q", "title:1.2");
			params.put("rows", "60");
			params.put("start", "0");
			
			
			// 查询
			// 第一个参数 coreName
			QueryResponse response = client.query("question", new MapSolrParams(params));
			SolrDocumentList json = response.getResults();
			List<Question> list = (List<Question>) toBeanList(json,Question.class);
			for (Question question : list) {
				System.out.println(question);
			}
		}
		
		
		  public static  Object toBean( SolrDocument record , Class clazz){
		         Object o = null;
		        try {
		            o = clazz.newInstance();
		        } catch (Exception e1) {
		            e1.printStackTrace();
		        }
		         Field[] fields =   clazz.getDeclaredFields();
		         for(Field field:fields){
		             Object value = record.get(field.getName());
		             try {
		                BeanUtils.setProperty(o, field.getName(), value);
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		         }
		        return o;
		    }
		     
		    public static Object toBeanList(SolrDocumentList records, Class  clazz){
		        List  list = new ArrayList();
		        for(SolrDocument record : records){
		            list.add(toBean(record,clazz));
		        }
		        return list;
		    }
	}
