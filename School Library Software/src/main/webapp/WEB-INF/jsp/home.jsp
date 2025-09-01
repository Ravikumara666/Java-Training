<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Library</title>
    
    <!-- Google Fonts: Poppins & Lora for a classic yet modern feel -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,700;1,400&family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <!-- Custom CSS for the hero section and animations -->
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            color: #fff;
        }

        .hero-section {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            height: 100vh;
            /* A beautiful library background image from an open-source provider */
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://images.unsplash.com/photo-1521587760476-6c12a4b040da?q=80&w=2070&auto=format&fit=crop') no-repeat center center/cover;
            animation: fadeIn 1.5s ease-in-out;
        }

        .hero-content {
            background: rgba(0, 0, 0, 0.4); /* Semi-transparent background for readability */
            padding: 3rem 4rem;
            border-radius: 1rem;
            backdrop-filter: blur(5px);
            -webkit-backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            animation: fadeInUp 1s ease-in-out 0.5s;
            animation-fill-mode: both; /* Keeps the state of the animation after it's done */
            max-width: 800px;
        }

        .hero-content h1 {
            font-family: 'Lora', serif;
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .hero-content p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            color: rgba(255, 255, 255, 0.9);
        }

        .btn-explore {
            font-size: 1.1rem;
            font-weight: 600;
            padding: 0.8rem 2.5rem;
            border-radius: 50px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-explore:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.3);
        }

        /* Keyframe animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <div class="hero-section">
        <div class="hero-content">
            <h1>Welcome to ${appName}</h1>
            <p class="lead">Your gateway to a universe of knowledge and stories. Discover your next great read today.</p>
            <a href="/library/display" class="btn btn-primary btn-lg btn-explore">
                Explore the Collection <i class="bi bi-arrow-right-circle-fill ms-2"></i>
            </a>
        </div>
    </div>

</body>
</html>