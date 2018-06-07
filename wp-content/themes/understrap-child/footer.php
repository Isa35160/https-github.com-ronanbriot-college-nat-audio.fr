<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package understrap
 */

$the_theme = wp_get_theme();
$container = get_theme_mod( 'understrap_container_type' );
?>

<?php get_sidebar( 'footerfull' ); ?>

<div class="footer-color">
<div class="footer_main">
<?php if ( is_active_sidebar( 'footer-sidebar-1' ) ) : ?>
	<div id="footer-sidebar-1" class="footer-aside col-md-12 col-lg-6">
		<div class="footer-aside-inner">
			<?php dynamic_sidebar( 'footer-sidebar-1' ); ?>
		</div>
	</div>
<?php endif; ?>


<div class="partenaires">



<?php if ( is_active_sidebar( 'footer-sidebar-2' ) ) : ?>
	<div id="footer-sidebar-2" class="footer-aside col-md-6 col-lg-3">
		<div class="footer-aside-inner">
			<?php dynamic_sidebar( 'footer-sidebar-2' ); ?>
		</div>
	</div>
<?php endif; ?>
</div>
	</div>

<?php if ( is_active_sidebar( 'footer-sidebar-3' ) ) : ?>
	<div id="footer-sidebar-3" class="footer-aside col-md-6 col-lg-3">
		<div class="footer-aside-inner">
			<?php dynamic_sidebar( 'footer-sidebar-3' ); ?>
		</div>
	</div>
<?php endif; ?>

<section>
	<div class="Copyright">
		© <?php echo the_time('Y'); ?> <?php bloginfo('name'); ?> - Tous droits réservés - Site réalisé par <a href="www.kakii.fr">Kakii</a>
	</div>
	<div class="ms_cgv">
		<ul>
			<li> <a href="#">Mentions légales</a> </li>
			<li> <a href="#">Conditions Générales de Vente</a> </li>

		</ul>
	</div>
</section>

	</div>

<div class="footer-color">



<div class="wrapper" id="wrapper-footer">

	<div class="<?php echo esc_attr( $container ); ?>">

		<div class="row">

			<div class="col-md-12">

				<footer class="site-footer" id="colophon">

					<div class="site-info">

<div class="footer_main">



<section class="coordonnees">
	<h4><?php bloginfo('name'); ?></h4>
	<p>Audioprothésistes chargés d'Enseignement <br> aux facultés de Médecine, <br>aux Facultés de Pharmacie <br> et au <br>Conservatoire National des Arts et Métiers  <br> (Diplôme d'état d'audioprothésiste) </p>
	<p class="adress">20 rue Thérèse - 75001 Paris<br>
	Tel : 01 42 96 87 77 <br>
	Fax : 01 49 26 02 25
 </p>

 <a href="#">Contact</a>

</section>

<section class="partenaires">
	<ul>

		<li> <a href="www.unsaf.org"> <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/06/AFA_logo.png" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/06/edpaudio_logo.png" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/06/fa_logo.png" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/06/sfa_logo.gif" alt=""> </a> </li>
		<li> <a href="www.unsaf.org">  <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/04/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org">  <img src="http://localhost/college-nat-audio/wp-content/uploads/2018/06/vinci_logo.jpg" alt=""> </a> </li>

	</ul>
</section>
</div>
<section>
	<div class="Copyright">
		© <?php echo the_time('Y'); ?> <?php bloginfo('name'); ?> - Tous droits réservés - Site réalisé par <a href="www.kakii.fr">Kakii</a>
	</div>
	<div class="ms_cgv">
		<ul>
			<li> <a href="#">Mentions légales</a> </li>
			<li> <a href="#">Conditions Générales de Vente</a> </li>

		</ul>
	</div>
</section>

				</footer><!-- #colophon -->

			</div><!--col end -->

		</div><!-- row end -->

	</div><!-- container end -->

</div><!-- wrapper end -->

</div><!-- #page we need this extra closing tag here -->

<?php wp_footer(); ?>
</div>

</body>

</html>
