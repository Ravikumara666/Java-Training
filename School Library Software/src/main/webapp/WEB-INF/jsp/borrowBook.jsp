<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrow Book</title>
    
    <!-- Include Spring and JSTL tag libraries -->
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <!-- Google Fonts: Poppins -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- Custom CSS for animations and styling -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6); /* Same gradient for consistency */
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            padding: 1rem;
        }

        /* The main card container */
        .book-card-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 2.5rem;
            border-radius: 1rem;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            animation: fadeIn 0.8s ease-in-out;
            max-width: 600px;
            width: 100%;
        }
        
        /* Styling for the list group that displays book details */
        .list-group-item {
            background-color: transparent;
            border-color: rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            font-size: 1.1rem;
        }

        .list-group-item strong {
            color: #555;
        }

        /* Style for the 'Status' badge */
        .status-badge {
            font-size: 0.9rem;
            padding: 0.5em 0.9em;
        }

        /* Styling for the buttons */
        .btn-action {
            font-weight: 500;
            padding: 0.75rem 1.5rem;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-action:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        
        /* Fade-in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    
    <div class="book-card-container">
        <h1 class="text-center mb-4 fw-bold">Borrow Book Confirmation</h1>
        <p class="text-center text-muted mb-4">Please review the book details below before you confirm.</p>
        
        <!-- Book details are now in a clean, modern list instead of a table -->
        <ul class="list-group list-group-flush mb-4">
            <li class="list-group-item">
                <strong>Book ID:</strong>
                <span>#${book.id}</span>
            </li>
            <li class="list-group-item">
                <strong>Book Name:</strong>
                <span>${book.name}</span>
            </li>
            <li class="list-group-item">
                <strong>Author:</strong>
                <span>${book.author}</span>
            </li>
            <li class="list-group-item">
                <strong>Price:</strong>
                <span>$${book.price}</span>
            </li>
            <li class="list-group-item">
                <strong>Status:</strong>
                <!-- A Bootstrap badge to make the status stand out visually -->
                <c:choose>
                    <c:when test="${book.status == 'Available'}">
                        <span class="badge bg-success rounded-pill status-badge">${book.status}</span>
                    </c:when>
                    <c:otherwise>
                        <span class="badge bg-danger rounded-pill status-badge">${book.status}</span>
                    </c:otherwise>
                </c:choose>
            </li>
        </ul>
        
        <!-- The Spring form for the borrow action -->
        <form:form method="post" action="/library/borrow">
            <!-- Hidden input to pass the book ID -->
            <input type="hidden" name="id" value="${book.id}" />

            <div class="row g-2">
                <!-- A cancel button is good for user experience -->
                <div class="col">
                    <a href="/library/books" class="btn btn-secondary btn-lg btn-action">
                        <i class="bi bi-x-circle"></i> Cancel
                    </a>
                </div>
                 <!-- The main borrow button -->
                <div class="col">
                    <button type="submit" class="btn btn-primary btn-lg btn-action">
                        <i class="bi bi-check-circle-fill"></i> Confirm Borrow
                    </button>
                </div>
            </div>
        </form:form>
    </div>
    
</body>
</html>