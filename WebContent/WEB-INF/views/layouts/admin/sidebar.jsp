<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<c:url value="/assets/admin/dist/img/hanuprofile.jpg"/>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Lê Văn Trường</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i><span>Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<c:url value="/admin/manage-employee"/>"><i class="fa fa-circle-o"></i>Manage Employee</a></li>
            <li><a href="<c:url value="/admin/manage-department"/>"><i class="fa fa-circle-o"></i>Manage Department</a></li>
            <li><a href="<c:url value="/admin/manage-job"/>"><i class="fa fa-circle-o"></i>Manage Job</a></li>
            
          </ul>
        </li>
      
        <li>
          <a href="<c:url value="/admin/rating"/>">
            <i class="fa fa-th"></i><span>Ratings</span>
          </a>
        </li>
     <!-- 
     	<li>
          <a href="#">
            <i class="fa fa-laptop"></i><span>Apply for job</span>
          </a>
        </li> 
     -->  
        <li>
          <a href="<c:url value="/admin/report"/>">
            <i class="fa fa-calendar"></i><span>Send Reports</span>
          </a>
        </li>
        <li>
          <a href="<c:url value='/admin/email' />">
            <i class="fa fa-edit"></i><span>Send email</span>
          </a>
        </li>
        <li>
          <a href="<c:url value='/admin/attendance'/>">
            <i class="fa fa-share"></i><span>Attendance</span>
          </a>
        </li>
        <li><a href="#"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>