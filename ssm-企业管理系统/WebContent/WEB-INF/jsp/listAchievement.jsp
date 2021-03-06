<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
		<title>收入管理首页</title>
		<link rel="stylesheet" href="css/amazeui.min.css" />
		<link rel="stylesheet" href="css/admin.css" />
	</head>
	
<body>
<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">收入管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default" onclick="window.location.href='addAchievementInit'"><span class="am-icon-plus"></span> 新增</button>&emsp;
							<button type="button" class="am-btn am-btn-default" onclick="window.location.href='listAchievement'"><span class="am-icon-plus"></span> 返回收入管理首页</button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				
				<div class="am-u-sm-12 am-u-md-3">
				<form   action="listOneDateAchievement" method="post" enctype="multipart/form-data">
					<div class="am-input-group am-input-group-sm">
					<input type="hidden" name="pageNo" value="${pageInfo.pageNum}" />
						<input type="date" class="am-form-field"
						name="date">
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="submit" id="submitBtn" >搜索某一天的收入</button>
          </span>
					</div>
				</form>${DateEmpty}${NotAchievement}
				<form   action="countAchievement" method="post" enctype="multipart/form-data">
					<div class="am-input-group am-input-group-sm">
						<input type="date" class="am-form-field" 
						name="date">
						<input type="hidden" name="pageNo" value="${pageInfo.pageNum}" />
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="submit"  >搜索某一月的收入</button>
          </span>
					</div>
				</form>
				</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-set">日期</th>
									<th class="table-author am-hide-sm-only">收入</th>
									<th class="table-type">备注</th>
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<c:forEach items="${pageInfo.list}" var="achievement"><tbody>
							
								<tr>
									<td >${achievement.date }</td>
									<td >${achievement.turnover }元</td>
									<td>${achievement.information}</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button"class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="window.location.href='updateAchievementInit?date=${achievement.date }'">><span class="am-icon-pencil-square-o"></span> 编辑该天收入</button>
												<button  type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="window.location.href='deleteAchievement?date=${achievement.date }&pageNo=${pageInfo.pageNum}'"><span class="am-icon-trash-o" ></span> 删除</button>
											</div>
										</div>
									</td>
								</tr>
								</tbody></c:forEach>
								</table>
								<div class="am-cf">
						共 ${pageInfo.total} 条记录,当前正在访问第${pageInfo.pageNum}页
						<div class="am-fr">
							<ul class="am-pagination">
								<li class="">
									<c:if test="${pageInfo.hasPreviousPage }">
										<a href="listAchievement?pageNo=${pageInfo.pageNum-1}">«</a>
									</c:if>
								</li>
								<c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
									<li>
										<span class="color"><a href="listAchievement?pageNo=${pageNum}">${pageNum}</a></span>
									</li>
								</c:forEach>
								<li>
									<c:if test="${pageInfo.hasNextPage }">
										<a href="listAchievement?pageNo=${pageInfo.pageNum+1}">»</a>
									</c:if>
								</li>
							</ul>
						</div>
					</div>
					<hr>
</form></div></div></div>
</body>
</html>