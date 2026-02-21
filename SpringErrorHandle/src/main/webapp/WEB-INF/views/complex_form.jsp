

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Complex Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow">
                <div class="card-body p-4">

                    <h3 class="text-center mb-4">Complex Form</h3>
                    
                   <!-- Error message show on form page  -->
                    <div class="alert alert-success" role="alert">
                    <form:errors path="student.*" />
                   
                      </div>

                    <form action="handle" method="post">

                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label">Your Name</label>
                            <input name="name" type="text" class="form-control" placeholder="Enter Name">
                            <div class="form-text">We'll never share your name with anyone else.</div>
                        </div>

                        <!-- ID -->
                        <div class="mb-3">
                            <label class="form-label">Your ID</label>
                            <input name="id" type="text" class="form-control" placeholder="Enter ID">
                        </div>

                        <!-- DOB -->
                        <div class="mb-3">
                            <label class="form-label">Your DOB</label>
                            <input name="date" type="text" class="form-control" placeholder="DD/MM/YYYY">
                        </div>

                        <!-- Courses -->
                        <div class="mb-3">
                            <label class="form-label">Select Courses</label>
                            <select class="form-select" multiple name="courses">
                                <option>Java</option>
                                <option>Python</option>
                                <option>C++</option>
                                <option>Django</option>
                            </select>
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <label class="form-label d-block">Select Gender</label>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender">
                                <label class="form-check-label">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender">
                                <label class="form-check-label">Female</label>
                            </div>
                        </div>

                        <!-- Type -->
                        <div class="mb-3">
                            <label class="form-label">Select Type</label>
                            <select class="form-select" name="type">
                                <option>Old Student</option>
                                <option>New Student</option>
                            </select>
                        </div>

                        <!-- Address Section -->
                        <div class="card mt-4">
                            <div class="card-body">
                                <h5 class="mb-3">Your Address</h5>

                                <div class="mb-3">
                                    <label class="form-label">Street</label>
                                    <input  name="address.street" type="text" class="form-control" placeholder="Enter Street">
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">City</label>
                                    <input name="address.city" type="text" class="form-control" placeholder="Enter City">
                                </div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="mt-4 text-center">
                            <button type="submit" class="btn btn-primary px-4">
                                Submit
                            </button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
