<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductSubCategoryModel extends Model
{
    protected $table = 'product_sub_category';
    protected $primaryKey = 'idproduct_sub_category';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    protected $allowedFields = ['code', 'name', 'product_category_idproduct_category'];

    protected $useTimestamps = false;

    protected $validationRules    = [
        'code'     => 'required|alpha_numeric_space|min_length[3]|is_unique[product_category.code]',
        'name'        => 'required|alpha_numeric_space|min_length[3]|is_unique[product_category.name]',
        'product_category_idproduct_category' => 'required'
    ];
    protected $validationMessages = [
        'code'        => [
            'required' => 'Code field can not be empty.',
            'min_length' => 'Code must be longer than 3 digits',
            'alpha_numeric_space' => 'Code must be contains only number and letters',
            'is_unique' => 'Sorry. That code has already been registered. Please choose another.',
        ],
        'name'        => [
            'required' => 'Name field can not be empty.',
            'min_length' => 'Nmae must be longer than 3 digits',
            'alpha_numeric_space' => 'Name must be contains only number and letters',
            'is_unique' => 'Sorry. That Name has already been registered. Please choose another.',
        ],
        'product_category_idproduct_category' => [
            'required' => 'Product Category Id can not be empty.'
        ]
    ];
    protected $skipValidation     = false;
}
