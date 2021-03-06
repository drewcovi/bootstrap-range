<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Examples for bootstrap-range plugin">
		<meta name="author" content="">
		<title>Rangepicker for Bootstrap Examples Page</title>
		<!-- core CSS -->
		<link href="<%= css.bootstrap %>" rel="stylesheet">
		<link href="<%= css.range %>" rel="stylesheet">
		<!-- Custom styles for this template -->
		<style type='text/css'>
			/* Space out content a bit */
				body {
				padding-top: 20px;
				padding-bottom: 20px;
				}
				h1 small {
					font-size: 51%;
				}
				/* Everything but the jumbotron gets side spacing for mobile first views */
				.header,
				.marketing,
				.footer {
				padding-left: 15px;
				padding-right: 15px;
				}
				/* Custom page header */
				.header {
				border-bottom: 1px solid #e5e5e5;
				}
				/* Make the masthead heading the same height as the navigation */
				.header h3 {
				margin-top: 0;
				margin-bottom: 0;
				line-height: 40px;
				padding-bottom: 19px;
				}
				/* Custom page footer */
				.footer {
				padding-top: 19px;
				color: #777;
				border-top: 1px solid #e5e5e5;
				}
				/* Customize container */
				.container {
					min-width: 640px;
				}
				@media (min-width: 768px) {
				.container {
				max-width: 1000px;
				}
				}
				.container-narrow > hr {
				margin: 30px 0;
				}
				/* Main marketing message and sign up button */
				.title {
				text-align: center;
				border-bottom: 1px solid #e5e5e5;
				}
				/* Responsive: Portrait tablets and up */
				@media screen and (min-width: 768px) {
				/* Remove the padding we set earlier */
				.header,
				.footer {
				padding-left: 0;
				padding-right: 0;
				}
				/* Space out the masthead */
				.header {
				margin-bottom: 30px;
				}
				/* Remove the bottom border on the jumbotron for visual effect */
				.title {
				border-bottom: 0;
				}
				}
				.well {
					background-color: #E0E0E0;
				}
				#destroyEx5RangePicker, #ex6CurrentRangePickerValLabel, #ex7-enabled {
					margin-left: 45px;
				}
				#ex6RangePickerVal {
					color: green;
				}
		</style>
		<style type='text/css'>
				/* Example 1 custom styles */
				#ex1RangePicker .rangepicker-selection {
					background: #BABABA;
				}
			/* Example 3 custom styles */
				#RGB {
				height: 20px;
				background: rgb(128, 128, 128);
				}
				#RC .rangepicker-selection {
				background: #FF8282;
				}
				#RC .rangepicker-handle {
					background: red;
				}
				#GC .rangepicker-selection {
					background: #428041;
				}
				#GC .rangepicker-handle {
					background: green;
				}
				#BC .rangepicker-selection {
					background: #8283FF;
				}
				#BC .rangepicker-handle {
					border-bottom-color: blue;
				}
				#R, #G, #B {
					width: 300px;
				}
		</style>
		<script type='text/javascript' src="<%= js.modernizr %>"></script>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="../../assets/js/html5shiv.js"></script>
		<script src="../../assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container">
			<div class="jumbotron">
				<h1>Rangepicker for Bootstrap <small>bootstrap-range.js</small></h1>
				<p class="lead">Examples for the bootstrap-range component.<p>
			</div>
			<div class="examples">
				<div class='rangepicker-example'>
					<h3>Example 1:</h3>
					<p>Basic example with custom formatter and colored selected region via CSS.</p>
					<div class="well">
						<input id="ex1" data-id='ex1RangePicker' type="range" data-min="-5" data-max="20" data-step="1" data-value="14"/>
					</div>
<pre><code>
###################
       HTML
###################
&ltinput id="ex1" data-id='ex1RangePicker' type="range" data-min="0" data-max="20" data-step="1" data-value="14"/&gt

###################
       CSS
