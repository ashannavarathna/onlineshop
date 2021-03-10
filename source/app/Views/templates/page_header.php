<body>
    <div class="page-holder">
        <!-- navbar-->
        <header class="header bg-white">
            <div class="container px-0 px-lg-3">
                <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="/"><span class="font-weight-bold  text-dark">Ranu Computers & Electricals</span></a>
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <!-- Link--><a class="nav-link" href="<?php base_url() ?>/home">Home</a>
                            </li>
                            <li class="nav-item">
                                <!-- Link--><a class="nav-link" href="<?php base_url() ?>/shop">Shop</a>
                            </li>
                            <li class="nav-item">
                                <!-- Link--><a class="nav-link" href="<?php base_url() ?>/ProductDetails">Product detail</a>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <?php if(session()->get('userdata')): ?>
                            
                            <li class="nav-item dropdown "><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-user-alt mr-1 text-gray"></i><?php echo session()->get('userdata')['fname'].' '.session()->get('userdata')['lname']; ?></a>
                                <div class="dropdown-menu mt-3 " aria-labelledby="pagesDropdown">
                                    <a class="dropdown-item border-0 transition-link" href="/profile/<?php echo session()->get('userdata')['iduser_account']?>">Profile</a>
                                    <a class="dropdown-item border-0 transition-link" href="/Users/getUserSignOut/">Sign Out</a></div>
                            </li>
                            <?php else: ?>
                                <li class="nav-item"><a class="nav-link" href="/signin"> <i class="fas fa-user-alt mr-1 text-gray"></i>Sign In</a></li>
                            <?php endif; ?>
                        </ul>

                    </div>
                </nav>
            </div>
        </header>