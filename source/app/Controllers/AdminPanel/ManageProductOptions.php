<?php

namespace App\Controllers\AdminPanel;

use App\Controllers\BaseController;
use App\Models\ProductCategoryModel;
use App\Models\ProductSubCategoryModel;
use Exception;

class ManageProductOptions extends BaseController
{
    public function index()
    {
        $pagedata = [];

        #creating data objects at page init
        $productcategorymodel = new ProductCategoryModel();
        $productsubcategorymodel = new ProductSubCategoryModel();
        $productcategory = $productcategorymodel->findAll();
        $productsubcategory = $productsubcategorymodel->findAll();

        $pagedata = array(
            'productcategorylist' => $productcategory,
            'productsubcategorylist' => $productsubcategory
        );

        #return product option managemetn interface
        return view('admin_panel/page_contents/manage_product_options', $pagedata);
    }

    //adding product category to database
    public function saveProductCategory()
    {
        $result = [];
        try {
            if ($this->request->getMethod() === 'post') {
                $productcategory = new ProductCategoryModel();
                $data = array(
                    'code' => strtoupper($this->request->getVar('code')),
                    'name' => strtoupper($this->request->getVar('name')),
                );
                $validation = \Config\Services::validation();
                $validation->setRules($productcategory->validationRules, $productcategory->validationMessages);
                if ($validation->run($data)) {

                    $productcategory->insert($data);
                    $result = array(
                        'success' => true,
                        'message' => 'data successfuly saved.',
                        'errors' => $validation->getErrors(),
                    );
                } else {
                    $result = array(
                        'success' => false,
                        'message' => 'could not save data.',
                        'errors' => $validation->getErrors(),
                    );
                }
            } else {
                $result = array(
                    'message' => 'invalid method',
                    'data' => ''
                );
            }
        } catch (Exception $error) {
            $result = array(
                'success' => false,
                'message' => $error->getMessage(),
            );
        }

        echo json_encode($result);
    }
}
