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

<div class="wrapper" id="wrapper-footer">

	<div class="<?php echo esc_attr( $container ); ?>">

		<div class="row">

			<div class="col-md-12">

				<footer class="site-footer" id="colophon">

					<div class="site-info">


<section class="coordonnees">
	<h4><?php bloginfo('name'); ?></h4>
	<p>Audioprothésistes chargés d'Enseignement aux facultés de Médecine, aux Facultés de Pharmacie et au Conservatoire National des Arts et Métiers</p>
	<p>(Diplôme d'état d'audioprothésiste)</p>
	<p class="adress">20 rue Thérèse - 75001 <br>
	Tel : 01 42 96 87 77 <br>
	Fax : 01 49 26 02 25
 </p>

 <a href="#">Contact</a>

</section>

<section class="partenaires">
	<ul>
		<li> <a href="www.unsaf.org"> Annuaire Françaias d'Audiophonologie <img src="./img/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> EDP Audio <img src="./img/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> France Audition <img src="./img/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> Société Française d'Audiologie <img src="./img/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> UNSAF <img src="./img/unsaf.jpg" alt=""> </a> </li>
		<li> <a href="www.unsaf.org"> Vinci <img src="./img/unsaf.jpg" alt=""> </a> </li>

	</ul>
</section>

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

</body>

</html>
