<%-- 
    Document   : create-product
    Created on : Feb 11, 2023, 1:05:20 PM
    Author     : thaiq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Product</title>
    </head>
    <body>
        <h1>Insert New Product</h1>
        <form action="MainController" method="POST">
            <tr><td>Product Name</td><td><input type="text" name="newproductname" required=""/></td></tr> <br>
            <tr><td>Quantity</td><td><input type="text" name="newquantity" required=""/></td></tr><br>
            <tr>
                <td>Status<input type="radio" name="newstatus" value="ACTIVE" checked="checked">ACTIVE 
                    <input type="radio" name="newstatus" value="INACTIVE">INACTIVE
                </td>
            </tr><br>
            <tr><td>Description</td><td><input type="text" name="newdescription" required=""/></td></tr><br>
            <tr><td>Capacity</td><td><input type="text" name="newcapacity" required=""/></td></tr><br>
            <tr><td>Brand</td><td><input type="text" name="newbrand" required=""/></td></tr><br>
            <tr><td>Price</td><td><input type="text" name="newprice" required=""/></td></tr><br>
            <tr>
                <td>Category<input type="radio" name="newcategoryid" value="1" checked="checked">MALE 
                    <input type="radio" name="newcategoryid" value="2">FEMALE
                </td>
            </tr><br>
            <tr><td>Image Link</td><td><input type="text" name="newimage" required=""/></td></tr><br>
            <tr><td><input type="submit" name="action" value="Create"/></td></tr>
        </form>
    </body>
</html>
