<?php
/*
Template Name: Archives chronologique
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package understrap
 */

get_header();

$container   = get_theme_mod( 'understrap_container_type' );

?>

<div class="wrapper" id="page-wrapper">

	<div class="<?php echo esc_attr( $container ); ?>" id="content" tabindex="-1">

		<div class="row">

			<main class="site-main" id="main">

				<?php

$previous_year = $year = 0;
$previous_month = $month = 0;
$ul_open = false;

// $myposts = get_posts('numberposts=-1&orderby=post_date&order=DESC');

$args = array(
	'post_type' => 'cahiers_audition',
 );
$postslist = get_posts($args);

?>
<?php foreach($postslist as $post) : ?>

	<?php

	setup_postdata($post);

	$year = mysql2date('Y', $post->post_date);
	$month = mysql2date('n', $post->post_date);
	$day = mysql2date('j', $post->post_date);

	?>

	<?php if($year != $previous_year || $month != $previous_month) : ?>

		<?php if($ul_open == true) : ?>
		</ul>
		<?php endif; ?>

		<h3><?php the_time('F Y'); ?></h3>

		<ul>

		<?php $ul_open = true; ?>

	<?php endif; ?>

	<?php $previous_year = $year; $previous_month = $month; ?>

	<li><span><?php the_time('j F'); ?> - </span> <span><a href="<?php the_permalink(); ?>"><?php the_title(); ?> <?php the_post_thumbnail(); ?></a></span></li>

<?php endforeach; ?>
	</ul>

			</main><!-- #main -->

		</div><!-- #primary -->

	</div><!-- .row -->

</div><!-- Container end -->

</div><!-- Wrapper end -->

<?php get_footer(); ?>
