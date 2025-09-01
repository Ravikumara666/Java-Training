<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Library</title>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
            padding-top: 2rem;
            padding-bottom: 2rem;
        }

        /* Main container card */
        .library-card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 1rem;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            animation: fadeIn 0.8s ease-in-out;
            border: none;
        }

        .card-header {
            background-color: #6c757d; /* A neutral, dark header */
            color: white;
            border-bottom: 0;
            border-top-left-radius: 1rem;
            border-top-right-radius: 1rem;
        }

        /* Styling the table for a modern look */
        .table {
            border-radius: 0.5rem;
            overflow: hidden; /* Ensures rounded corners apply to the table */
        }
        .table thead {
            background-color: #f8f9fa;
        }

        .table td, .table th {
            vertical-align: middle; /* Aligns content vertically for a cleaner look */
        }

        /* Styling for the action buttons */
        .btn-action {
            transition: all 0.2s ease;
        }
        .btn-action:hover {
            transform: scale(1.05);
        }
        
        /* Fade-in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="library-card">
            <div class="card-header p-3 d-flex justify-content-between align-items-center">
                <h1 class="h3 mb-0 text-white"><i class="bi bi-book-half"></i> Java Training School Library</h1>
                <a href="addBookForm" class="btn btn-light fw-bold btn-action">
                    <i class="bi bi-plus-circle-fill"></i> Add New Book
                </a>
            </div>

            <div class="card-body p-4">
                <c:if test="${not empty msg}">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success!</strong> ${msg}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>

                <div class="table-responsive">
                    <table class="table table-striped table-hover text-center">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Book Name</th>
                                <th>Author</th>
                                <th>Price</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="book" items="${books}">
                                <tr>
                                    <td>#${book.id}</td>
                                    <td>${book.name}</td>
                                    <td>${book.author}</td>
                                    <td>${book.price}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${book.status == 'available'}">
                                                <span class="badge bg-success rounded-pill px-3 py-2">Available</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="badge bg-warning text-dark rounded-pill px-3 py-2">Borrowed</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>
                                        <c:if test="${book.status == 'available'}">
                                            <a href="borrowForm/${book.id}" class="btn btn-success btn-sm btn-action">
                                                <i class="bi bi-hand-index-thumb"></i> Borrow
                                            </a>
                                        </c:if>
                                        <c:if test="${book.status != 'available'}">
                                            <button class="btn btn-secondary btn-sm" disabled>
                                                <i class="bi bi-hand-index-thumb"></i> Borrow
                                            </button>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>