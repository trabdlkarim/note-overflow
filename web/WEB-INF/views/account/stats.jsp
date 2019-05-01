<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
     <!-- Elements Row -->
        <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-5">
                <!-- PANEL: Site Visits Line Chart -->
                <div class="panel">
                    <!-- Panel Heading -->
                    <div class="panel-heading">
                        <!-- Panel Title -->
                        <div class="panel-title">Site Visits</div>
                        <!-- /Panel Title -->
                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">
                                <div class="canvas-holder">
                                
                            <canvas id="demo-chart-line" width="418" height="250" style="display: block; width: 418px; height: 250px;"></canvas>
                        </div>
                        <div class="row mt-0p5 text-center">
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-dark"></i> Current Week
                                <div class="mt-0p5 rate rate-up">18.7</div>
                            </div>
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-info"></i> Last Week
                                <div class="mt-0p5 rate rate-down">1.7</div>
                            </div>
                            <div class="col-xs-4">
                                <i class="icon-theme icon-theme-sm fa fa-line-chart icon-danger"></i> Target
                                <div class="mt-0p5 rate rate-up">4.8</div>
                            </div>
                        </div>
                    </div>
                    <!-- /Panel Body -->

                </div>
                <!-- /PANEL: Site Visits Line Chart -->
            </div>

            <div class="col-xs-12 col-sm-12 col-md-3">

                <!-- CardBox Inline: Desktop -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-desktop"></i>
                    <span class="text">Desktop</span>
                    <div class="value rate rate-up">92.9</div>
                </div>
                <!-- /CardBox Inline: Desktop -->

                <!-- CardBox Inline: Mobile -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-mobile"></i>
                    <span class="text">Mobile</span>
                    <div class="value rate rate-up">6.08</div>
                </div>
                <!-- /CardBox Inline: Mobile -->

                <!-- CardBox Inline: Tablet -->
                <div class="card-box-inline bg-primary mb-0p5">
                    <i class="icon fa fa-tablet"></i>
                    <span class="text">Tablet</span>
                    <div class="value rate rate-down">0.98</div>
                </div>
                <!-- /CardBox Inline: Tablet -->

                <!-- PANEL: Social Chart -->
                <div class="panel">
                    <div class="panel-body">
                        <div class="canvas-holder">
                            <canvas id="socials-doughnut" width="226" height="141" style="display: block; width: 226px; height: 141px;"></canvas>
                        </div>
                        <div class="progress-list">

                            <!-- Progress Element -->
                            <div class="progress mb-0p5">
                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="64" aria-valuemin="0" aria-valuemax="100" style="width: 64%;">64%</div>
                            </div>
                            <!-- /Progress Element -->

                            <!-- Progress Element -->
                            <div class="progress mb-0p5">
                                <div class="progress-bar" role="progressbar" aria-valuenow="53" aria-valuemin="0" aria-valuemax="100" style="width: 53%;">53%</div>
                            </div>
                            <!-- /Progress Element -->

                            <!-- Progress Element -->
                            <div class="progress no-mb">
                                <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">75%</div>
                            </div>
                            <!-- /Progress Element -->

                        </div>
                    </div>
                </div>
                <!-- /PANEL: Social Chart -->

            </div>

            <div class="col-xs-12 col-sm-12 col-md-4">
                <!-- PANEL: Progress -->
                <div class="panel">

                    <!-- Panel Heading -->
                    <div class="panel-heading">

                        <!-- Panel Title -->
                        <div class="panel-title">Current progress</div>
                        <!-- /Panel Title -->

                        <!-- Panel Controls -->
                        <div class="panel-controls">
                            <ul class="panel-buttons">
                                <li><a href="http://vtdes.ru/demo/caspero/#" class="btn-panel-control icon fa fa-refresh"></a></li>
                            </ul>
                        </div>
                        <!-- /Panel Controls -->

                    </div>
                    <!-- /Panel Heading -->

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <!-- Progress Element -->
                        <div class="progress-labeled">
                            <div class="title"> Grid system <span>80%</span></div>
                            <div class="progress">
                                <div style="width: 80%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar"></div>
                            </div>
                        </div>
                        <!-- /Progress Element -->

                        <!-- Progress Element -->
                        <div class="progress-labeled">
                            <div class="title"> Panel elements &amp; jQuery <span>85%</span></div>
                            <div class="progress">
                                <div style="width: 85%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="85" role="progressbar" class="progress-bar progress-bar-success"></div>
                            </div>
                        </div>
                        <!-- /Progress Element -->

                        <!-- Progress Element -->
                        <div class="progress-labeled">
                            <div class="title"> Documentation <span>60%</span></div>
                            <div class="progress">
                                <div style="width: 60%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-warning"></div>
                            </div>
                        </div>
                        <!-- /Progress Element -->

                        <!-- Progress Element -->
                        <div class="progress-labeled no-mb">
                            <div class="title"> Release <span>90%</span></div>
                            <div class="progress">
                                <div style="width: 90%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90" role="progressbar" class="progress-bar progress-bar-danger"></div>
                            </div>
                        </div>
                        <!-- /Progress Element -->

                    </div>
                    <!-- /Panel Body -->

                </div>
                <!-- /PANEL: Progress -->
            </div>
            <div class="col-xs-12 col-md-4">
            <!-- PANEL: Browsers -->
                <div class="panel">

                    <!-- Panel Body -->
                    <div class="panel-body">

                        <!-- PANEL-GROUP: Browsers -->
                        <div class="panel-group no-mb" id="accordion" role="tablist" aria-multiselectable="true">

                            <!-- PANEL: This Week -->
                            <div class="panel">

                                <!-- Panel Heading -->
                                <div class="panel-heading" role="tab" id="browsers-this-week-heading">

                                    <!-- Panel Title -->
                                    <div class="panel-title">
                                        <a href="http://vtdes.ru/demo/caspero/#browsers-this-week" role="button" data-toggle="collapse" data-parent="#accordion" aria-expanded="true" aria-controls="browsers-this-week">

                                            This Week
                                        </a>
                                    </div>
                                    <!-- /Panel Title -->

                                </div>
                                <!-- /Panel Heading -->

                                <!-- COLLAPSE: This Week -->
                                <div id="browsers-this-week" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="browsers-this-week-heading">

                                    <!-- Panel Body -->
                                    <div class="panel-body">

                                        <!-- TABLE: This Week -->
                                        <table class="table table-responsive no-mb">
                                            <tbody><tr>
                                                <td>1</td>
                                                <td>Google Chrome</td>
                                                <td>7859</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Mozilla Firefox</td>
                                                <td>7409</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Safari</td>
                                                <td>3498</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Internet Explorer</td>
                                                <td>1089</td>
                                            </tr>
                                        </tbody></table>
                                        <!-- /TABLE: This Week -->

                                    </div>
                                    <!-- /Panel Body -->

                                </div>
                                <!-- /COLLAPSE: This Week -->

                            </div>
                            <!-- PANEL: This Week -->

                            <!-- PANEL: This Month -->
                            <div class="panel">

                                <!-- Panel Heading -->
                                <div class="panel-heading" role="tab" id="browsers-this-month-heading">

                                    <!-- Panel Title -->
                                    <div class="panel-title">
                                        <a href="http://vtdes.ru/demo/caspero/#browsers-this-month" class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" aria-expanded="true" aria-controls="browsers-this-month">

                                            This Month
                                        </a>
                                    </div>
                                    <!-- /Panel Title -->

                                </div>
                                <!-- /Panel Heading -->

                                <!-- COLLAPSE: This Week -->
                                <div id="browsers-this-month" class="panel-collapse collapse" role="tabpanel" aria-labelledby="browsers-this-month-heading">

                                    <!-- Panel Body -->
                                    <div class="panel-body">

                                        <!-- TABLE: This Month -->
                                        <table class="table table-responsive no-mb">
                                            <tbody><tr>
                                                <td>1</td>
                                                <td>Google Chrome</td>
                                                <td>78059</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Mozilla Firefox</td>
                                                <td>70409</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Safari</td>
                                                <td>34098</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Internet Explorer</td>
                                                <td>10809</td>
                                            </tr>
                                        </tbody></table>
                                        <!-- /TABLE: This Month -->

                                    </div>
                                    <!-- /Panel Body -->

                                </div>
                                <!-- /COLLAPSE: This Week -->

                            </div>
                            <!-- PANEL: This Month -->

                        </div>
                        <!-- /PANEL-GROUP: Browsers -->

                    </div>
                    <!-- /Panel Body -->

                </div>
            <!-- /PANEL: Browsers -->
            </div>
        </div>
        <!-- /Elements Row -->
</c:set>
 
 <layout:caspero>
     <jsp:attribute name="topbar">
       <%@include file="/include/nav_topbar.jsp" %>    
     </jsp:attribute>
     
     <jsp:attribute name="sidebar">
        <%@include file="/include/nav_sidebar.jsp" %>  
     </jsp:attribute>
     
     <jsp:body>
         ${bodyContent}
     </jsp:body>           
 </layout:caspero>
   


