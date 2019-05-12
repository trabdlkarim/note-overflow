<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib tagdir="/WEB-INF/tags/layouts" prefix="layout" %>

<c:set var="bodyContent">
  <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
      <div class="row">
          <div class="col-sm-6">
              <div class="dt-buttons btn-group pull-left">
                  <button class="btn  buttons-create btn-primary" tabindex="0" aria-controls="example" type="button">
                      <span>Yeni</span>
                  </button>
                  <button class="btn  buttons-selected buttons-edit btn-primary" tabindex="0" aria-controls="example" type="button">
                      <span>Düzelt</span>
                  </button> 
                  <button class="btn  buttons-selected buttons-remove btn-danger" tabindex="0" aria-controls="example" type="button">
                      <span>Sil</span>
                  </button> 
              </div>
          </div>
          <div class="col-sm-6">
              <div id="example_filter" class="dataTables_filter pull-right">
                  <label>Search:
                      <input type="search" class="form-control input-sm" placeholder="" aria-controls="example"/>
                  </label>
              </div>
          </div>
      </div>
      <hr/>
      <div class="row">
          <div class="col-sm-12">
              <table id="example" class="table table-striped table-bordered dataTable" style="width: 100%;" role="grid" aria-describedby="example_info">
                <thead>
                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 89px;" aria-label="Name: activate to sort column descending" aria-sort="ascending">Name</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 143px;" aria-label="Position: activate to sort column ascending">Position</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 64px;" aria-label="Office: activate to sort column ascending">Office</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 33px;" aria-label="Extn.: activate to sort column ascending">Extn.</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 62px;" aria-label="Start date: activate to sort column ascending">Start date</th><th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 50px;" aria-label="Salary: activate to sort column ascending">Salary</th></tr>
                </thead>
                <tbody>
                    <tr id="row_5" role="row" class="odd"><td class="sorting_1">Airi Satou</td><td>Accountant</td><td>Tokyo</td><td>5407</td><td>2008-11-28</td><td>$162,700</td></tr>
                    <tr id="row_25" role="row" class="even"><td class="sorting_1">Angelica Ramos</td><td>Chief Executive Officer (CEO)</td><td>London</td><td>5797</td><td>2009-10-09</td><td>$1,200,000</td></tr>
                    <tr id="row_3" role="row" class="odd"><td class="sorting_1">Ashton Cox</td><td>Junior Technical Author</td><td>San Francisco</td><td>1562</td><td>2009-01-12</td><td>$86,000</td></tr>
                    <tr id="row_19" role="row" class="even"><td class="sorting_1">Bradley Greer</td><td>Software Engineer</td><td>London</td><td>2558</td><td>2012-10-13</td><td>$132,000</td></tr>
                    <tr id="row_28" role="row" class="odd"><td class="sorting_1">Brenden Wagner</td><td>Software Engineer</td><td>San Francisco</td><td>1314</td><td>2011-06-07</td><td>$206,850</td></tr>
                    <tr id="row_6" role="row" class="even"><td class="sorting_1">Brielle Williamson</td><td>Integration Specialist</td><td>New York</td><td>4804</td><td>2012-12-02</td><td>$372,000</td></tr>
                    <tr id="row_43" role="row" class="odd"><td class="sorting_1">Bruno Nash</td><td>Software Engineer</td><td>London</td><td>6222</td><td>2011-05-03</td><td>$163,500</td></tr>
                    <tr id="row_23" role="row" class="even"><td class="sorting_1">Caesar Vance</td><td>Pre-Sales Support</td><td>New York</td><td>8330</td><td>2011-12-12</td><td>$106,450</td></tr>
                    <tr id="row_51" role="row" class="odd"><td class="sorting_1">Cara Stevens</td><td>Sales Assistant</td><td>New York</td><td>3990</td><td>2011-12-06</td><td>$145,600</td></tr>
                    <tr id="row_4" role="row" class="even"><td class="sorting_1">Cedric Kelly</td><td>Senior Javascript Developer</td><td>Edinburgh</td><td>6224</td><td>2012-03-29</td><td>$433,060</td></tr>
                </tbody>
              </table>
          </div>
      </div>
      
  <div class="col-sm-7 pull-right">
      <div class="dataTables_paginate paging_simple_numbers" id="example_paginate">
          <ul class="pagination">
              <li class="paginate_button previous disabled" id="example_previous">
                  <a href="#" aria-controls="example" data-dt-idx="0" tabindex="0">Previous</a>
              </li>
              <li class="paginate_button active">
                  <a href="#" aria-controls="example" data-dt-idx="1" tabindex="0">1</a>
              </li>
              <li class="paginate_button ">
                  <a href="#" aria-controls="example" data-dt-idx="2" tabindex="0">2</a>
              </li>
              <li class="paginate_button ">
                  <a href="#" aria-controls="example" data-dt-idx="3" tabindex="0">3</a></li>
              <li class="paginate_button ">
                  <a href="#" aria-controls="example" data-dt-idx="4" tabindex="0">4</a>
              </li><li class="paginate_button ">
                  <a href="#" aria-controls="example" data-dt-idx="5" tabindex="0">5</a>
              </li>
              <li class="paginate_button ">
                  <a href="#" aria-controls="example" data-dt-idx="6" tabindex="0">6</a>
              </li><li class="paginate_button next" id="example_next">
                  <a href="#" aria-controls="example" data-dt-idx="7" tabindex="0">Next</a>
              </li>
            </ul>
        </div>
     </div>
   </div>
  </div>
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
   


