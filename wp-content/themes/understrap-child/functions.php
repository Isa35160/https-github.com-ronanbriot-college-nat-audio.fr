<?php
/**
 * Understrap functions and definitions
 *
 * @package understrap
 */

/**
 * Initialize theme default settings
 */
require get_template_directory() . '/inc/theme-settings.php';

/**
 * Theme setup and custom theme supports.
 */
require get_template_directory() . '/inc/setup.php';

/**
 * Register widget area.
 */
require get_template_directory() . '/inc/widgets.php';

/**
 * Enqueue scripts and styles.
 */
require get_template_directory() . '/inc/enqueue.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/pagination.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Custom Comments file.
 */
require get_template_directory() . '/inc/custom-comments.php';

/**
 * Load Jetpack compatibility file.
 */
require get_template_directory() . '/inc/jetpack.php';

/**
 * Load custom WordPress nav walker.
 */
require get_template_directory() . '/inc/bootstrap-wp-navwalker.php';

/**
 * Load WooCommerce functions.
 */
require get_template_directory() . '/inc/woocommerce.php';

/**
 * Load Editor functions.
 */
require get_template_directory() . '/inc/editor.php';

add_action( 'widgets_init', 'theme_widgets_init' );

function theme_widgets_init() {
  register_sidebar( array(
    'name'          => __( 'Footer Sidebar 1', 'undertrap' ),
    'id'            => 'footer-sidebar-1',
    'description'   => '1ère sidebar de footer',
      'before_widget'  => '<div id="%1$s" class="footer-widget %2$s">',
      'after_widget'   => '</div><!-- .footer-widget -->',
      'before_title'   => '<h3 class="widget-title">',
      'after_title'    => '</h3>',
  ) );

  register_sidebar( array(
    'name'          => __( 'Footer Sidebar 2', 'undertrap' ),
    'id'            => 'footer-sidebar-2',
    'description'   => '1ère sidebar de footer',
      'before_widget'  => '<div id="%1$s" class="footer-widget %2$s">',
      'after_widget'   => '</div><!-- .footer-widget -->',
      'before_title'   => '<h3 class="widget-title">',
      'after_title'    => '</h3>',
  ) );

  register_sidebar( array(
    'name'          => __( 'Footer Sidebar 3', 'undertrap' ),
    'id'            => 'footer-sidebar-3',
    'description'   => '1ère sidebar de footer',
      'before_widget'  => '<div id="%1$s" class="footer-widget %2$s">',
      'after_widget'   => '</div><!-- .footer-widget -->',
      'before_title'   => '<h3 class="widget-title">',
      'after_title'    => '</h3>',
  ) );
}

add_image_size( 'my-thumb-350', 350, 250, true );
add_image_size( 'my-thumb-725', 725, 543, true);

add_filter( 'image_size_names_choose', 'theme_custom_image_sizes' );

function theme_custom_image_sizes( $sizes ) {
    return array_merge( $sizes, array(
        'my-thumb-350' => __('350px by 250px'),
        'my-thumb-725' => __('725px by 543px'),
    ) );
}