###################
#ex1RangePicker .rangepicker-selection {
background: #BABABA;
}
</code></pre>
				</div>
				<div class="row">
				<div class="col-sm-12">
				<h3>Example 2:</h3>
				<p>Range selector, options specified via data attribute.</p>
				</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class='rangepicker-example'>
							
							<div class="well">
								Filter by price interval: <b>€ 10</b>
								<div class="form-group">
									<input
									type="range"
									class="rangepicker no-limits"
									data-value="[6,12,17,24]"
									max="24"
									min=".25"
									data-limit="false"
									data-precision="2"
									data-range="true"
									data-formatter="return arguments[0]+'hrs';"
									/>
								</div>
								<div class="form-group">
									<input
									type="range"
									class="async-rangepicker no-limits"
									data-value="[6,12,17,24]"
									max="24"
									min=".25"
									data-limit="false"
									data-precision="2"
									data-range="true"
									data-formatter="return arguments[0]+'hrs';"
									/>
								</div>
								<div class="form-group">
									<input
									type="range"
									class="rangepicker"
									data-value="[6,8,17,20]"
									max="24"
									min=".25"
									data-limit="2"
									data-precision="2"
									data-range="false"
									data-formatter="return (parseInt(arguments[0])%12>0?parseInt(arguments[0])%12:12)+':'+(arguments[0]%1>0?arguments[0]%1*60:'00');"
									/>
								</div>
								<div class="form-group">
									<input
									type="range"
									class="rangepicker"
									data-value="[6,8,17,20]"
									max="24"
									min=".25"
									data-limit="2"
									data-precision="2"
									data-range="true"
									data-formatter="return arguments[1]-arguments[0]+'hrs';"
									/>
								</div>
								<div class="form-group">
									<fieldset class="form-group" id="range-group">
										<input
										type="range"
										class="col-sm-2 rangepicker-test"
										min=".25"
										max="24"
										step=".25"
										value="6"
										data-parent="#range-group"
										data-precision="2"
										data-limit="0"
										data-formatter="return (parseInt(arguments[0])%12>0?parseInt(arguments[0])%12:12)+':'+(arguments[0]%1>0?arguments[0]%1*60:'00');"
										/>
										<input
										type="range"
										class="col-sm-2 rangepicker-test"
										min=".25"
										max="24"
										step=".25"
										value="8"
										data-parent="#range-group"
										/>
										<input
										type="range"
										class="col-sm-2 rangepicker-test"
										min=".25"
										max="24"
										step=".25"
										value="17"
										data-parent="#range-group"
										/>
										<input
										type="range"
										id="last-test"
										class="col-sm-2 rangepicker-test"
										min=".25"
										max="24"
										step=".25"
										value="20"
										data-parent="#range-group"/>
										<b>€ 1000</b>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
  <pre>
  <code>
###################
       HTML
###################
Filter by price interval: &ltb&gt€ 10&lt/b&gt &ltinput id="ex2" type="range" class="col-sm-2" value="" data-min="10" data-max="1000" data-step="5" data-value="[250,450]"/&gt &ltb&gt€ 1000&lt/b&gt

</code>
</pre>
					</div>
				</div>
					<div class='rangepicker-example'>
						<h3>Example 3:</h3>
						<p>Using events to work with the values and style the selection and handles via CSS. The tooltip is disabled and diferent swhapes for the handles.</p>
						<div class="well">
							<p>
							<b>R</b> <input type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="RC" id="R" data-tooltip="hide" data-handle="square" />
							</p>
							<p>
							<b>G</b> <input type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="GC" id="G" data-tooltip="hide" data-handle="round" />
							</p>
							<p>
							<b>B</b> <input type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="BC" id="B" data-tooltip="hide" data-handle="triangle" />
							</p>
							<div id="RGB"></div>
						</div>
  <pre><code>
###################
       HTML
###################
&ltp&gt
&ltb&gtR&lt/b&gt &ltinput type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="RC" id="R" data-tooltip="hide" data-handle="square" /&gt
&lt/p&gt
&ltp&gt
&ltb&gtG&lt/b&gt &ltinput type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="GC" id="G" data-tooltip="hide" data-handle="round" /&gt
&lt/p&gt
&ltp&gt
&ltb&gtB&lt/b&gt &ltinput type="range" class="col-sm-2" value="" data-min="0" data-max="255" data-step="1" data-value="128" data-id="BC" id="B" data-tooltip="hide" data-handle="triangle" /&gt
&lt/p&gt
&ltdiv id="RGB"&gt&lt/div&gt

###################
       CSS
