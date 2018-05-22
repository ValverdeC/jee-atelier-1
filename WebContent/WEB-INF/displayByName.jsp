<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Standard Meta -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

        <!-- Site Properties -->
        <title>${sessionScope.card.name}</title>

        <link rel="stylesheet" type="text/css" href="assets/lib/Semantic-UI-CSS-master/semantic.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/custom.css">

    </head>

    <body>
        <div class="ui five column grid">
            <div class="column"></div>
            <div class="column"></div>
            <div class="column">
                <div class="ui special cards">
                    <div class="card">

                        <div class="content">
                            <span id="cardFamilyNameId">${sessionScope.card.name}</span>
                        </div>
                        <div class="image imageCard">
                            <div class="blurring dimmable image">
                                <img id="cardImgId" class="ui centered tiny image" src="${sessionScope.card.imgUrl}">
                            </div>
                        </div>
                        <div class="content">
                            <div class="ui form tiny">
                                <div class="field">
                                    <label id="cardNameId"></label>
                                    <textarea id="cardDescriptionId" class="overflowHiden" readonly="" rows="5">
                                    	${sessionScope.card.description}
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <i class="heart outline icon"></i><span id="cardHPId">${sessionScope.card.hp}</span> 
                            <div class="right floated ">
                                <i class="lightning outline icon"></i>
                                <span id="cardEnergyId">${sessionScope.card.energy}</span> 
                            </div>
                        </div>
                        <div class="content">
                            <span class="right floated">
                                <i class=" wizard icon"></i>
                                <span id="cardAttackId">${sessionScope.card.attack}</span> 
                            </span>
                            <i class="protect icon"></i>
                           <span id="cardDefenceId">${sessionScope.card.defence}</span> 
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script src="assets/lib/jquery-3.3.1.min.js"></script>
        <script src="assets/lib/Semantic-UI-CSS-master/semantic.js"></script>

    </body>
</html>