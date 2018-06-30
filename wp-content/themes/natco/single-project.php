<?php
get_header();
?>

<article>
    <?php while ( have_posts() ) : the_post(); ?>
                <div id="article_masthead" class="project-mh">
                    <div id="masthead_container">
                        <div class="masthead-panel">
                            <div class="masthead-panel-image" style="background-image:url('<?php echo the_field('background') ?>');"></div>
                            <div class="masthead-panel-title"><?php the_title( '<h1>','</h1>' ); ?></div>
                            <div class="masthead-panel-bottomtext"><?php echo get_field('location') ?></div>
                        </div>
                    </div>
                    <div id="button_slideshow"></div>
                </div>
                <?php $gallery = get_field('gallery') ?>
                <!-- Gallery slideshow -->
                <div id="slideshow_container" class="hidden">
                    <?php foreach ($gallery as $pic) : ?>
                        <div class="gallery-thumbpanel" data-type="image" data-imagelink="<?php echo $pic['url'] ?>" title=""></div>
                    <?php endforeach; ?>
                </div>
                <div id="projectgrid_container">
                    <div id="projectgrid_inner">
                         <?php the_content() ?>
                    </div>
                </div>
    <?php endwhile; ?>
</article>
<?php
$others = new WP_Query(array(
    'post_type' => 'project',
    'post_status' => 'publish',
    'post__not_in' => [get_the_ID()],
    'posts_per_page' => 2
));
$posts = $others->posts;
?>
<div id="gallery_imagecontainer">
    <div id="gallery_scrollcontainer">
        <div class="gallery-imagepanel">

        </div>
        <div class="gallery-imagetextcontainer">
            <div class="gallery-imagetext"></div>
            <div class="gallery-prevbutton"></div>
            <div class="gallery-nextbutton"></div>
<!--            <div class="gallery-pauseplay"></div>-->
        </div>
        <div class="others_product">
            <ul class="navigator_products">
                <?php foreach ($posts as $key => $post) : ?>
                    <li>
                        <a href="<?php echo get_permalink($post->ID) ?>" class="<?php if($key==0) : ?> left <?php endif ?> <?php if($key==0) : ?> right <?php endif ?>">
                            <?php if (has_post_thumbnail( $post->ID ) ): ?>
                                <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); ?>
                                <img src="<?php echo $image[0] ?>" alt="<?php echo $post->post_title ?>"/>
                            <?php endif ?>
                            <span><?php echo $post->post_title ?></span>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="gallery-closebutton"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 16 16" enable-background="new 0 0 16 16" xml:space="preserve"><g><path fill="#cccccc" d="M15.7,14.3L9.4,8l6.3-6.3c0.4-0.4,0.4-1,0-1.4c-0.4-0.4-1-0.4-1.4,0L8,6.6L1.7,0.3c-0.4-0.4-1-0.4-1.4,0
		c-0.4,0.4-0.4,1,0,1.4L6.6,8l-6.3,6.3c-0.4,0.4-0.4,1,0,1.4c0.4,0.4,1,0.4,1.4,0L8,9.4l6.3,6.3c0.4,0.4,1,0.4,1.4,0
		C16.1,15.3,16.1,14.7,15.7,14.3z"/></g></svg>
    </div>
    <!--<div class="gallery-prevbutton"></div>
    <div class="gallery-nextbutton"></div>-->
</div>
<style>
    .custom-page #projectgrid_container{
        background: -moz-linear-gradient(top, #9a8a6a 0%, #262222 100%);
        background: -webkit-gradient(left top, left bottom, color-stop(0%, #9a8a6a), color-stop(100%, #262222));
        background: -webkit-linear-gradient(top, #9a8a6a 0%, #262222 100%);
        background: -o-linear-gradient(top, #9a8a6a 0%, #262222 100%);
        background: -ms-linear-gradient(top, #9a8a6a 0%, #262222 100%);
        background: linear-gradient(top bottom, #9a8a6a 0%, #262222 100%);
        color: #fff;
    }
    #projectgrid_container .projectgrid-detailbg  {
        Background-color: #56504c;
    }
</style>
<?php
get_footer();
?>
