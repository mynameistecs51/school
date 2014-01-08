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
						<fieldset>
							<form class="form-horizontal" role="form">
								<legend>ข้อมูลที่ใช้ login </legend>
								<div class="form-group">									
									<div class="col-sm-10">
										<label for="inputUsername" class="col-sm-2 control-label">Username:</label>
										<input type="text" class="input-sm col-sm-2"  placeholder="ชื่อที่ใช้ login" autofocus >

										<label for="inputPassword" class="col-sm-2 control-label">Password:</label>

										<input type="password" class="input-sm col-sm-2"  id="inputPassword" placeholder="รหัสผ่าน">
									</div>
								</div>
								<legend>ข้อมูลทะเบียนและวัดผล</legend>
								<div class="form-group">
									<div class="col-sm-10">
										<label class="col-sm-4 control-label">ชื่อ(ไทย)
											<select class="selectpicker">
												<option value="เด็กชาย">เด็กชาย</option>
												<option value="เด็กหญิง">เด็กหญิง</option>
												<option value="นาย">นาย</option>
												<option value="นางสาว">นางสาว</option>
											</select>
										</label>
										<input type="text" class="input-sm col-sm-3" placeholder="ชื่อ(ไทย)">
										<label class="col-sm-2 control-label">สกุล(ไทย)</label>
										<input type="text" class="input-sm col-sm-3" placeholder="นามสกุล(ไทย)">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-10">
										<label class="col-sm-4 control-label">ชื่อ(อังกฤษ)
											<select class="selectpicker">
												<option value="Master">Master</option><!--เด็กชาย-->
												<option value="Mr">Mr.</option><!--นาย-->
												<option value="Miss">Miss</option><!--นางสาว-->
											</select>
										</label>
										<input type="text" class="input-sm col-sm-3" placeholder="ชื่อ(อังกฤษ)">
										<label class="col-sm-2 control-label">สกุล(อังกฤษ)</label>
										<input type="text" class="input-sm col-sm-3" placeholder="นามสกุล(ภาษาอังกฤษ)">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-10">
										<label class="col-sm-2 control-label">ว/ด/ป เกิด:</label>
										<input type="date" class="input-sm col-sm-2" >
										<label class="col-sm-2 control-label">นับถือศาสนา</label>
										<input type="text" class="input-sm col-sm-2">
										<label class="col-sm-2 control-label">เชื้อชาติ</label>
										<input type="text" class="input-sm col-sm-2">	
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-10">
										<label class="col-sm-2 control-label">สถานภาพของนักเรียน</label>
										<span class="label label-default"><input type="radio" name="relationship"  value="อยู่กับบิดา-มารดา">อยู่กับบิดา-มารดา</span>
										<input type="radio" name="relationship" value="อยู่กับบิดา">อยู่กับบิดา
										<input type="radio" name="relationship" value="อยู่กับมารดา">อยู่กับมารดา
										<input type="radio" name="relationship" value="บิดาถึงแก่กรรม">บิดาถึงแก่กรรม
										<input type="radio" name="relationship" value="มารดาถึงแก่กรรม">มารดาถึงแก่กรรม
										<input type="radio" name="relationship" value="บิดา-มารดา หย่าร้างกัน">บิดา-มารดา หย่าร้างกัน
										<input type="radio" name="relationship" value="">บุคคลอื่น / ผู้ปกครอง โปรดระบุความสัมพันธ์
										<input type="text" class="input-sm-3" name="relationship">
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
							</form>
						</fieldset> <!--enform -->
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