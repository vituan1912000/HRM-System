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
            <i class="fa fa-globe"></i> Department
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->      

      <div class="row">
        <!-- /.col -->
        <div class="col-xs-6">
          <p class="lead">Details of Department</p>

          <div class="table-responsive">
            <table class="table">
              <tbody><tr>
                <th style="width:50%">Department ID:</th>
                <td>SE</td>
              </tr>
              <tr>
                <th>Department Name</th>
                <td>SE01</td>
              </tr>
              <tr>
                <th>Department lead:</th>
                <td>Van B</td>
              </tr>
              <tr>
                <th>Total:</th>
                <td>24</td>
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