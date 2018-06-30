<?php
get_header();
?>


<?php
$query = new WP_Query(array(
    'post_type' => 'project',
    'post_status' => 'publish',
    'posts_per_page' => -1
));
$posts = $query->posts;
?>
<article>
    <div id="projectgrid_container" class="bg-lightgrey">
        <div id="projectgrid_inner">
            <div class="projectgrid-row default-2image">
            <?php foreach ($posts as $post) :  ?>
                <?php the_post(); ?>
                <div class="projectgrid-item">
                    <a class="internal-link" href="<?php echo get_permalink($post->ID) ?>">
                        <?php if (has_post_thumbnail( $post->ID ) ): ?>
                            <?php echo get_post_thumnail($post->ID,600,600); ?>
                        <?php endif ?>
                    </a>
                    <style>
                        .projectgrid-bgbase#rprojbg_1-1 {
                            background: rgba(60,37,19,100);
                            background: -moz-linear-gradient(top, rgba(60,37,19,0) 0%, rgba(60,37,19,100) 100%);
                            background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(60,37,19,0)), color-stop(100%, rgba(60,37,19,100)));
                            background: -webkit-linear-gradient(top, rgba(60,37,19,0) 0%, rgba(60,37,19,100) 100%);
                            background: -o-linear-gradient(top, rgba(60,37,19,0) 0%, rgba(60,37,19,100) 100%);
                            background: -ms-linear-gradient(top, rgba(60,37,19,0) 0%, rgba(60,37,19,100) 100%);
                            background: linear-gradient(to bottom, rgba(60,37,19,0) 0%, rgba(60,37,19,100) 100%);
                        }
                    </style>
                    <div id="rprojbg_1-1" class="projectgrid-bgbase"></div>
                    <div class="projectgrid-title">
                        <h3><?php echo $post->post_title ?></h3>
                        <div class="projectgrid-location">
                            <?php echo the_field('location') ?>
                        </div>
                    </div>
                    <div class="projectgrid-category"><span> <?php echo the_field('category') ?></span></div>
                    <div class="projectgrid-anchor"></div>
                </div>
            <?php endforeach; ?>
            </div>
        </div>
    </div>
</article>
<?php
get_footer();
