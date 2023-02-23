<%-- 
    Document   : update-product
    Created on : Feb 15, 2023, 3:40:12 PM
    Author     : dangn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product Page</title>
    </head>
    <body>
        <h1>Update Product</h1>
        <form action="MainController" method="POST">
            <table>
                <tr>
                <input class="form-control" type="hidden" name="productID"
                       value="${products.productID}"/><br/>
                </tr>
                <tr><td>Product Name</td><td><input type="text" name="pName" value="${products.name}" required=""/></td></tr> <br>
                <tr><td>Quantity</td><td><input type="text" name="pQuantity" value="${products.quantity}" required=""/></td></tr><br>
                <tr>
                    <td>Status<input type="radio" name="pStatus" value="ACTIVE"  checked="checked">ACTIVE 
                        <input type="radio" name="pStatus" value="INACTIVE" >INACTIVE
                    </td>
                </tr><br>
                <tr><td>Description</td><td><input type="text" name="pDescrip" value="${products.description}"  required=""/></td></tr><br>
                <tr><td>Capacity</td><td><input type="text" name="pCapacity" value="${products.capacity}"  required=""/></td></tr><br>
                <tr><td>Brand</td><td><input type="text" name="pBrand" value="${products.brand}" required=""/></td></tr><br>
                <tr><td>Price</td><td><input type="text" name="pPrice" value="${products.price}" required=""/></td></tr><br>
                <tr>
                    <td>Category<input type="radio" name="pCategory" value="1" checked="checked">MALE 
                        <input type="radio" name="pCategory" value="2">FEMALE
                    </td>
                </tr><br>
                <tr><td>Image Link</td><td><input type="text" name="pImage" value="${products.image}" required=""/></td></tr><br>
                <tr><td><input type="submit" name="action" value="Update"/></td></tr>
            </table>
        </form>
    </body>
</html>
