<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductCategoryModel extends Model
{
    protected $table = 'product_category';
    protected $primaryKey = 'idproduct_category';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    protected $allowedFields = ['code', 'name'];

    protected $useTimestamps = false;

    //protected $beforeInsert = ['beforeInsert'];
    //protected $beforeUpdate = ['beforeUpdate'];

    protected $validationRules    = [
        'code'     => 'required|alpha_numeric_space|min_length[3]|is_unique[product_category.code]',
        'name'        => 'required|alpha_numeric_space|min_length[3]|is_unique[product_category.name]',
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
        ]
    ];
    protected $skipValidation     = false;

    protected function beforeInsert(array $data)
    {
        //$data['data']['code'] = strtoupper($data['data']['code']);
        //$data['data']['name'] = strtoupper($data['data']['name']);
    }

    protected function beforeUpdate(array $data)
    {
        echo 'somedata';
        //$data['data']['code'] = strtoupper($data['data']['code']);
        //$data['data']['name'] = strtoupper($data['data']['name']);
    }
}
