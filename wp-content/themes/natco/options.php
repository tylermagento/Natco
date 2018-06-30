<?php
/**
 * Created by PhpStorm.
 * User: vanth
 * Date: 14/06/2017
 * Time: 11:42 SA
 */

Redux::setArgs(
    'natco', // This is your opt_name,
    array( // This is your arguments array
        'display_name' => 'Natco Options',
        'menu_title' => 'Theme Options',
        'admin_bar' => 'true',
        'page_slug' => 'natco-options',
        'menu_type' => 'menu',
        'allow_sub_menu' => true,
    )
);


Redux::setSection(
    'natco',
    array(
        'id'    => 'homepage',
        'title' => 'Homepage',
        'icon' => 'el el-puzzle',
        'fields' => array(
            array(
                'id'       => 'hp_background',
                'type'     => 'gallery',
                'title'    => __('Backgrounds', 'natco')
            ),
            array(
                'id'=>'hp_caption',
                'type' => 'textarea',
                'title' => __('Homepage caption', 'natco'),
                'validate' => 'html_custom',
                'default' => '',
                'allowed_html' => array(
                    'a' => array(
                        'href' => array(),
                        'title' => array()
                    ),
                    'div'=> array('class'=>[]),
                    'span' => array('class'=>[]),
                    'br' => array(),
                    'em' => array(),
                    'strong' => array()
                )
            )
        )
    )
);


Redux::setSection(
    'natco',
    array(
        'id'    => 'contact',
        'title' => 'Contact',
        'icon' => 'el el-heart',
        'fields' => array(
            array(
                'id'       => 'ct_background',
                'type'     => 'media',
                'url'      => true,
                'title'    => __('Background', 'natco')
            )
        )
    )
);