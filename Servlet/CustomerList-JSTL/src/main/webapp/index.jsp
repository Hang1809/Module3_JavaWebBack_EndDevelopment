<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tag Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container">
    <table class="table table-secondary table-striped">
        <thead>
        <th class="table-dark">
            <h1>
                Customer List
            </h1>
        </th>
        </thead>
        <tbody>
        <tr>
            <th>Full Name</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>Photo</th>
        </tr>
        <tr>
            <td>Mai Van Hoang</td>
            <td>20/08/1983</td>
            <td> Ha Noi</td>
            <td>
                <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg/330px-G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg
                     style="height:50px;width: 45px" alt="No image found!"/>
            </td>
        </tr>
        <tr>
            <td>Nguyen Van Nam</td>
            <td>21/08/2021</td>
            <td>Bac Giang</td>
            <td>
                <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg/330px-G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg
                     style="height:50px;width: 45px" alt="No image found!"/>
            </td>
        </tr>
        <tr>
            <td>Nguyen Thai Hoa</td>
            <td>22/08/1983</td>
            <td>Nam Dinh</td>
            <td>
                <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg/330px-G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg
                     style="height:50px;width: 45px" alt="No image found!"/>
            </td>
        </tr>
        <tr>
            <td>Tran Dang Khoa</td>
            <td>22/08/1983</td>
            <td>Ha Tay</td>
            <td>
                <img src=https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg/330px-G-Dragon_on_Infinite_Challenge_Yeongdong_Expressway_Music_Festival_-_4_%28cropped%29.jpg
                     style="height:50px;width: 45px" alt="No image found!"/>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>