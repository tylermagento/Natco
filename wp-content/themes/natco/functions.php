<?php
/**
 * Created by PhpStorm.
 * User: tylernguyen
 * Date: 6/18/18
 * Time: 5:42 AM
 */

require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'options.php';

add_action( 'after_setup_theme', 'natco_setup' );

function natco_setup() {
    /*
     * Make theme available for translation.
     * Translations can be filed at WordPress.org. See: https://translate.wordpress.org/projects/wp-themes/twentyseventeen
     * If you're building a theme based on Twenty Seventeen, use a find and replace
     * to change 'twentyseventeen' to the name of your theme in all the template files.
     */
    load_theme_textdomain( 'natco' );

    // Add default posts and comments RSS feed links to head.
    add_theme_support( 'automatic-feed-links' );

    /*
     * Let WordPress manage the document title.
     * By adding theme support, we declare that this theme does not use a
     * hard-coded <title> tag in the document head, and expect WordPress to
     * provide it for us.
     */
    add_theme_support( 'title-tag' );

    /*
     * Enable support for Post Thumbnails on posts and pages.
     *
     * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
     */
    add_theme_support( 'post-thumbnails' );



    // This theme uses wp_nav_menu() in two locations.
    register_nav_menus( array(
        'top'    => __( 'Top Menu', 'natco' ),
        'social' => __( 'Social Links Menu', 'natco' ),
    ) );

    /*
     * Switch default core markup for search form, comment form, and comments
     * to output valid HTML5.
     */
    add_theme_support( 'html5', array(
        'comment-form',
        'comment-list',
        'gallery',
        'caption',
    ) );



    // Add theme support for selective refresh for widgets.
    add_theme_support( 'customize-selective-refresh-widgets' );

}

function get_post_thumnail($id,$width,$height) {
    $imageUrl = get_the_post_thumbnail_url($id);
    $imageUrl = str_replace(get_site_url(),'',$imageUrl);
    $imageUrl = ltrim($imageUrl,'/');
    return '<img src="'.'/thumbnail/'.$width.'/'.$height.'/'.$imageUrl.'"/>';
}