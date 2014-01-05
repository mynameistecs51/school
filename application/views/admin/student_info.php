<?php $this->load->view('admin/admin_head');?>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">ข้อมูลนักเรียน	</div>
		<div class="panel-body">
			<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"> เพิ่ม</i></button> 
			<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-minus"> ลบ</i></button> 
			<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-edit"> แก้ไข</i></button>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th> Last Name</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Chaiwat</td>
					<td>Homsang</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- add student dialog -->
	<div class="row">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel"><i class="fa fa-user">  เพิ่มข้อมูลนักเรียน</i></h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
								<div class="col-sm-10">
									<input type="email" class="form col-sm-2" id="inputEmail3" placeholder="Email">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-10">
								<input type="text" class="input-sm col-sm-2" id="user_name" name="user_name" >
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label>
											<input type="checkbox"> Remember me
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">Sign in</button>
								</div>
							</div>
						</form> <!--enform -->
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Class</button>
						<button type="button" class="btn btn-primary">Save</button>
					</div>
				</div><!-- /.modal-content-->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- /. end add student dialog -->
	</div>
</div>
<?php $this->load->view('admin/admin_footer');?>