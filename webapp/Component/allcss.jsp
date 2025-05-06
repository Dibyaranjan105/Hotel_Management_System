<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	
	 <script>
        // Function to dynamically update profile details
        function showProfile(name, position, description, imgSrc) {
            document.getElementById("profile-name").textContent = name;
            document.getElementById("profile-position").textContent = position;
            document.getElementById("profile-description").textContent = description;
            document.getElementById("profile-img").src = imgSrc;
        }
    </script>

    <style>
.about-wthree {
    background-color: #f9f9f9;
    padding: 80px 0; /* Increase top and bottom padding */
}

.title-w3-agileits {
    font-size: 2.5rem;
    font-weight: 700;
    color: #333;
    margin-bottom: 30px; /* Increase margin below the title */
}

.about-para-w3ls {
    font-size: 1rem;
    line-height: 1.6;
    color: #666;
    margin-bottom: 40px; /* Space below the main paragraph */
    padding: 0 10%;
}

.about-images {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 20px;
    margin-top: 20px; /* Space above images */
}

.main-image, .secondary-image {
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.w3ls-info-about {
    background-color: #333;
    color: #fff;
    border-radius: 8px;
    margin-top: 20px; /* Space above the info box */
    padding: 20px;
}

  .offer-section {
            background-color: #f8f9fa;
            padding: 50px 0;
            text-align: center;
        }
        .offer-section h3 {
            font-weight: bold;
            margin-bottom: 10px;
        }
        .offer-section p {
            color: #fcbf1e;
            font-size: 1.1em;
            margin-bottom: 40px;
        }
        .offer-card {
            background-color: #e9ecef;
            border: none;
            padding: 30px;
            transition: transform 0.3s;
        }
        .offer-card:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .offer-icon {
            font-size: 3em;
            color: #002d62;
            margin-bottom: 15px;
        }
        .offer-title {
            font-size: 1.2em;
            font-weight: bold;
        }
        .highlight-line {
            width: 50px;
            height: 3px;
            background-color: #fcbf1e;
            margin: 10px auto;
        }
        /*team style*/
   /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Container styling */
        .container {
            text-align: center;
            margin: 30px;
        }

        /* Title styling */
        .container h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 20px;
        }

        /* Profile pictures row styling */
        .profile-pics {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 30px;
        }

        /* Circular profile image styling */
        .profile-pics img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            cursor: pointer;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .profile-pics img:hover {
            transform: scale(1.1);
        }

        /* Individual profile details section */
        .profile-detail {
            text-align: center;
            margin-top: 30px;
        }

        /* Name styling */
        .profile-detail h2 {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 5px;
        }

        /* Position styling */
        .profile-detail .position {
            font-size: 0.9em;
            color: #999;
            margin-bottom: 10px;
        }

        /* Description styling */
        .profile-detail p {
            color: #666;
            line-height: 1.6;
            max-width: 500px;
            margin: 0 auto;
            margin-bottom: 20px;
        }

        /* Social media icons styling */
        .social-icons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        /* Individual social media icon styling */
        .social-icons a {
            display: inline-block;
            width: 30px;
            height: 30px;
            background-color: #ddd;
            color: #666;
            border-radius: 4px;
            text-align: center;
            line-height: 30px;
            font-size: 1.2em;
            text-decoration: none;
        }

        /* Custom colors for each icon */
        .social-icons .facebook { background-color: #3b5998; color: #fff; }
        .social-icons .twitter { background-color: #1da1f2; color: #fff; }
        .social-icons .google { background-color: #db4437; color: #fff; }
        .social-icons .rss { background-color: #f26522; color: #fff; }
   
   
    <!-- css design for footer and contactus page -->
     body {
    font-family: Arial, sans-serif;
    background: url('background.jpg') no-repeat center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    color: #fff;
}

.contact-section {
    background-color: rgba(0, 0, 0, 0.7);
    padding: 60px;
    color: #fff;
}

.contact-section h4 {
    color: #fff;
    font-size: 24px;
    margin-bottom: 20px;
}

.contact-section p {
    color: #ccc;
    font-size: 16px;
}

.contact-info {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 30px;
}

.contact-info div {
    flex: 1;
    min-width: 250px;
}

.contact-info div h4 {
    font-size: 28px;
    color: #fcbf1e;
    margin-bottom: 10px;
}

.contactform {
    display: flex;
    flex-direction: column;
}

.contactform label {
    font-size: 14px;
    color: #ccc;
    margin-bottom: 5px;
}

.contactform input[type="text"],
.contactform input[type="tel"],
.contactform input[type="email"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    background: #333;
    border: none;
    color: #fff;
    border-radius: 4px;
}

.contactform input[type="submit"] {
    padding: 10px 20px;
    background: #3498db;
    border: none;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    transition: background 0.3s;
}

.contactform input[type="submit"]:hover {
    background: #2980b9;
}

.contact-info a {
    color: #3498db;
    text-decoration: none;
}

.contact-info a:hover {
    color: #2980b9;
}

iframe {
    width: 100%;
    height: 200px;
    border: none;
    margin-top: 20px;
}

.footer {
    text-align: center;
    padding: 15px;
    color: #fff;
    background: rgba(0, 0, 0, 0.8);
    font-size: 14px;
}

.footer a {
    color: #fcbf1e;
    text-decoration: none;
}

.footer a:hover {
    color: #ffd700;
}

        </style>
    




	