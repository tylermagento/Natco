<?php 


get_header(); 



?>

    <?php global $natco; ?>
    <article>
        <div id="front_container">
            <div class="front-panel">
                <?php
                    $arrayBg = array();
                    $bgHomepages = $natco['hp_background'];
                    if($bgHomepages){
                        $arrayBg = explode(',',$bgHomepages);
                    }
                ?>
                <?php if(!empty($arrayBg)) :  ?>
                    <?php foreach ($arrayBg as $bg) : ?>
                        <div class="front-img" style="background-image: url('<?php echo wp_get_attachment_url( $bg ); ?>');"></div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
            <div class="front-paneloverlay"></div>
            <?php echo $natco['hp_caption'] ?>
        </div>
    </article>

<?php

get_footer();