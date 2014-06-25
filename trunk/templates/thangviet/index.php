﻿<?php
$app = JFactory::getApplication(); 
$temp_path = JURI::base() . 'templates/' . $app->getTemplate();
JHtml::_('bootstrap.framework');
?>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <meta charset="UTF-8" />
    <jdoc:include type="head" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href='http://fonts.googleapis.com/css?family=Ubuntu&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<?php echo $temp_path; ?>/css/1140.css">
	<link rel="stylesheet" href="<?php echo $temp_path; ?>/css/my-style.css">
   <!--<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>-->
	
</head>
<body>
    <div class="container12">
        <div class="row">
            <div class="column12">
                <img style="width: 100%;" src="<?php echo $temp_path; ?>/images/banner.png" />
				<div class="menu">
					<jdoc:include type="modules" name="menutop" style="none" />
				 </div>
            </div>
			<div class="column12">
			<?php if ($this->countModules('slideshow')) : ?>
				<jdoc:include type="modules" name="slideshow" style="none" />
			<?php endif; ?>
			</div>
        </div>
     
        <div class="row wrap_content">
			<?php if ($this->countModules('left')) : ?>
				<div class="column3"><jdoc:include type="modules" name="left" style="xhtml" /></div>
			<?php endif; ?>
            
            <div class="column6">
				<jdoc:include type="message" />
				<jdoc:include type="component" />
			</div>
            <?php if ($this->countModules('right')) : ?>
				<div class="column3"><jdoc:include type="modules" name="right" style="xhtml" /></div>
			<?php endif; ?>
			<div class="info_footer">
				<jdoc:include type="modules" name="footer" />
			</div>
        </div>
	</div>	
</body>
</html>