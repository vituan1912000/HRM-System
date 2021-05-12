<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body>
	<div class="content-wrapper" style="min-height: 1136px;">
    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i> Employee
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->      

      <div class="row">
        <!-- /.col -->
        <div class="col-xs-6">
          <p class="lead">Details of Employee</p>

          <div class="table-responsive">
            <table class="table">
              <tbody><tr>
                <th style="width:50%">Employee ID:</th>
                <td>${e.id}</td>
              </tr>
              <tr>
                <th>Employee Name</th>
                <td>${e.name}</td>
              </tr>
              <tr>
                <th>User name:</th>
                <td>Van B</td>
              </tr>
              <tr>
                <th>Age:</th>
                <td>${e.age}</td>
              </tr>
              <tr>
                <th>Address:</th>
                <td>${e.address}</td>
              </tr>
              <tr>
                <th>Department:</th>
                <td>${e.job_id.department_Id.deName}</td>
              </tr>
              <tr>
                <th>Department ID:</th>
                <td>${e.job_id.department_Id.department_Id}</td>
              </tr>
              <tr>
                <th>Job:</th>
                <td>${e.job_id.jobName}</td>
              </tr>
            </tbody></table>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
          <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
          <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
            <i class="fa fa-download"></i> Generate PDF
          </button>
        </div>
      </div>
    </section>
    <!-- /.content -->
    <div class="clearfix"></div>
  </div>
</body>