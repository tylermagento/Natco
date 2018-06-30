<?php get_header() ?>
<?php while ( have_posts() ) : the_post(); ?>
    <?php
    $background = get_field('background');
    ?>
<article>
    <style>
        .custom-page
    </style>
    <div class="pagesingle-container">
        <div class="pagesingle-imagepanel">
            <div class="pagesingle-image" style="background-image:url('<?php echo $background ?>');"></div>
        </div>
        <div class="pagesingle-textpanel">
            <div class="inner-textcontainer">
                <div>
                    <div class="tab-buttoncontainer">
                                <?php $i = 1 ?>
                                <?php while ( have_rows('stores') ) : the_row(); ?>
                                <span class="tab-button <?php if($i==1) echo 'active' ?>"><?php echo get_sub_field('address') ?></span><?php if($i<count(get_field('stores'))) : ?>&nbsp;&nbsp;/&nbsp;<?php endif; ?>
                                <?php $i++ ?>
                                <?php endwhile; ?>
                    <div class="tab-container">
                        <?php $j=1 ?>
                        <?php while ( have_rows('stores') ) : the_row(); ?>

                            <div class="tab-panel <?php if($j==1) echo 'active' ?>">
                                <p>
                                    <?php echo get_sub_field('information') ?>
                                </p>
                            </div>
                            <?php $j++ ?>
                        <?php endwhile; ?>

                    </div>
                </div>
                <div id="contactform_container">
                    <?php echo do_shortcode('[contact-form-7 id="74" title="Contact form 1"]') ?>
                </div>
            </div>
        </div>
    </div>
</article>
<?php  endwhile; ?>
<?php get_footer() ?>
