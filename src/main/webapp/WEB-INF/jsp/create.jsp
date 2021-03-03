<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Music Entry</title>
</head>
<body>
			<form:form id="form">
				<h1 class="text-center">Create Music Entry:</h1>
				<p>Please enter the details of your song:</p>
				<label for="songName" class="mb-1">Song Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="songName" name="songName"
						placeholder="Enter a song name" class="form-control">

				</div>
				<label for="genre" class="mb-1">Music Genre:</label>
				<div class="input-group mb-3">

					<input type="text" id="genre" name="genre"
						placeholder="Enter a music genre" class="form-control">

				</div>
				<label for="album" class="mb-1">Album Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="album" name="album"
						placeholder="Enter an album name" class="form-control">

				</div>
				<label for="releaseDate" class="mb-1">Release Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="releaseDate" name="releaseDate"
						class="form-control">
				</div>
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">

					<textarea id="description" name="description" rows="5" cols="40"
						placeholder="Enter description here..." class="form-control"></textarea>

				</div>
				<label for="artist" class="mb-1">Artist Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="artist" name="artist"
						placeholder="Enter an artist name" class="form-control">

				</div>
				<label for="price" class="mb-1">Song Price:</label>
				<div class="input-group mb-3">

					<input type="text" id="price" name="price"
						placeholder="Enter an price" class="form-control">

				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
</body>
</html>