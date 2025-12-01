<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form | Kanhaiya IT</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 450px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 8px;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 8px;
            background-color: #6c63ff;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background-color: #574fd6;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registration Form</h2>
    <form id="regForm">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Your full name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="your@email.com" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter password" required>

        <label>Gender</label>
        <input type="radio" name="gender" value="Male" required> Male
        <input type="radio" name="gender" value="Female"> Female
        <input type="radio" name="gender" value="Other"> Other

        <label>Hobbies</label>
        <input type="checkbox" name="hobbies" value="Reading"> Reading
        <input type="checkbox" name="hobbies" value="Gaming"> Gaming
        <input type="checkbox" name="hobbies" value="Traveling"> Traveling

	<label>kanhaiya Brand</label>
        <input type="checkbox" name="hobbies" value="Reading"> radhe-radhe
        <input type="checkbox" name="hobbies" value="Gaming"> shyam
        <input type="checkbox" name="hobbies" value="Traveling"> krishna

        <label for="country">Country</label>
        <select name="country" id="country" required>
            <option value="">Select Country</option>
            <option value="India">India</option>
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="Other">Other</option>
	    <option value="shyam">krishna-nisha</option>
	    <option value="radha">radha</option>
	    <option value="kanha">kanhaiya</option>
        </select>

        <button type="submit">Register</button>
    </form>
    <div class="footer">By Kanhaiya IT</div>
</div>

<script>
    const form = document.getElementById('regForm');
    form.addEventListener('submit', function(e) {
        e.preventDefault();

        const formData = new FormData(form);
        let output = "Form Submitted!\n\n";
        formData.forEach((value, key) => {
            output += `${key}: ${value}\n`;
        });

        alert(output);
        form.reset();
    });
</script>

</body>
</html>