###################
#RGB {
height: 20px;
background: rgb(128, 128, 128);
}
#RC .rangepicker-selection {
background: #FF8282;
}
#RC .rangepicker-handle {
background: red;
}
#GC .rangepicker-selection {
background: #428041;
}
#GC .rangepicker-handle {
background: green;
}
#BC .rangepicker-selection {
background: #8283FF;
}
#BC .rangepicker-handle {
border-bottom-color: blue;
}
#R, #G, #B {
width: 300px;
}
					</code></pre>
				</div>
				<div class='rangepicker-example'>
<h3>Example 4:</h3>
<p>Vertical RangePicker with reversed values (largest to smallest).</p>
					<div class="well">
						<input id="ex4" type="range" data-min="-5" data-max="20" data-step="1" data-value="-3" data-orientation="vertical"/>
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex4" type="range" data-min="-5" data-max="20" data-step="1" data-value="-3" data-orientation="vertical"/&gt

</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 5:</h3>
					<p>Destroy instance of rangepicker by calling destroy() method on rangepicker instance via JavaScript.
					<div class="well">
						<input id="ex5" type="range" min="-5" max="20" step="1" data-value="0" data-reversed="true" data-id="test"/>
						<button id="destroyEx5RangePicker" class='btn btn-danger'>Click to Destroy</button>
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex5" type="range" data-min="-5" data-max="20" data-step="1" data-value="0"/&gt
&ltbutton id="destroyEx5RangePicker" class='btn btn-danger'>Click to Destroy&lt/button&gt
###################
    JavaScript
###################
// With JQuery
$("#ex5").rangepicker();
// Without JQuery
var rangepicker = new RangePicker('#ex5');
$("#destroyEx5RangePicker").click(function() {

// With JQuery
$("#ex5").rangepicker('destroy');
// Without JQuery
rangepicker.destroy();
});
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 6:</h3>
					<p>Able to bind to 'slide' JQuery event on rangepicker, which is triggered whenever the rangepicker is used.</p>
					<div class="well">
						<input id="ex6" type="range" data-min="-5" data-max="20" data-step="1" data-value="3"/>
						<span id="ex6CurrentRangePickerValLabel">Current RangePicker Value: <span id="ex6RangePickerVal">3</span></span>
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex6" type="range" data-min="-5" data-max="20" data-step="1" data-value="3"/&t
&ltspan id="ex6CurrentRangePickerValLabel">Current RangePicker Value: &ltspan id="ex6RangePickerVal"&gt3&lt/span&gt&lt/span&gt
###################
    JavaScript
###################
// With JQuery
$("#ex6").rangepicker();
$("#ex6").on("slide", function(slideEvt) {
$("#ex6RangePickerVal").text(slideEvt.value);
});
// Without JQuery
var rangepicker = new RangePicker("#ex6");
rangepicker.on("slide", function(slideEvt) {
$("#ex6RangePickerVal").text(slideEvt.value);
});)
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 7:</h3>
					<p>RangePickers can be enabled and disabled.</p>
					<div class="well">
						<input id="ex7" type="range" data-min="0" data-max="20" data-step="1" data-value="5" data-enabled="false"/>
						<input id="ex7-enabled" type="checkbox"/> Enabled
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex7" type="range" data-min="0" data-max="20" data-step="1" data-value="5" data-enabled="false"/&gt
&ltinput id="ex7-enabled" type="checkbox"/&gt Enabled
###################
    JavaScript
###################
// With JQuery
$("#ex7").rangepicker();
// Without JQuery
var rangepicker = new RangePicker("#ex7");
$("#ex7-enabled").click(function() {
if(this.checked) {
// With JQuery
$("#ex7").rangepicker("enable");
// Without JQuery
rangepicker.enable();
}
else {
// With JQuery
$("#ex7").rangepicker("disable");
// Without JQuery
rangepicker.disable();
}
});
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 8:</h3>
					<p>Tooltip can always be displayed.</p>
					<div class="well">
						<input id="ex8" data-id='ex1RangePicker' type="range" data-min="0" data-max="20" data-step="1" data-value="14"/>
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex8" data-id='ex1RangePicker' type="range" data-min="0" data-max="20" data-step="1" data-value="14"/&gt
###################
    JavaScript
###################
// With JQuery
$("#ex8").rangepicker({
tooltip: 'always'
});
// Without JQuery
var rangepicker = new RangePicker("#ex8", {
tooltip: 'always'
});
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 9:</h3>
					<p>Precision (number of places after the decimal) can be specified.</p>
					<div class="well">
						<input id="ex9" type="range"/>
					</div>
      <pre><code>
