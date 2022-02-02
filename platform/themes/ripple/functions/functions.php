<?php

register_page_template([
    'no-sidebar' => __('No sidebar'),
]);

register_sidebar([
    'id'          => 'top_sidebar',
    'name'        => __('Top sidebar'),
    'description' => __('Area for widgets on the top sidebar'),
]);

register_sidebar([
    'id'          => 'footer_sidebar',
    'name'        => __('Footer sidebar'),
    'description' => __('Area for footer widgets'),
]);

RvMedia::setUploadPathAndURLToPublic();
RvMedia::addSize('featured', 565, 375)->addSize('medium', 540, 360);

add_filter(BASE_FILTER_BEFORE_RENDER_FORM, function ($form, $data)
{
    if (get_class($data) == \Botble\Blog\Models\Category::class) {

        $test = \MetaBox::getMetaData($data, 'category_img', true);

        $form
            ->add('category_img', 'mediaImage', [
                'label'      => __('Category Image'),
                'label_attr' => ['class' => 'control-label'],
                'value'      => $test,
            ]);

    }

    return $form;
}, 120, 3);

add_action(BASE_ACTION_AFTER_CREATE_CONTENT, 'save_addition_fields', 120, 3);
add_action(BASE_ACTION_AFTER_UPDATE_CONTENT, 'save_addition_fields', 120, 3);

/**
 * @param string $screen
 * @param Request $request
 * @param Model $data
 */
function save_addition_fields($screen, $request, $data)
{
    if (get_class($data) == \Botble\Blog\Models\Category::class) {
        MetaBox::saveMetaBoxData($data, 'category_img', $request->input('category_img'));
    }
}