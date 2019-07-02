<html>
<head>
    <title>iRead website</title>
</head>
<body>
<%--<h3>Connect to Facebook</h3>--%>

<form action="/connect/facebook" method="POST">
    <input type="hidden" name="scope" value="user_posts" />
   <%-- <div class="formInfo">
        <p>You aren't connected to Facebook yet. Click the button to connect this application with your Facebook account.</p>
    </div>--%>
    <p><button type="submit" id="fbConnect" style="display:none;">Connect to Facebook</button></p>
</form>


</body>

<script src="/assets/js/jquery-1.11.1.min.js"></script>
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/assets/js/jquery.backstretch.min.js"></script>
<script src="/assets/js/scripts.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        document.getElementById("fbConnect").click();
    });

</script>
</html>
