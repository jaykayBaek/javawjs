<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<style>
       .inputcont {
          display: flex;
          flex-flow: column wrap;
          height: 100vh;
          /* width:100%; */
          /* align-items: center; */
        }

        .inputcont-left {
            display: flex;
            flex-flow: column wrap;
            align-items: center;
            justify-content: end;
            flex: 2;
        }

        .inputcont-right {
            flex: 1;
            display: flex;
            flex-flow: column wrap;
            align-items: center;
            justify-content: start;
            width: 100%;
        }
        
        input {
            margin-top: 0.5rem;
            border: 0px;
            background-color: #dbdbdb;
            height: 2rem;
        }
        .buttons {
            display: flex;
            justify-content: center;
            width: 50%;
        }
        .buttons form {
            width: 100%;
            display: flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: start;
        }

        .buttons button {
            border: 0px;
            padding: 1rem;
            color: #000;
            width: 50%;
            margin-top: 1rem;
            margin-left: 0.5rem;
            border-radius: 5px;
        }

        .buttons button:nth-of-type(1) {
            background-color: #48cae4;
            color: #fff;
            font-weight: 700;
            opacity: 0.9;
        }

        .buttons button:nth-of-type(2) {
            background-color: #f76;
            color: #fff;
            font-weight: 700;
            opacity: 0.9;
        }

        .buttons button:hover {
            cursor: pointer;
            opacity: 1;
        }

        .input {
            display: flex;
            flex-flow: column wrap;
            align-items: center;
            justify-content: center;
            /* margin-bottom: 1rem; */
            width: 80%;
            height: 50vh;
        }

        .input_list {
            width: 80%;
            height: 50vh;
            background-color: #f77f00;
            overflow-y: scroll;
        }

        input {
            margin: 1rem 1rem 0px;
        }

        #demo {
            display: flex;
            flex-flow: row wrap;
            align-items: center;
            justify-content: center;
        }
        .demo_item{
            width:100%;
        }
	</style>
</head>
<body>
     <div class="inputcont">
         <div class="inputcont-left">
             <div class="input">
                 <div class="input_list">
                     <div id="demo">
                     </div>
                 </div>
             </div>
         </div>
         <div class="inputcont-right">
             <div class="buttons">
                 <div class="right-top">
                     <form name="myform" method="post" action="">
                         <button type="button" onclick="add_product_list()">입력</button>
                         <button type="reset">초기화</button>
                     </form>
                 </div>
             </div>
         </div>
     </div>
</body>
</html>