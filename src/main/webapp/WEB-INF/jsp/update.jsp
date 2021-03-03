<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Music Entry</title>

</head>
<body>
			<form:form id="form">
				<h1 class="text-center">Update Music Entry:</h1>
				<p>Please update the details of your Music Entry:</p>
				<div class="input-group mb-3">

					<input type="text" id="songName" name="songName"
						placeholder="Enter a song name" class="form-control">

				</div>
				<label for="genre" class="mb-1">Genre:</label>
				<div class="input-group mb-2">
					<select name="genre" id="genre" class="form-control">
						<option value="rock">Rock</option>
						<option value="pop">Pop</option>
						<option value="hiphop">Hip Hop</option>
						<option value="jazz">Jazz</option>
						<option value="country">Country</option>
					</select>
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

					<input type="number" id="price" name="price"
						placeholder="Enter an price" class="form-control">

				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
</body>
</html>