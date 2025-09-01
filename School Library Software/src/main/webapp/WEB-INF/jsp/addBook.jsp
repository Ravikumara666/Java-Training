<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Book</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }

        /* The main form container with a glass-like effect */
        .book-form-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 2.5rem;
            border-radius: 1rem;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(4px);
            -webkit-backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            animation: fadeIn 0.8s ease-in-out;
        }

        /* Floating label form inputs for a modern UI */
        .form-floating > .form-control {
            height: calc(3.5rem + 2px);
            padding: 1rem;
        }

        .form-floating > label {
            padding: 1rem;
        }

        /* Styling the save button */
        .btn-save {
            font-weight: 500;
            padding: 0.75rem 1.5rem;
            transition: all 0.3s ease;
        }

        .btn-save:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        
        /* Fade-in animation for the form on page load */
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
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="book-form-container">
                    <h1 class="text-center mb-4 fw-bold">Add New Book 📖</h1>
                    
                    <form method="post" action="addBook" modelAttribute="book">
                        
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Book Name" required>
                            <label for="name">Book Name</label>
                        </div>

                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="author" name="author" placeholder="Enter Author Name" required>
                            <label for="author">Author</label>
                        </div>

                        <div class="form-floating mb-4">
                            <input type="number" class="form-control" id="price" name="price" placeholder="Enter Price" step="0.01" required>
                            <label for="price">Price</label>
                        </div>
                        
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary btn-lg btn-save">
                                <i class="bi bi-journal-plus"></i> Save Book
                            </button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>