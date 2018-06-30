<?php
get_header();
?>


<?php
$query = new WP_Query(array(
    'post_type' => 'post',
    'post_status' => 'publish',
    'posts_per_page' => 10
));
$posts = $query->posts;
?>
    <article>
        <div id="page_scrollgrids">
            <div class="page-textrow">
                <div class="journal-titletab">
                    <h1>Stories We Tell Through<br>the Spaces We Shape</h1>
                </div>
            </div>
            <div id="journallisting_container" data-tentries="3">
                <?php foreach ($posts as $post) :  ?>
                <?php
                    $type =  get_field('type') ;
                    $background = get_field('background');
                ?>
                <div class="journallisting-panel <?php if($type =='normal') { echo 'image-normal';} else { echo 'image-backgroundfull'; } ?> toggle">
                    <?php if ($background): ?>
                        <div class="jl-imagebg" style="background-image:url('<?php echo $background ?>');"></div>
                    <?php endif ?>
                    <div class="jl-contentpanel">
                        <div class="jl-inner">
                            <div class="jl-imagepanel">
                            <?php if (has_post_thumbnail( $post->ID ) ): ?>
                                <?php echo get_post_thumnail($post->ID,600,300); ?>
                            <?php endif ?>
                            </div>
                            <div class="jl-textpanel">
                                <div class="jl-date"><?php echo get_the_date('M,d Y',$post->ID) ?></div>
                                <h3><?php echo $post->post_title ?></h3>
                                <p>
                                    <?php
                                        $content = get_post_field('post_content', $post->ID);
                                        $content = strip_tags($content);
                                        echo substr($content, 0, 100);
                                    ?>
                                </p>
                                <p><a class="internal-link text-link" href="<?php echo get_permalink($post->ID) ?>">Read More</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="jl-anchor"></div>
                </div>
                <!-- End Journal Panel -->
                <?php endforeach; ?>
            </div>
            <div style="clear: both"></div>
        </div>
    </article>
<?php
get_footer();