###################
       HTML
###################
&ltinput id="ex9" type="range"/&gt
###################
    JavaScript
###################
// With JQuery
$("#ex9").rangepicker({
precision: 2,
value: 8.115 // RangePicker will instantiate showing 8.12 due to specified precision
});
// Without JQuery
var rangepicker = new RangePicker("#ex9", {
precision: 2,
value: 8.115 // RangePicker will instantiate showing 8.12 due to specified precision
});
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 10:</h3>
					<p>Setting custom handlers.</p>
					<div class="well">
						<input id="ex10" type="range" data-handle="custom"/>
					</div>
    <pre><code>
###################
 HTML
###################
&ltinput id="ex10" type="range" data-handle="custom"/&gt
###################
JavaScript
###################
// With JQuery
$("#ex10").rangepicker({});
// Without JQuery
var rangepicker = new RangePicker("#ex10", {});
###################
 CSS
###################
.rangepicker-handle.custom {
background: transparent none;
/* You can customize the handle and set a background image */
}
/* Or display content like unicode characters or fontawesome icons */
.rangepicker-handle.custom::before {
line-height: 20px;
font-size: 20px;
content: '\2605'; /*unicode star character*/
color: #726204;
}
</code></pre>
				</div>
				<div class='rangepicker-example'>
					<h3>Example 11:</h3>
					<p>Using a custom step interval.</p>
					<div class="well">
						<input id="ex11" type="range" data-handle="custom"/>
					</div>
      <pre><code>
###################
HTML
###################
&ltinput id="ex11" type="range" data-handle="custom"/&gt
###################
JavaScript
###################
// With JQuery
$("#ex11").rangepicker({step: 20000, min: 0, max: 200000});
// Without JQuery
var rangepicker = new RangePicker("#ex11", {
step: 20000,
min: 0,
max: 200000
});
</code></pre>
				</div>
				</div> <!-- /examples -->
				</div> <!-- /container -->
				<!-- core JavaScript
				================================================== -->
				<script type='text/javascript' src="<%= js.jquery %>"></script>
				<script type='text/javascript' src="<%= js.range %>"></script>
				<script type='text/javascript'>
					$(document).ready(function() {
						/* Example 1 */
						$('#ex1').rangepicker({
						formatter: function(value) {
						return 'Current value: ' + value;
						}
						});
						$('#ex1').rangepicker({
						formatter: function(value) {
						return 'Current value: ' + value;
						}
						});
						/* Example 2 */
					// $("#ex20, #ex21, #ex22").rangepicker({});
					/* Example 3 */
					var RGBChange = function() {
						$('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
					};
					
					$('.async-rangepicker, .rangepicker-test')
						.rangepicker()
						.on('slide', function(event){
						});

					// console.log(foo);

					var r = $('#R').rangepicker()
						.on('slide', RGBChange)
						.data('rangepicker');
					var g = $('#G').rangepicker()
						.on('slide', RGBChange)
						.data('rangepicker');
					var b = $('#B').rangepicker()
						.on('slide', RGBChange)
						.data('rangepicker');

					bar = $('#R, #G, #B')
						.rangepicker()
						.on('slide', RGBChange)


					/* Example 4 */
					$("#ex4").rangepicker({
						reversed : true
					});
					/* Example 5 */
					$("#ex5").rangepicker();
							$("#destroyEx5RangePicker").click(function() {
								$("#ex5").rangepicker('destroy');
							});
							/* Example 6 */
							$("#ex6").rangepicker();
							$("#ex6").on('slide', function(slideEvt) {
								$("#ex6RangePickerVal").text(slideEvt.value);
							});
							/* Example 7 */
							$("#ex7").rangepicker();
							$("#ex7-enabled").click(function() {
								if(this.checked) {
									$("#ex7").rangepicker("enable");
								}
								else {
									$("#ex7").rangepicker("disable");
								}
							});
							/* Example 8 */
							$("#ex8").rangepicker({
								tooltip: 'always'
							});
							/* Example 9 */
							$("#ex9").rangepicker({
								precision: 2,
								value: 8.115
							});
						/* Example 10 */
						$("#ex10").rangepicker({});
						/* Example 11 */
						$("#ex11").rangepicker({
						step: 20000,
						min: 0,
						max: 200000
						});
					});
				</script>
				<!-- Placed at the end of the document so the pages load faster -->
			</body>
		</html>