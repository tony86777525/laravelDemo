<?php

namespace App\Models\Ld;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


use Encore\Admin\Traits\ModelTree;

class Layout extends Model
{
    use HasFactory;
    use ModelTree {
        ModelTree::boot as treeBoot;
    }

    protected $primaryKey = 'id';

    protected $keyType = 'integer';

    public $incrementing = true;

    public $timestamps = true;

//    protected $dateFormat = 'U';

    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';

    protected $connection = 'ld';

    protected $attributes = [];

    protected $fillable = [
        'name',
        'parent_id',
        'sort',
    ];

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->setParentColumn('parent_id');
        $this->setOrderColumn('sort');

        $this->setTitleColumn('name');
    }
}
