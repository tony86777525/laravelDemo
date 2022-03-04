<?php

namespace App\Admin\Controllers\Ld;

use App\Models\Ld\Layout;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Layout\Column;
use Encore\Admin\Widgets\Box;

class LayoutController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Layout';


    public function index(Content $content)
    {
        return $content
            ->title('Layouts')
            ->description('List')
            ->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());

                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_url('product-categories/create'));

                    $menuModel = Layout::class;

                    $form->select('parent_id', 'parent')->options($menuModel::selectOptions());
                    $form->text('name', 'Name')->rules('required');

                    $column->append((new Box(trans('admin.new'), $form))->style('success'));
                });
            });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Layout());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Layout name'));
        $grid->column('sort', __('sort'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Layout::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Layout name'));
        $show->field('sort', __('sort'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Layout());


        $form->select('parent_id', __('parent'))->options(Layout::selectOptions());
        $form->text('name', __('Layout name'));
        $form->hidden('sort', __('sort'))->default(0);

        $form->tools(function (Form\Tools $tools) {
            $tools->disableList();
            $tools->disableDelete();
            $tools->disableView();
        });
        $form->disableEditingCheck();
        $form->disableViewCheck();
        $form->disableCreatingCheck();
//        $form->footer(function ($footer) {
//            $footer->disableReset();
//        });

        return $form;
    }

    protected function treeView()
    {
        $menuModel = Layout::class;

        $tree = new Tree(new $menuModel());

        $tree->disableCreate();

        $tree->branch(function ($branch) {
            $payload = "<strong>{$branch['name']}</strong>";

            if (!isset($branch['children'])) {
//                if (url()->isValidUrl($branch['uri'])) {
//                    $uri = $branch['uri'];
//                } else {
//                    $uri = admin_url($branch['uri']);
//                }
//                $uri = $branch['uri'];

//                $payload .= "&nbsp;&nbsp;&nbsp;<a href=\"$uri\" class=\"dd-nodrag\">$uri</a>";
            }

            return $payload;
        });

        return $tree;
    }
}
