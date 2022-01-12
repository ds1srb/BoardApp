package com.board.app;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.board.app.mapper.Mapper;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class Test {
	@Autowired
	Mapper tm;
	
	@org.junit.Test
	public void mapperTest() {
		System.out.println(tm.getTime());
	}
	
	@org.junit.Test
	public void testConnection() {
		try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.5.22:1521:XE", "testuser", "q1w2e3r4")) {
			System.out.println(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
}
