<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Supplier Form</title>

    <!-- tab icon -->
    <link rel="shortcut icon" href="/sites/UK-Forms/NewSuppliers/SiteAssets/Images/favicon.ico">
    <!-- 
    Font Awesome CSS -->
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/SiteAssets/FontAwesomeCSS/fontawesome.css"
        type="text/css">
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/SiteAssets/FontAwesomeCSS/solid.css" type="text/css">
    <!--  
    our external css stylesheets-->
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/SiteAssets/Styles/new-supplier-form.css"
        type="text/css" />



    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/SiteAssets/FontAwesomeCSS/fontawesome.css"
        type="text/css">
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/SiteAssets/FontAwesomeCSS/solid.css" type="text/css">

    <!-- CDN Bootstrap css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- our external css stylesheets -->
    <link rel="stylesheet" href="/sites/UK-Forms/NewSuppliers/Styles/new-supplier-form.css" type="text/css" />

</head>

<body>

    <header class="header">

        <h1><img id="logo" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Images/__sitelogo__BMG_Logo_Blue_neg_CMYK.png"
                alt="bauer-logo">New Supplier /
            Contributor
            > Request Form </h1>

        <div class="disclaimer container">
            <p>Prior to completing this form, use this search button to check if the supplier or contributor exists in
                Proactis already -
                <button id="supplier-search-btn" class="btn btn-info" data-toggle="modal"
                    data-target="#supplier-search-modal"><i class="fas fa-search"></i> Supplier Search </button>
            </p>

            <p>Complete this form in order to request the creation of a new supplier or contributor in Proactis. This
                will
                allow you to raise PO's and pay them in a timely manner.
                All suppliers are paid by BACS, so please ensure bank details below are complete and accurate.</p>
            <p>The supplier account will be set up with a standard payment term of 30 days, unless a copy of a signed
                contract
                is emailed to BCS separately.
            </p>
            <p>* Denotes a mandatory field and must be completed. </p>

        </div>

    </header>

    <!-- HIDDEN - Modal for supplier search -->
    <div class="modal fade" id="supplier-search-modal" tabindex="-1" role="dialog" aria-labelledby="basicModal"
        aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Supplier / Contributor - Search form</h4>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>

                </div>
                <div class="modal-body">
                    <p>If you need supplier linking to your company code, please email: bauervmaint@bauerservices.co.uk
                    </p>
                    <p>Complete one of bother of the fields below to search Proactis for existing suppliers and
                        contributors.</p>
                    <div class="modal-input-wrapper">
                        <div>
                            <div class="form-group col">
                                <label for="modal_supp_name">Supplier Name </label>
                                <input name="modal_supp_name" id="modal-supplier-name-inp" class="form-control"
                                    type="text" placeholder="Enter partial name if full name unknown" />
                            </div>
                        </div>
                        <div>

                            <div class="form-group col">
                                <label for="modal_postcode">Postcode</label>
                                <input name="modal_postcode" id="modal-postcode-inp" class="form-control" type="text" />
                            </div>
                        </div>
                    </div>
                    <button id="modal-search-btn" class="btn btn-info"><i class="fas fa-search"></i> Search
                    </button>
                    <br>
                    <div id="modal-results">
                        <p>Results will be shown here.</p>
                    </div>

                </div>
                <div class="modal-footer">
                    <div class="footer-inner">

                        <p> For any queries, contact the BCS Vendor Maintenance Team </p>
                        <p> <i class="fas fa-envelope"></i> bauervmaint@bauerservices.co.uk</p>
                        <p> <i class="fas fa-phone"></i> 01 733 213 718</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <section id="form-ctnr" class="container">
        <form id="newsupp-form">

            <!-- ================================================================================================================= -->
            <!-- ========================================= "User Details" SECTION ============================================    -->
            <h2 class="h2-banner"> User Details </h2>

            <section id="user-details-section" class="row">

                <div class="col-lg-6 col-md-6 col-sm-6">

                    <!-- Employee Name -->
                    <div>
                        <div class="form-group col">
                            <label for="employee_name">Your Name*</label>
                            <input name="employee_name" id="typeAhead" class="form-control" type="text"
                                placeholder="Please start typing a name and select from the list of suggestion" />
                        </div>
                    </div>

                    <!-- Company code -->
                    <div>
                        <div class="form-group col">
                            <label for="company_code">Company Code</label>

                            <input name="company_code" id="company-code" class="form-control" type="text" />
                        </div>
                    </div>

                    <!-- Supplier request reviewer -->
                    <div>
                        <div class="form-group col">
                            <label for="reviewer">Supplier request reviewer *</label>
                            <select name="reviewer" id="reviewer-input" class="form-control">

                            </select>
                        </div>
                    </div>

                </div>

                <!-- Employees details will populate after user typed his name -->
                <div class=" col-lg-6 col-md-6 col-sm-6">

                    <table id="employeeDetails" class="table table-bordered ">
                        <tbody>
                            <tr>
                                <td style="width: 120px;">Division</td>
                                <td id="emp-division"></td>
                            </tr>
                            <tr>
                                <td>Manager</td>
                                <td id="emp-manager"></td>
                            </tr>
                            <tr>
                                <td>Office</td>
                                <td id="emp-office"></td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td id="emp-phone"></td>
                            </tr>
                            <tr>
                                <td>Cost Centre</td>
                                <td id="emp-CC"></td>
                            </tr>
                        </tbody>
                    </table>

                </div>


            </section>

            <!-- ============================================================================================================ -->
            <!-- ========================================= "Supplier" SECTION ============================================    -->


            <h2 class="h2-banner"> Supplier Details </h2>
            <section id="supplier-details-section" class="row">

                <div class="col-lg-4 col-md-3 col-sm-4">
                    <div class="form-group">
                        <label for="category">Category *</label>
                        <select name="category" id="category" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="Standard">Standard</option>
                            <option value="Contributor/Freelancer">Contributor/Freelancer</option>
                            <!-- if selected, will populate FREELANCER section ///-->
                        </select>

                    </div>
                </div>

                <!-- Is this a one-off supplier? * - if "No" selected, then hide the rest of the Supplier extender section *** -->
                <div class="col-lg-4 col-md-3 col-sm-4">
                    <div class="form-group">

                        <label for="one_off">Is this a one-off supplier? *</label>
                        <select name="one_off" id="oneoff" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="Yes">Yes</option> <!-- if YES => hide the whole supplier extender form ***-->
                            <option value="No">No</option>
                        </select>
                    </div>
                </div>
            </section>



            <!-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

            <!-- *** Supplier extender form - IF one-off supplier = "NO" display this -->

            <section id="supplier-extender-section" class="row">
                <!-- /// HIDDEN - FREELANCER SECTION => will show only if Category = "Contributor/Freelancer" is selected -->
                <section id="freelancer-section" class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="service_type">What type of Freelance service is this? *</label>
                            <select name="service_type" id="service-type-input" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="Advertising Production">Advertising Production</option>
                                <option value="Agency">Agency</option>
                                <option value="Appearance Fee">Appearance Fee</option>
                                <option value="Consultancy">Consultancy</option>
                                <option value="Design">Design</option>
                                <option value="Events Management">Events Management</option>
                                <option value="Freelance Sales">Freelance Sales</option>
                                <option value="Make-up Artist">Make-up Artist</option>
                                <option value="Photography">Photography</option>
                                <option value="Presenter/DJ">Presenter/DJ</option>
                                <option value="Programme Production">Programme Production</option>
                                <option value="Stylist">Stylist</option>
                                <option value="Subbing">Subbing</option>
                                <option value="Trainer">Trainer</option>
                                <option value="Video Production">Video Production</option>
                                <option value="Voice Artist">Voice Artist</option>
                                <option value="Writer">Writer</option>

                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="bauer_location_question">Does this supplier work at a Bauer location? *</label>
                            <select name="bauer_location_question" id="work-Bauer-location" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="tax_NI">Is Bauer responsible for payment of tax and NI? *</label>
                            <select name="tax_NI" id="tax-ni" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="bauer_equip">Does this supplier use Bauer equipment? *</label>
                            <select name="bauer_equip" id="bauer-equip" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="fix_perm">Is this supplier on a fixed term or permanent contract? *</label>
                            <select name="fix_perm" id="fix-perm" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="N/A">N/A</option>
                                <option value="Fixed">Fixed</option>
                                <option value="Permanent">Permanent</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <p class="container font-weight-bold">A decision on the taxable status of this Contributor /
                        Freelancer will
                        not be made as a result of the the responses given above.

                    </p>

                </section>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="supplier_name">Supplier Name *</label>
                        <input name="supplier_name" id="supplier-name" class="form-control" type="text"
                            placeholder="Type name" />
                    </div>

                </div>
                <!-- Is this a one-off supplier? * - if "No" selected, then hide the rest of the section -->
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="supplier_phone"> Phone *</label>
                        <input name="supplier_phone" id="supplier-phone" class="form-control" type="text" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">

                        <label for="supplier_email">E-mail address *</label>
                        <input name="supplier_email" id="supplier-email" class="form-control" type="text" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="supplier_address">Address *</label>
                        <textarea name="supplier_address" id="supplier-address" class="form-control"
                            rows="3"></textarea>
                    </div>

                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="supplier_postcode">Postcode *</label>
                        <input name="supplier_postcode" type="text" id="postcode" class="form-control" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="payment_address">Payment Address (if different to above)</label>
                        <textarea name="payment_address" id="payment-address" class="form-control" rows="3"></textarea>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="payment_postcode">Payment postcode *</label>
                        <input name="payment_postcode" type="text" id="paymt-postcode" class="form-control" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="CRN">CRN (Company Registration Number) *</label>
                        <input name="CRN" id="crn" class="form-control" type="text" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="CenshareDC5">Censhare / DC5 Industry Code (Magazines only) *</label>
                        <select name="CenshareDC5" id="CenshareDC5" class="form-control">
                            <!-- populate the options here -->
                        </select>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="VAT_number">VAT Number (if registered) *</label>
                        <input name="VAT_number" id="VAT-number" class="form-control" type="text" />
                    </div>
                </div>

                <div class="col-lg-4 col-md-3 col-sm-4">
                    <div class="form-group">

                        <label for="self_billing_question">Is this a self-billing supplier? *</label>
                        <select name="self_billing_question" id="selfbill-input" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-4 col-md-3 col-sm-4">
                    <div class="form-group">

                        <label for="foreign_perf_question">Is this supplier a foreign performer? *</label>
                        <select name="foreign_perf_question" id="foreign-perf-input" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                </div>



                <div class="col-lg-4 col-md-3 col-sm-4">
                    <div class="form-group">
                        <label for="currency">What currency will the supplier need to be paid in? *</label>
                        <select name="currency" id="currency-input" class="form-control">
                            <option selected="selected" value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="USD">USD</option> 
                            <option value="AUD">AUD</option>
                            <option value="Other">Other</option>
                            <!-- if OTHER is selected => populate specify currency field-->
                        </select>
                    </div>
                </div>

                <!-- HIDDEN, if USD is selected, show this -->
                <div id="routing-wrapper" class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="routing_question">To make payment in USD, please enter the routing number *</label>
                        <input name="routing_question" type="text" id="routing-question" class="form-control" />
                    </div>
                </div>

                <!-- HIDDEN FIELD - If "other currency" is selected, show this  -->
                <div id="other-currency-wrapper" class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="other_currency">Please specify the currency the supplier will need to be paid in
                            *</label>
                        <input name="other_currency" type="text" id="other-currency" class="form-control" />
                    </div>
                </div>

            </section>
            <!-- ============================================================================================================= -->

            <!-- ========================================= "CEST Details" SECTION ============================================    -->
            <h2 class="h2-banner"> CEST Details </h2>

            <section id="CEST-details-section" class="row">

                <!-- CEST details -->
                <!-- Is it a personal service provided? (CEST) Question -->
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="CEST_question">Is it a personal service provided? (CEST)? *</label>
                        <select name="CEST_question" id="CEST-question" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select> </div>
                </div>

            </section>

            <!--________________  HIDDEN SECTION - If CEST question = "Yes", display this _______________-->
            <section id="CEST-extender-form" class="row">

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="IT_contractor_question">Is it an IT contractor? *</label>
                        <select name="IT_contractor_question" id="IT_Contractor-question" class="form-control">
                            <option selected="selected" value="">Please select</option>
                            <option value="No">No</option>
                            <option value="Yes">Yes</option> <!-- If YES: display IT contractor special questions-->
                        </select>
                    </div>
                </div>



                <!--==================== HIDDEN FIELDS - IF "Is IT contractor?" = "YES" ============================-->
                <!-- ============================================================================= -->
                <div id="ITContractor-questions-section" class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="diversity_question">Has the diversity and inclusion policy been completed?
                                *</label>
                            <select name="diversity_question" id="diversity-question" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="Yes">Yes</option> <!-- IF selected by user, show date field -->
                                <option value="No">No</option>
                            </select>
                        </div>
                    </div>

                    <!-- HIDDEN FIELD - will show if "Diversity policy" = "YES" -->
                    <div id="diversity-date-wrapper" class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="diversity_date">If yes, when? *</label>
                            <input name="diversity_date" type="date" id="diversity-date" class="form-control" />
                        </div>
                    </div>

                    <!-- deliverables -->
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="deliverables_input">Deliverables *</label>
                            <textarea name="deliverables_input" id="deliverables" class="form-control"
                                rows="3"></textarea>
                        </div>
                    </div>

                    <!-- are you UK citizen?  -->
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="uk_citizen">Is the contractor citizen of the UK? *</label>
                            <select name="uk_citizen" id="UKCitizen" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>

                    <!-- Do you have work authorization?  -->
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="authorized_work">Are you authorized to work in the UK? *</label>
                            <select name="authorized_work" id="authorized-work" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>

                    <!-- Has contractor ever worked for Bauer? -->
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="ever_worked_Bauer">Has the contractor ever worked for Bauer? *</label>
                            <select name="ever_worked_Bauer" id="ever-worked-for-Bauer" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="No">No</option>
                                <option value="Yes">Yes</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Hidden field, will show if "ever worked for Bauer" = Yes -->
                <div id="ever-worked-date-wrapper" class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="ever_worked_date">If yes, when? *</label>
                        <input name="ever_worked_date" type="date" id="ever-worked-date" class="form-control" />
                    </div>
                </div>


                <!-- Basic info for CEST -->

                <section id="basic-info-CEST" class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="contractor_name">Contractor's Name *</label>
                            <input name="contractor_name" type="text" id="contractor-name" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="job_title">Job Title *</label>
                            <input name="job_title" type="text" id="job-title" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="start_date">Start Date *</label>
                            <input name="start_date" type="date" id="start-date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="end_date">End Date *</label>
                            <input name="end_date" type="date" id="end-date" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="notice_period">Notice Period *</label>
                            <select name="notice_period" id="notice" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option selected="selected" value="1 week">1 week</option>
                                <option selected="selected" value="2 weeks">2 weeks</option>
                                <option selected="selected" value="3 weeks">3 weeks</option>
                                <option selected="selected" value="4 weeks">4 weeks</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="day_rate">Day rate *</label>
                            <input name="day_rate" type="text" id="day-rate" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="hours">Expected Contracted Hours *</label>
                            <input name="hours" type="text" id="hours" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="services">Services to be provided *</label>
                            <textarea name="services" id="services" class="form-control" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="other_info">Any other relevant information *</label>
                            <textarea name="other_info" id="other-info" class="form-control" rows="3"></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="location">Location *</label>
                            <input name="location" type="text" id="location" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="contract_length">Contract Length *</label>
                            <input name="contract_length" type="text" id="contract-length" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="agency_name">Agency Name</label>
                            <input name="agency_name" type="text" id="agency-name" class="form-control" />
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="agency_address">Agency Address</label>
                            <textarea name="agency_address" id="agency-address" class="form-control"
                                rows="3"></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="agency_contact">Agency point of contact and reports</label>
                            <textarea name="agency_contact" id="agency-contact" class="form-control"
                                rows="3"></textarea>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="CEST_radiopres_question">Has the CEST or Radio Presenter questionnaire been
                                completed?
                                *</label>
                            <select name="CEST_radiopres_question" id="CEST-radiopres-question" class="form-control">
                                <option selected="selected" value="">Please select</option>
                                <option value="Yes">Yes</option> <!-- IF selected by user, show date field -->
                                <option value="No">No</option>
                            </select>
                        </div>
                    </div>


                    <!-- HIDDEN FIELD - will show if Has the CEST or Radio Presenter questionnaire been completed? = "YES" (IRC date of completion)-->
                    <div id="IRC35-date-wrapper" class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="IRC_completion_date">If yes, when? Please attach a copy *</label>
                            <input name="IRC_completion_date" type="date" id="IRC35-completion-date"
                                class="form-control" />
                        </div>
                    </div>
                </section>

            </section>


            <!-- ============================================================================================================ -->
            <!-- ========================================= "BANK DETAILS" SECTION ============================================    -->

            <h2 class="h2-banner"> Bank Details </h2>
            <section id="bank-details-section" class="row">

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="payee_name">Payee Name *</label>
                        <input name="payee_name" name="" type="text" id="payee-name" class="form-control" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="bank_name">Name of Bank *</label>
                        <input name="bank_name" type="text" id="bank-name" class="form-control" />
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="bank_account_number">Account Number *</label>
                        <input name="bank_account_number" type="number" id="bank-account-number" class="form-control" />
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="bank_address">Bank Address (including postcode)</label>
                        <textarea name="bank_address" id="bank-address" class="form-control" rows="3"></textarea>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="sort_code">Sort Code *</label>
                        <input name="sort_code" type="number" id="sort-code" class="form-control" />
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="roll_number">Building Society Roll Number</label>
                        <input name="roll_number" type="text" id="roll-number" class="form-control" />
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="IBAN">IBAN</label>
                        <input name="IBAN" type="text" id="IBAN" class="form-control" />
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="BIC_code">BIC code</label>
                        <input name="BIC_code" type="text" id="BIC-code" class="form-control" />
                    </div>
                </div>

                <p class="container">The IBAN and BIC Code below must be completed for all <bold>foreign</bold> bank
                    accounts.
                </p>

            </section>

            <!-- ============================================================================================================ -->
            <!-- ========================================= "Other info" SECTION ============================================    -->
            <h2 class="h2-banner"> Other information </h2>
            <section id="other-info-section" class="row">

                <div class="col-md-6 col-lg-4 col-xl-4">
                    <div class="form-group">
                        <label for="purchases_desc">Description of purchases *</label>
                        <textarea name="purchases_desc" id="purchases" class="form-control" rows="4"></textarea>
                    </div>
                </div>

                <!-- Attachment button -->
                <div class="col-md-6 col-lg-4 col-xl-4">

                    <div class="form-group">
                        <label>Upload attachment</label>
                        <!-- upload file button -->
                        <div id="fileinput-label-wrapper">
                            <input type="file" id="fileinput" name="fileinput" />
                            <label id="fileinput-label" for="fileinput"><svg xmlns="http://www.w3.org/2000/svg"
                                    width="20" height="17" viewBox="0 0 20 17">
                                    <path
                                        d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z">
                                    </path>
                                </svg> <span>Choose a file</span>
                            </label>
                        </div>
                        <label for="fileinput" generated="true" class="error"></label>
                        <!-- spinner - hidden -->
                        <div class="spinner-border text-primary" role="status" style="display: none;">
                            <span class="sr-only">Loading...</span>
                        </div>

                        <div id="fileName"></div>
                    </div>
                </div>


            </section>
            <p id="error-msg"></p>

            <!-- Submit button -->

            <div class="flex-end"> <button id="submit-btn" class="submit-btn" type="submit">SUBMIT</button> </div>
        </form>



        <!-- =================== Form ends ===================-->

        <footer class="footer container">
            <div class="footer-inner">

                <p> For any queries, contact the BCS Vendor Maintenance Team </p>
                <p> <i class="fas fa-envelope"></i> bauervmaint@bauerservices.co.uk</p>
                <p> <i class="fas fa-phone"></i> 01 733 213 718</p>

            </div>
        </footer>

    </section>



    <!-- SCRIPT TAGS -->

    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
        integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
    <!-- jQuery validator -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"
        integrity="sha512-37T7leoNS06R80c8Ulq7cdCDU5MNQBwlYoy1TX/WUsLFC2eYNqtKlV0QjH7r8JpG/S0GUMZwebnVFLPd6SU5yg=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous">
    </script>

    <!-- enables SP.js library -->
    <script src="https://ajax.aspnetcdn.com/ajax/4.0/1/MicrosoftAjax.js" type="text/javascript"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"> </script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>

    <!-- SP services -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.SPServices/2014.02/jquery.SPServices.min.js"
        integrity="sha512-ojtbo+zixDfv2qGQUbFOz5jd6lXJrq8TZsX1yq7VljVMlVzoGx7q8U/ELYK6hGL4LGityzJgAq/T/eLjbyRQwQ=="
        crossorigin="anonymous"></script>

    <!-- moment library-->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

    <!-- Typeahead -->
    <script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/typeahead.bundle.min.js">
    </script>
    <script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/handlebars-v1.3.0.js">
    </script>

<script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/new-supplier-form.js"></script>
<script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/validation.js"></script>
    <script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/supplier-search.js"></script>
    <script type="text/javascript" src="/sites/UK-Forms/NewSuppliers/SiteAssets/Scripts/create-item.js"></script>


</body>

</html>