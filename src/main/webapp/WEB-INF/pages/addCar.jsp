<%--
  Created by IntelliJ IDEA.
  User: bianca
  Date: 12/5/2022
  Time: 1:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="addCar">
    <h1>Add Car</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
        <div class="row">

            <div class="col-md-6 mb-3">
                <label for="license_plate"> License plate </label><br>
                <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value=""
                       required>
                <div class="invalid-feedback">
                    License Plate is required
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="parking_spot"> Parking spot</label><br>
                    <input type="text" id="parking_spot" name="parking_spot" class="form-control" placeholder=""
                           value="" required>
                    <div class="invalid-feedback">
                        Parking spot is required
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6 mb-3">

                    <select required class="form-control custom-select d-block w-100" id="owner_id" name="owner_id">
                        <option value="" name="owner_id"> Choose...</option>
                        <option value="" name="owner_id"> Choose...</option>
                        <option value="" name="owner_id"> Admin...</option>
                        <c:forEach var="user"  items="${user}" varStatus="status">
                            <option value="${user.id}">${user.username}</option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                        Owner is required
                    </div>
                </div>
            </div>

        </div>

        <input type="submit" value="Save">
    </form>

</t:pageTemplate>
