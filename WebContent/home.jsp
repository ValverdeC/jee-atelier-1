<!DOCTYPE html>
<html>
    <head>
        <!-- Standard Meta -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

        <!-- Site Properties -->
        <title>Grid Example - Semantic</title>

        <link rel="stylesheet" type="text/css" href="assets/lib/Semantic-UI-CSS-master/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/custom.css">

    </head>

    <body>
        <div class="ui five column grid">
            <div class="row"></div>
            <div class="column"></div>
            <div class="column"></div>
            <div class="column">
                <form class="ui form" action="./addCard" method="GET">
                    <h3 class="ui dividing header">Add Card Form</h3>
                    <div class="field">
                        <label>Name</label>
                        <input type="text" name="name" placeholder="Name">
                    </div>
                    <div class="field">
                        <label>Description</label>
                        <textarea name="description" rows="5" cols="50"></textarea>
                    </div>
                    <div class="field">
                        <label>Image URL</label>
                        <input type="text" name="imgUrl" placeholder="Image URL">
                    </div>

					<div class="field">
                        <label>Family</label>    
	                    <select name="family" class="ui dropdown" id="select">
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
							<option value="D">D</option>
							<option value="E">E</option>
							<option value="F">F</option>
						</select>
					</div>
					
					<div class="field">
                        <label>Affinity</label>
						<select name="affinity" class="ui dropdown" id="select">
							<option value="A">A</option>
							<option value="B">B</option>
							<option value="C">C</option>
							<option value="D">D</option>
							<option value="E">E</option>
							<option value="F">F</option>
						</select>
					</div>
					
					<div class="slidecontainer">					  
					  <label>HP:</label>
					  <input type="range" min="0" max="100" value="50" class="slider" name="hp">
					</div>
					
					<div class="slidecontainer">					  
					  <label>Energy:</label>
					  <input type="range" min="0" max="100" value="50" class="slider" name="energy">
					</div>
					
					<div class="slidecontainer">					  
					  <label>Attack:</label>
					  <input type="range" min="0" max="100" value="50" class="slider" name="attack">
					</div>
					
					<div class="slidecontainer">					  
					  <label>Defence:</label>
					  <input type="range" min="0" max="100" value="50" class="slider" name="defence">
					</div>

                    <button class="ui button" type="submit" >Submit</button>
                </form>
            </div>
        </div>
    </body>
</html>