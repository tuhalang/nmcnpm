<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="col-sm-12">
    <div class="row">
        <div class="col-md-4 mb-3">
            <ul class="nav nav-pills flex-column" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="account-tab" data-toggle="tab" href="#account" role="tab" aria-controls="account" aria-selected="true">Change Password</a>
                </li>
<!--                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Change Password</a>
                </li>-->
            </ul>
        </div>
        <!-- /.col-md-8 -->
        <div class="col-md-8 mb-3">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                    <%--profile slide bar--%>
                    <div class="profile-sidebar row">
                        <div class="profile-userpic">
                            <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
                        </div>
                        <div class="profile-usertitle">
                            <div class="profile-usertitle-name">${USER.username}</div>
                            <%--<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <%-- end profile slide bar--%>
                    <div class="row">
                        <h6>Current Password</h6>
                        <input type="password" id="current-pass" class="input-account">
                    </div>
                    <div class="row">
                        <h6>New Password</h6>
                        <input  type="password" id="new-pass" class="input-account">
                    </div>
                    <div class="row">
                        <h6>Confirm Password</h6>
                        <input  type="password" id="confirm-pass" class="input-account">
                    </div>
                </div>
            </div>
        </div>
        <!-- /.col-md-8 -->
    </div>
</div>