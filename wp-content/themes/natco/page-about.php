<?php
get_header();
?>
    <?php while ( have_posts() ) : the_post(); ?>
        <article>
            <div id="page_panelcontainer">
                <div id="page_panelscroll">
                    <!--Video-->
                    <div class="page-panel panel-mastheadcontainer videomasthead">
                        <div id="masthead_container">
                            <div class="masthead-panel">
                                <div class="masthead-panelmov">
                                    <?php
                                        $video = get_field('video');
                                        $videodescription = get_field('video_description');
                                    ?>
                                    <video autoplay loop playsinline muted class="videofill">
                                        <source src="<?php echo $video ?>" type="video/mp4"/>
                                        Your browser does not support the video tag. Please upgrade your browser.
                                    </video>
                                </div>
                                <div class="masthead-overlay"></div>
                                <div class="masthead-panel-caption">
                                    <?php echo $videodescription ?>
                                    <div class="">
                                        <a class="anchor-scroll" href="#">Scroll down for more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Video-->
                    <?php $i = 1 ?>
                    <?php while ( have_rows('team_members') ) : the_row(); ?>
                        <?php
                            $name = get_sub_field('name');
                            $picture = get_sub_field('picture');
                            $position = get_sub_field('position');
                            $description = get_sub_field('discription');
                            $i++;
                        ?>
                        <!--Member-->
                        <div class="page-panel panel-left bg-white">
                            <?php if( isset($picture[0])) : ?>
                            <div class="page-panel-image panel-imagenormal" style="background-image:url('<?php echo $picture[0]['url'] ?>');"></div>
                            <?php endif ?>
                            <?php if( isset($picture[1])) : ?>
                            <div class="page-panel-subimage" style="background-image:url('<?php echo $picture[1]['url'] ?>');"></div>
                            <?php endif ?>
                            <div class="page-panel-textcontainer">
                                <div class="page-panel-anchor">
                                    <h3><?php echo $name ?></h3>
                                    <div class="header-3-sub"><?php echo $position ?></div>
                                    <p><?php echo wp_trim_words( $description , 40, '...' ); ?></p>
                                    <div class="page-panel-popup-button">Read More</div>
                                    <div class="page-panel-popup" data-bgcolor="bg-lightgrey">
                                        <div class="page-panel-popup-close">Close</div>
                                        <div class="page-panel-popup-scroll">
                                            <div class="page-panel-popup-scrollc">
                                                <div class="ppps-inner"><div class="cus-textwidth1">
                                                        <h3><?php echo $name ?></h3>
                                                        <p><?php echo $description ?></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--Member-->
                    <?php endwhile; ?>
                </div>
            </div>
            <div id="pagepanel_buttoncontainer">
                <?php for($j=0 ;$j < $i; $j++ ) : ?>
                    <div class="pagepanel-button"></div>
                <?php endfor; ?>
            </div>
        </article>
    <?php endwhile; ?>
<?php
get_footer();
?>