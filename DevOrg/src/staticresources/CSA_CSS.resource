body {
    font-family: 'fsalbertregular';
    font-size: 15px;
}
header.navbar-default {
    background-image: none;
    background-color: white;
}
.m-0 {
    margin: 0;
}
.p-0 {
    padding: 0;
}
#main.container {
    width: 800px !important;
    margin-top: 6px;
}

/*NAVIGATION*/
.navbar-brand {
    position: absolute;
    width: 100%;
    left: 0;
    top: 0;
    text-align: center;
    margin: auto;
}

.navbar-nav li a {
    padding: 20px;
    line-height: 32px;
}

.navbar-nav li input {
    margin-top: 22px;
    border-radius: 25px;
}

input.form-control {
    display: block;
    width: 230px;
    height: 34px;
    padding: 6px 30px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #ABABAB;
    background-color: #fff;
    background-image: none;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

.form-control-feedback {
    position: absolute;
    top: 0;
    left: 1px;
    z-index: 2;
    display: block;
    width: 34px;
    height: 34px;
    line-height: 34px;
    text-align: center;
    pointer-events: none;
    float: left !important;
    color: #003C67;
}

.navbar-brand>img {
    display: inline;
    width: 170px;
    margin-top: -3px;
}

.subnav {
    height: 85px;
    background-color: #09355c;
    border-color: #06243e;
    background-image: -webkit-gradient(linear,left 0%,left 100%,from(#0e508a),to(#09355c));
    background-image: -webkit-linear-gradient(top,#0e508a,0%,#09355c,100%);
    background-image: -moz-linear-gradient(top,#0e508a 0%,#09355c 100%);
    background-image: linear-gradient(to bottom,#0e508a 0%,#09355c 100%);
    background-repeat: repeat-x;
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0e508a',endColorstr='#ff09355c',GradientType=0);
    text-align: center;
    color: #fff;
}

.col-xs-15,.col-sm-15,.col-md-15,.col-lg-15 {
    position: relative;
    min-height: 1px;
    padding-right: 10px;
    padding-left: 10px;
}

.col-xs-15 {
    width: 20%;
    float: left;
}

@media (min-width: 768px) {
    .col-sm-15 {
        width: 20%;
        float: left;
    }
}

@media (min-width: 992px) {
    .col-md-15 {
        width: 20%;
        float: left;
    }
}

@media (min-width: 1200px) {
    .col-lg-15 {
        width: 20%;
        float: left;
    }
}

.subnav .container {
    width: 900px;
}

.subnav h4 {
    font-weight: 300;
    letter-spacing: 1px;
    line-height: 55px;
    color: #fff;
}

.subnav a {
    text-decoration: none;
}

.nav-setting-btn {
    border-radius: 4px;
    height: 40px;
    text-align: center;
    padding-left: 30px;
    padding-right: 30px;
    background-color: #003C68;
}

.navbar-default .navbar-nav>li>a {
    color: #004E7B;
}

.circle {
    display: inline-block;
    border: 1px solid #b2b2b2;
    border-radius: 50%;
    color: #004E7E;
    text-align: center;
    padding: 5px;
    font-size: 12px;
    height: 30px;
    width: 30px;
    line-height: 18px;
}
.navbar-right h6 {
    font-weight: 300;
    color: #004E7C;
    font-size: 16px;
    line-height: 1px;
}

header {
    margin-bottom: 0 !important;
}

li a h6 {
    display: inline-block;
    padding-left: 5px;
    padding-right: 6px;
}

.suntrust-app-nav-list {
    white-space: nowrap;
    padding-left: 0 !important;
}

.suntrust-app-nav-list > li {
    display: inline-block;
    vertical-align: top;
    width: 160px;
    height: 100%;
    padding: 20px 0;
    box-sizing: border-box;
    font-size: 15px;
    position: relative;
    padding-left: 50px;
    padding-right: 30px;
    text-align: left;
}
.suntrust-app-nav-list > li.suntrust-active::after {
    border-width: 10px;
    border-style: solid;
    border-color: transparent transparent #FFF;
    -moz-border-top-colors: none;
    -moz-border-right-colors: none;
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    border-image: none;
}

.suntrust-app-nav-list li a {
    color: #fff;
    letter-spacing: 1px;
    font-weight: 300;
    text-align: left;
    font-size: 20px;
}

li.suntrust-active::after {
    border-width: 10px;
    border-style: solid;
    border-color: transparent transparent #FFF;
    -moz-border-top-colors: none;
    -moz-border-right-colors: none;
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    border-image: none;
}
.suntrust-app-nav-list > li.suntrust-active::before, .suntrust-app-nav-list > li.suntrust-active::after {
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    left: 65px;
    bottom: 0;
    top: 58px;
}
.suntrust-app-nav-list > li > a > .suntrust-subtext {
    display: block;
    font-size: 10px;
    line-height: 1px;
    padding-top: 7px;
    font-weight: 300;
}

.center {
    float: none;
    margin-left: auto;
    margin-right: auto;
}
.text-center {
    text-align: center !important;
}

.suntrust-app-nav-list > li > a .suntrust-app-nav-messages-container {
    display: inline-block;
    padding-left: 20px;
}

.suntrust-messages-count {
    display: inline-block;
    width: 20px;
    height: 20px;
    border-radius: 20px;
    left: 0;
    top: 2px;
    font-size: 14px;
    line-height: 20px;
    font-weight: 700;
    text-align: center;
    color: #003871;
    background-color: #FFF;
    margin-right: 6px;
}

.page {
    margin-top: -15px;
    background-color: white;
    border: 1px solid #DEDEDE;
}

.test-page h1 {
    padding-top: 12%;
}

.test-page li a:hover {
    background-color: #fff;
}

.navbar-left h6 {
    font-weight: 300;
    color: #004E7C;
    font-size: 16px;
    line-height: 1px;
}

/*TABLE STYLES*/
.table-bordered>tbody>tr>td,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>td,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>thead>tr>th {
    border: none;
}

.table-striped>tbody>tr:nth-of-type(odd) {
    background-color: #fff !important;
}

.ng-table-sort-header {
    background-color: #F5F5F5;
}

.ng-table th.sortable .sort-indicator {
    padding-right: 18px;
    position: relative;
    font-weight: 200;
    color: #004E7C;
}

.table>tbody>tr>td,.table>tbody>tr>th,.table>tfoot>tr>td,.table>tfoot>tr>th,.table>thead>tr>td,.table>thead>tr>th {
    padding: 8px;
    vertical-align: top;
    border-top: 1px solid #DEDEDE;
    color: #003C68;
    text-align: left;
    padding-left: 15px;
    padding-right: 15px;
}
/*.table>tbody>tr>td,.table>tbody>tr {*/
    /*padding-top: 0;*/
    /*padding-bottom: 0;*/
/*}*/

/*td.ng-binding {*/
    /*color: #004E7C;*/
    /*line-height: 55px !important;*/
/*}*/

.table-bordered {
    border: none;
}

.transparent {
    background-image: none !important;
    background-color: transparent !important;
    color: #828080;
}

#split-button {
    padding-right: 0 !important;
    padding-left: 5px !important;
    padding-bottom: 0 !important;
}

.glyphicon-chevron-down {
    font-size: 10px;
}

.pull-right {
    text-align: right;
}

.pull-left {
    text-align: left;
}

.active-btn {
    width: 90px;
    color: #EF7621 !important;
    border: 1px solid #EF7621 !important;
    z-index: 1;
    background: transparent;
    font-weight: 200;
}

.inactive-btn {
    background-color: transparent;
    width: 90px;
    color: #003C69;
}

.newuser-btn {
    color: #fff !important;
    background-color: #E6772D;
    font-weight: 200;
}

.weight-100 {
    font-weight: 100 !important;
}

/*.search-input-icon {*/
    /*top: 4px;*/
    /*right: -25px;*/
/*}*/

.search-input-icon {
    top: 12px;
    right: 200px;
    z-index: 100;
    font-size: 20px;
}

.page nav {
    border-bottom: 1px solid #DEDEDE;
    border-radius: 1px;
    height: 60px;
    background-color: white;
}

.navbar-nav li a:hover {
    background-color: transparent !important;
}

.ng-table-pager {
    display: none;
}

/*thead tr th:first-child {*/
    /*width: 140px !important;*/
/*}*/

/*thead tr th:nth-child(2) {*/
    /*width: 140px !important;*/
/*}*/

/*thead tr th:nth-child(3) {*/
    /*width: 140px !important;*/
/*}*/

/*thead tr th:nth-child(4) {*/
    /*width: 140px !important;*/
/*}*/

/*thead tr th:nth-child(5) {*/
    /*width: 140px !important;*/
/*}*/
.totals h5 {
    text-align: left;font-weight: 200;color: #828080;
}
.totals h5 b {
    font-size: 25px;color: #828080;
}
.totals .btn-group {
    border-radius: 5px;
    display: inherit;
    margin-left: 57px;
}
.filter-btn {
    background-color: transparent;width: 90px;border: 1px solid #B4B4B4;border-radius: 5px;color: #003C69;
}
.glyphicon-filter {
    color: #003C69;
}
#scrollable-area {
    margin: auto;
    width: 100%;
    height: 550px;
    /*border: 2px solid #ccc;*/
    overflow-y: scroll; /* <-- here is what is important*/
}

.tableFloatingHeaderOriginal{
    margin-top: -4px !important;
}

table .dropdown-menu {
    margin-left: -129px;
    z-index: 1;
    border: 1px solid #003C69;
    border-top-right-radius: 0;
}
table .app-menu {
    margin-left: -139px;
}
#btn-group-list.btn-group {
    border: 1px solid #D8D8D8;
    border-radius: 5px;
}
.btn-group.open {
    border: 1px solid !important;
    border-bottom: transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    border-bottom-right-radius: 0 !important;
    border-bottom-left-radius: 0 !important;
}
.btn-group.open .dropdown-toggle {
    -webkit-box-shadow: none;
    box-shadow: none;
    background-color: white !important;
}
.btn-group.open .glyphicon-cog {
    color: #003C69;
}
.btn-group .glyphicon-chevron-down {
    top: -5px;
}
.btn-group .glyphicon-cog {
    font-size: 20px;
    line-height: 25px;
}
.btn-group .dropdown-toggle {
    padding-left: 5px;
    padding-right: 5px;
    padding-bottom: 0;
    padding-top: 0;
    height: 32px;
}
.glyphicon-cog{
    color: #979797;
}

.navbar-nav li a:hover {
    background-color: transparent !important;
}
.navbar-left li a{
    height: 58px !important;
}
tbody {
    text-align: center;
}
.dropdown-menu>li>a {
    color: #676767 !important;
    font-size: 15px;
    font-weight: 200;
}
.no-padding {
    padding: 0px !important;
}
.table>thead>tr>th {
    vertical-align: bottom;
     border-bottom: none;
    font-weight: 400;
}

.form-control:focus {
    border-color: #003C69;
    box-shadow: none !important;
}
.right {
    text-align: right !important;
}

tr.ng-scope {
  height: 40px !important;
}
thead tr th a {
    text-decoration: none !important;
    color: inherit !important;
}

/*.sortorder:after {*/
    /*width: 0;*/
    /*height: 0;*/
    /*border-left: 5px solid transparent;*/
    /*border-right: 5px solid transparent;*/
    /*border-bottom: 10px solid black;*/
    /*display:inline-block;*/
/*}*/
/*.sortorder.reverse:after {*/
    /*width: 0;*/
    /*height: 0;*/
    /*border-left: 5px solid transparent;*/
    /*border-right: 5px solid transparent;*/
    /*border-top: 10px solid black;*/
    /*display:inline-block;*/
/*}*/


/*.sortorder:before {*/
    /*content: "";*/
    /*width: 0;*/
    /*height: 0;*/
    /*border-left: 5px solid transparent;*/
    /*border-right: 5px solid transparent;*/
    /*border-bottom: 10px solid #B4B4B4;*/
    /*display:inline-block;*/
    /*position: absolute;*/
    /*top: 17px;*/
/*}*/
.sortorder {
    content: "";
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #B4B4B4;
    display: inline-block;
    position: absolute;
    top: 17px;
    margin-left: 10px;
}
.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {
    background-color: white;
    background-image: none;
    filter: none;
}
.count-label {
    font-weight: 400;
    display: inherit;
    margin-bottom: -4px;
    font-size: 11px;
    color: #999999;
    margin-top: -6px;
}
.count-result {
    font-size: 30px;font-weight: 500;color: #676767;
}
.count-total {
    font-weight: 100;
    color: #676767;
}
.navbar-left li a {
    background-color: white !important;
}
.page nav {
    border-bottom: 1px solid #DEDEDE !important;
}



/*MODAL STYLES */
.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: 0.7;
}
.modal-header {
    min-height: 16.43px;
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
    background-color: #003C69;
    color: white;
}
.modal-content {
    border-radius: 0;
    border: 10px solid black;
    width: 630px;
    height: 630px;
}
@media (min-width: 768px) {
    .modal-dialog {
        width: 600px;
        margin: 75px auto;
    }
}
.modal-footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    border-top:none;
}

input[type="search"]::-webkit-search-cancel-button {
    -webkit-appearance: searchfield-cancel-button;
    right: 10px;
    top:13px;
    position: absolute;
}

.table-hover>tbody>tr:hover>td, .table-hover>tbody>tr:hover>th {
    background-color: #E8F8FF;
}

#list ul li a:active {
    color: red;
}

.table>tbody>tr>td {
    padding: 0 16px 0 16px;
}
.table{
    background-color: #F5F5F5;
}

.angucomplete-holder{
    float: right;width: 200px;border-radius: 3px;font-weight: 200;
}

.angucomplete-dropdown {
    border-width: 1px;
    border-style: solid;
    border-radius: 2px;
    width: 230px;
    padding: 6px;
    cursor: pointer;
    z-index: 9999;
    position: absolute;
    margin-top: -6px;
    background-color: #ffffff;
    top: 46px;
    left: -30px;
    text-align: left;
    border: 1px solid #003B6A;
    height: 200px;
    overflow: hidden;
    overflow-y: scroll;
}
.angucomplete-selected-row {
    background-color: white;
    color: inherit;
}

#searchInput_value{
    padding: 20px 40px;
    border-radius: 3px;
    font-size: 15px;
}
.angucomplete-row {
    padding: 5px;
    color: #676767;
    margin-bottom: 4px;
    clear: both;
}
.highlight {
    background-color: #CEF1FF;
}
td.ng-binding {
    height: 40px !important;
    line-height: 50px !important;
    color: #004E7C !important;
}
.app-header{
    padding: 20px 20px 15px 20px;
}
.totals {
    padding: 5px 20px 10px 20px;
}

/*********************  JOINED ****************************/

/* General Classes */



@font-face {
    font-family: 'fsalbertregular';
    src: url('../../assests/fonts/fsalbert-regular-opentype-webfont.eot');
    src: url('../../assests/fonts/fsalbert-regular-opentype-webfont.eot?#iefix') format('embedded-opentype'),
    url('../../assests/fonts/fsalbert-regular-opentype-webfont.woff2') format('woff2'),
    url('../../assests/fonts/fsalbert-regular-opentype-webfont.woff') format('woff'),
    url('../../assests/fonts/fsalbert-regular-opentype-webfont.ttf') format('truetype'),
    url('../../assests/fonts/fsalbert-regular-opentype-webfont.svg#fsalbertregular') format('svg');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'fsalbertlight';
    src: url('../../assests/fonts/fsalbert_light-webfont.eot');
    src: url('../../assests/fonts/fsalbert_light-webfont.eot?#iefix') format('embedded-opentype'),
    url('../../assests/fonts/fsalbert_light-webfont.woff2') format('woff2'),
    url('../../assests/fonts/fsalbert_light-webfont.woff') format('woff'),
    url('../../assests/fonts/fsalbert_light-webfont.ttf') format('truetype'),
    url('../../assests/fonts/fsalbert_light-webfont.svg#fsalbertlight') format('svg');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'fsalbertbold';
    src: url('../../assests/fonts/fsalbert_bold-webfont.eot');
    src: url('../../assests/fonts/fsalbert_bold-webfont.eot?#iefix') format('embedded-opentype'),
    url('../../assests/fonts/fsalbert_bold-webfont.woff2') format('woff2'),
    url('../../assests/fonts/fsalbert_bold-webfont.woff') format('woff'),
    url('../../assests/fonts/fsalbert_bold-webfont.ttf') format('truetype'),
    url('../../assests/fonts/fsalbert_bold-webfont.svg#fsalbertbold') format('svg');
    font-weight: normal;
    font-style: normal;
}

/* General Classes */
#main.container {
    /*margin-bottom: 60px;*/
}
.btn{
    font-family: 'fsalbertregular';
}
.btn:focus{
    outline: 0px;
}
.btn-blue{
    color: #fff;
    background-color: #003053;
}
.btn-blue:hover,.btn-blue:visited, .btn-blue:focus {
    color: #fff;
    background-color: #003C68;
}
.btn-green{
    color: #fff;
    background-color: #319400;
}
.btn-green:hover, .btn-green:visited, .btn-green:focus{
    color: #fff;
    background-color: #277500;
}
.btn-white{
    background-color: #fff;
    border: 1px solid #ccc;
    color: #003c68;
}
.form-horizontal .has-error .form-control{
    border: 2px solid #ff3300;
}
.form-horizontal .has-error  .help-inline{
    color:#cc2900;
    font-size:12px;
}
.icon-alert{
    background: url("../../assests/img/suntrust-icon-alert.png");
    height: 22px;
    position: absolute;
    right: -30px;
    top: 14px;
    width: 28px;
}
.form-horizontal .has-success .form-control{
    border-color:#3cb300
}
.form-horizontal .has-success .green-strip{
    background: #3cb300;
    width: 5px;
    left: 0;
    top: 0;
    height: 100%;
    position: absolute;
    border-radius: 5px 0 0 5px;
}
.icon-success{
    background: url("../../assests/img/suntrust-icon-complete.png");
    height: 16px;
    position: absolute;
    right: -30px;
    top: 18px;
    width: 22px;
    background-size: 22px 16px;
}

/* General Classes ends*/


.page nav {
    border-bottom: 1px solid #B5B3B3;
}
.form-horizontal .form-control{
    height: 50px;
    width: 360px;
    padding: 22px 15px 5px 15px;
    border-color: #ccc;
    color: #545454;
    font-size: 15px;
}
.suntrust-app-nav-list > li.active:after{
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 0 8px 8px 8px;
    border-color: transparent transparent #FFF transparent;
    line-height: 0px;
    _border-color: #000000 #000000 #fff #000000;
    _filter: progid:DXImageTransform.Microsoft.Chroma(color='#000000');
    bottom: -4px;
    left: 50%;
    content: "";
    position: absolute;
    margin-left: -10px;
}
.page .main-headingArea{
    border-bottom: 1px solid #ccc;
    border-radius: 1px;
    padding: 30px 15px 20px 15px;
    overflow: hidden;
}
.page .main-heading{
    font-size: 30px;
    padding: 0;
    margin: 0px;
    text-align: left;
    font-family: 'fsalbertregular';
    color: #003c68;
    line-height: 34pt;
}
.page .main-heading span{
    font-size: 24px;
    color: #545454;
    line-height: 32px;
    padding-left: 5px;
    font-family: 'fsalbertlight';
}
.close-btnArea{
    font-size: 15px;
    font-family: 'fsalbertregular';
}
.btn-close{
    padding: 5px 10px;
    font-size: 20px;
    line-height: 18px;
    margin-left: 10px;
    height: auto;
    font-family: 'fsalbertbold';
}
.grey-bg{
    height: 6px;
    background: rgb(236, 236, 236);
    margin: 0 -2px;
}
.page nav.inner-sub-nav{
    min-height: 0;
    margin-bottom: 0px;
    height: auto;
}
.page nav.inner-sub-nav ul{
    margin:0 -5px;
}
.page nav.inner-sub-nav li{
    display: inline-block;
}
.page nav.inner-sub-nav li a{
    padding:13px 20px;
    color: #003c68;
    line-height: 22px;
    font-size: 16px;
}
.page nav.inner-sub-nav .sub-nav-Btn{
    margin: 9px 0;
    padding-right: 30px;
    padding-left: 0px;
}
.page nav.inner-sub-nav .sub-nav-Btn span.icon-lock{
    background: url("../../assests/img/suntrust-icon-locked.png");
    width: 14px;
    height: 15px;
    background-size: 14px 15px;
    display: inline-block;
    vertical-align: -2px;
    margin-right: 7px;
}
.page nav.inner-sub-nav .sub-nav-Btn > button:first-child{
    margin-left: 10px;
}
.page nav.inner-sub-nav .inner-sub-nav-Btn .btn-white{
    margin-right: 38px;
}
.manageprofile-area{
    position: relative;
    overflow: hidden;
    width: 100%;
    font-family: 'fsalbertregular';
}
.manageprofile-area .custom-overlay{
    position: absolute;
    background: #fff;
    opacity: 0.5;
    width: 100%;
    height: 100%;
    top: 0;
}
.manage-profile{
    padding-bottom: 20px;
}
/*.manage-profile{
    padding-left: 30px;
    padding-right: 30px;
}*/


#wrap.sticky-nav .inner-sub-nav{
    height: 55px;
    position: fixed;
    top: 0;
    background: #003C68;
    width: 768px;
    z-index: 2;
}
#wrap.sticky-nav .manage-profile{
    margin-top: 90px;
}
#wrap.sticky-nav .inner-sub-nav li a {
    color: #fff;
}
.manage-profile .section-heading{
    width: 100%;
    float: left;
    padding:30px 15px 20px 15px;
    border-bottom: 1px solid #DDD;
    border-radius: 1px;
}
.manage-profile .section-heading .section-heading-inner{
    padding:0px;
}
.manage-profile .section-heading h3{
    color: #545454;
    font-size: 24px;
    font-family: 'fsalbertlight';
    margin: 0px;
    line-height: 32px;
}
.manage-profile .section-heading .btn-white{
    margin: 10px 0;
}
.manage-profile .section .form-horizontal{
    margin-top: 30px;
    width: 100%;
    float: left;
    color: #828080;
    font-weight: 200;
}
.manage-profile .section .form-horizontal .form-group{
    margin-bottom: 5px;
}
.form-horizontal .form-group label{
    font-size: 16px;
    line-height: 22px;
    color: #545454;
}
.form-horizontal .form-group .text-left{
    font-size: 16px;
    color: #545454;
}
.manage-profile .section .form-horizontal .application-content{
    position: relative;
    border-bottom: 1px solid #DDD;
    border-radius: 1px;
}
.manage-profile .section .form-horizontal .form-group .application-content{
    margin-bottom: 20px;
}
.manage-profile .section .form-horizontal .application-content .inner-content{
    padding-right: 100px;
    width:100%;
    padding-bottom: 25px;
    position: relative;
}
.manage-profile .section .form-horizontal .application-content .inner-content.selected .icon-complete{
    background:url("../../assests/img/suntrust-icon-complete.png");
    position: absolute;
    top: 0px;
    left: 0;
    width: 25px;
    height: 19px;
    background-size: 25px 20px;
    content: "";
}
.manage-profile .section .form-horizontal .application-content .inner-content.selected{
    padding-left: 40px;
    padding-right: 0px;
}
.manage-profile .section .form-horizontal .application-content .inner-content span{
    display: block;
    color: #878787;
    font-size: 12px;
    line-height: 16px;
}
.manage-profile .section .form-horizontal .application-content .btn{
    position: absolute;
    right: 15px;
    top: 0px;
}
.containerOfPopup {
    margin:0 -15px;
}
/*.containerOfPopup {
    position: absolute;
    left: 0;
    top: 90px;
    width: 100%;
    background-color: #fff;
    z-index: 2;
}*/
.custom-popup{
    border: 2px solid #979797;
    z-index: 1;
}
.custom-popup .popup-headingArea{
    border-bottom: 1px solid #DDD;
    border-radius: 1px;
    padding: 25px 15px;
    margin-bottom: 30px;
}
.custom-popup .popup-headingArea h4{
    color: #545454;
    font-size: 24px;
    font-family: 'fsalbertlight';
    margin: 0px;
    line-height: 32px;
}
.custom-popup .close-circlebtnArea, .custom-modal .close-circlebtnArea{
    margin-right: 25px;
    margin-top: 7px;
    cursor: pointer;
    color: #003c68;
    font-size: 15px;
}
.custom-popup .close-circlebtnArea:hover, .custom-modal .close-circlebtnArea:hover{
    text-decoration: underline;
}
.custom-popup .close-circlebtnArea .btn-circleclose, .custom-modal .close-circlebtnArea .btn-circleclose {
    background: url("../../assests/img/suntrust-icon-cancel.png");
    width: 20px;
    height: 20px;
    float: left;
    background-size: 20px 20px;
    margin-right: 7px;
    margin-top: 2px;
}
/*.custom-popup .popup-content{
    float: left;
    width: 100%;
}*/
.custom-popup .popup-content{
    padding-right:15px;
    padding-left:15px;
}
.custom-popup .popup-content .popup-content-heading{
    border-bottom: 1px solid #ccc;
    border-radius: 1px;
    padding: 0px 0px 20px 0;
}
.custom-popup .popup-content .popup-content-heading h5{
    color: #545454;
    font-size: 18px;
    margin: 0px;
    font-weight: 600;
}
.custom-popup .popup-content .form-horizontal .form-group, .custom-modal .form-horizontal .form-group{
    margin-bottom: 10px;
    position: relative;
}
.custom-popup .popup-content .form-horizontal .small-text, .custom-modal .form-horizontal .small-text {
    font-size: 12px;
    line-height: 16px;
    color: #878787;
    display: block;
    padding: 7px 10px;
    z-index: 2;
    font-weight: 100;
}
.manage-profile .section .custom-popup .popup-content .form-horizontal{
    width: auto;
    margin-top:20px;
    margin-bottom: 20px;
}
.custom-popup .popup-content .form-horizontal label, .custom-modal .form-horizontal label {
    position: absolute;
}
.custom-popup .popup-content .form-horizontal span.small-text, .custom-modal .form-horizontal span.small-text{
    position: absolute;
    right: 40px;
    z-index: 9;
    top: 10px;
    color: #878787;
    font-size: 16px;
}
.custom-popup .popup-content .form-horizontal select.form-control,
.custom-modal .modal-body .popup-inner-content .form-horizontal select.form-control{
    padding-left: 10px;
}
.custom-popup .popup-content .form-horizontal .custom-select select.form-control,
.custom-modal .modal-body .popup-inner-content .form-horizontal .custom-select select.form-control{
    position: relative;
    padding-top: 10px;
    color: #999;
    font-size: 16px;
}
.custom-popup .popup-content .form-horizontal select.custom-dropdown,
.custom-modal .modal-body .popup-inner-content .form-horizontal select.custom-dropdown {
    -webkit-appearance: none;
    -moz-appearance: none;
    cursor: pointer;
    background: url("../../assests/img/suntrust-icon-dropdown.png") no-repeat 96% center;
    background-size: 15px 10px;
}
.custom-popup .popup-content .form-horizontal .form-control.placeholder-field{
    padding-top: 7px;
}
.custom-popup .popup-footer{
    border-top: 1px solid #ccc;
    border-radius: 1px;
    padding: 20px 0px;
    display: block;
    margin-left: 15px;
    margin-right: 15px;
    overflow: hidden;
}
.add-anthrNo{
    margin-top: 20px ;
}
.add-anthrNo a{
    color: #003c68;
    font-size: 16px;
}
.custom-popup .application-contr .popup-headingArea{
    padding-top: 10px;
    margin-bottom: 0;
    border-bottom: 0;
    padding-bottom: 5px;
}
.custom-popup .popup-content .steps{
    margin: -5px 5px 5px 5px;
}
.custom-popup .popup-content .steps a{
    background: #f4f4f4;
    color: #707070;
    font-size: 14px;
    border: 1px solid #fff;
    display: inline-block;
    width: 33.3%;
    outline: none;
    padding: 15px 40px 15px;
    position: relative;
    text-decoration: none;
    margin-right: -3px;
    cursor: pointer;
}
.custom-popup .popup-content .steps a:before {
    width: 0;
    height: 0;
    border-top: 25px inset transparent;
    border-bottom: 25px inset transparent;
    border-left: 25px solid #fff;
    position: absolute;
    content: "";
    top: 0;
    left: 0;
}
.custom-popup .popup-content .steps a:after {
    width: 0;
    height: 0;
    border-top: 25px inset transparent;
    border-bottom: 25px inset transparent;
    border-left: 26px solid #f4f4f4;
    position: absolute;
    content: "";
    top: 0;
    right: -25px;
    z-index: 2;
}
.custom-popup .popup-content .steps a:first-child:before,
.custom-popup .popup-content .steps a:last-child:after {
    border: none;
}
.custom-popup .popup-content .steps a span{
    padding-left: 25px;
    width: 100%;
    display: block;
    text-align: center;
}
.custom-popup .popup-content .steps a.active{
    background:#f5ecdd;
    color:#e6772e;
}
.custom-popup .popup-content .steps a.active:after{
    border-left: 26px solid #f5ecdd;
}
.manage-profile .custom-popup .popup-content.application-contr h4{
    font-size: 14px;
    font-weight: 700;
}
.manage-profile .custom-popup .popup-content.application-contr .form-horizontal{
    width: 100%;
}
.manage-profile .custom-popup .popup-content.application-contr .form-group:first-child .application-content{
    border-top: 1px solid #DDD;
    border-radius: 1px;
}
.custom-popup .popup-content.application-contr .form-group{
    margin-bottom: 0px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content {
    margin-bottom: 0px;
    padding-top: 20px;
    padding-bottom: 20px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content{
    padding-bottom: 0px;
    min-height: 32px;
    padding-left: 60px;
    vertical-align: middle;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content ~ .btn{
    margin-top: 20px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content .icon-select{
    position: absolute;
    top: -2px;
    left: 0;
    width: 32px;
    height: 32px;
    content: "";
}
.icon-select .custom-checkbox {
    display: none;
}
.icon-select .custom-checkbox + label {
    border: 1px solid #B4B4B4;
    border-radius: 6px;
    display: inline-block;
    position: relative;
    width: 100%;
    height: 100%;
    cursor: pointer;
    margin-bottom: 0px;
}
.icon-select .custom-checkbox:checked + label {
    background-color: #e9ecee;
    border: 1px solid #adb8c0;
    box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
    color: #99a1a7;
    position: relative;
}
.icon-select .custom-checkbox:checked + label:after {
    content: "";
    /* font-size: 14px; */
    position: absolute;
    top: 0px;
    left: 0;
    color: #99a1a7;
    width: 30px;
    height: 31px;
    /* background-size: 20px 22px; */
    display: inline-block;
    background: url("../../assests/img/suntrust-icon-selected.png");
    background-size: 30px 31px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content .heading{
    font-weight: 700;
    font-size: 15px;
    color: #545454;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content .sub-heading{
    font-size: 12px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content .icon-reload{
    position: absolute;
    top: 0px;
    left: 60px;
    width: 16px;
    height: 20px;
    content: "";
    background: url("../../assests/img/suntrust-icon-reload.png");
    background-size: 16px 20px;
}
.manage-profile .custom-popup .popup-content.application-contr .application-content .inner-content .icon-reload ~ .bundle-content{
    padding-left: 30px;

}
.mesg-note{
    font-size: 14px;
    color: #003c68;
    background: #f4f4f4;
    position: absolute;
    right: 0;
    top: 0;
    border-radius: 8px;
    cursor: pointer;
}
.mesg-note > div{
    padding: 1px 9px;
}
.mesg-note .popover{
    background: #333;
    box-shadow: none;
    border-radius: 0px;
    color: #fff;
    width: 246px;
    left: -98px !important;
    padding: 0;
}
.mesg-note .popover.bottom>.arrow:after{
    border-bottom-color:#333;
}
.mesg-note .popover p{
    font-weight: 600;
    margin-bottom: 5px;
}
.icon-confirmation{
    background: url("../../assests/img/suntrust-icon-confirmation.png");
    background-size: 32px 32px;
    display: block;
    width: 100%;
    height: 100%;
}
.icon-fail{
    background: url("../../assests/img/suntrust-icon-failed.png");
    background-size: 32px 32px;
    display: block;
    width: 100%;
    height: 100%;
}
.popup-content.application-contr .popup-footer{
    margin-left: -15px;
    margin-right: -15px;
    border-top: 0px;
    padding-left: 30px;
    padding-right: 30px;
}
.overlay-processing{
    background: #fff;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0px;
    opacity: 0.4;
}
.confirmation-mesg{
    background: #f4f4f4;
    padding:20px;
    margin: 20px -25px 15px -25px;
}
.confirmation-mesg h5{
    font-weight: 700;
    margin-top:0px;
}
.popup-content.application-contr .link{
    margin: 0 -15px;
}
.popup-content.application-contr .link a{
    display: inline-block;
    padding: 5px 15px;
}
.application-contr .big-textarea, .custom-modal .form-horizontal .big-textarea{
    width: 100%;
    resize:none;
    height: 150px;
    border:2px solid #CCCCCC;
}
.character-count{
    width: 100%;
    text-align: right;
    padding: 5px 10px 0 0;
}

/* loader style starts*/

.custom-popup .popup-footer.loading-container{
    position: relative;
    background: #f5f5f5;
    height: 71px;
}
.loading {
    /* position: absolute;
    top: 50%;
    left: 50%;*/
    background: url("../../assests/img/progress_bar.gif") no-repeat center center;
    height: 30px;
    background-size: 200px 50px;
    margin: 0 auto;
}
/*.loading-bar {
  display: inline-block;
  width: 4px;
  height: 18px;
  border-radius: 4px;
  animation: loading 1s ease-in-out infinite;
  background: #999;
}
.loading-bar:nth-child(1) {
  background-color: #3498db;
  animation-delay: 0;
}
.loading-bar:nth-child(2) {
  background-color: #c0392b;
  animation-delay: 0.09s;
}
.loading-bar:nth-child(3) {
  background-color: #f1c40f;
  animation-delay: .18s;
}
.loading-bar:nth-child(4) {
  background-color: #27ae60;
  animation-delay: .27s;
}*/

@keyframes loading {
    0% {
        transform: scale(1);
    }
    20% {
        transform: scale(1, 2.2);
    }
    40% {
        transform: scale(1);
    }
}

/* custom alert style starts*/

/*.custom-alert{
    border-radius: 0px;
    border: 0px;
    background: #3cb300;
    color: #fff;
    margin: 0 -16px;
    font-size: 18px;
    overflow: hidden;
}*/
.custom-alert{
    width: 770px;
    position: fixed;
    right: 0;
    bottom: -20px;
    left: 50%;
    border-radius: 0px;
    border: 0px;
    background: #3cb300;
    color: #fff;
    margin-left: -386px;
    font-size: 18px;
    height: 74px;
    -webkit-transition: all linear 0.5s;
    transition: all linear 0.5s;
    -moz-transition: all linear 0.5s;

}
.custom-alert .icon-success-mesg{
    background: url("../../assests/img/suntrust-icon-confirmation.png") no-repeat;
    width: 42px;
    height: 42px;
    float: left;
    background-size: 42px 42px;
    margin-top: -6px;
    margin-right:10px;
}
.custom-alert .left-side, .custom-alert .right-side{
    margin-top: 8px;
}

/* user id custom styling starts */

.custom-user-id .popover{
    width: 180px;
    font-family: 'fsalbertregular';
    border: 3px solid #ccc;
    box-shadow: none;
}
.custom-user-id .popover.right>.arrow{
    left: -14px;
    margin-top: -6px;
}
.custom-user-id .popover.right>.arrow:after{
    border-left-width: 3px;
}
.custom-user-id .popover .popover-content {
    padding: 10px;
}
.custom-user-id .popover .popover-content ul{
    margin-bottom: -8px;
    margin-top: 5px;
}
.custom-user-id .popover .popover-content ul li{
    font-size: 12px;
    line-height: 16px;
    color: #878787;
    padding: 5px 0px 5px 25px;
    font-weight: 100;
    position: relative;
}
.custom-user-id .popover .popover-content ul li:before{
    display: block;
    content: "";
    position: absolute;
    left: 0px;
    top: 9px;
}
.custom-user-id .popover .popover-content ul li.selected:before{
    background: url("../../assests/img/suntrust-icon-complete.png");
    width: 14px;
    height: 10px;
    background-size: 14px 10px;
}
.custom-user-id .popover .popover-content ul li.deselected:before{
    background: url("../../assests/img/suntrust-icon-incomplete.png");
    width: 12px;
    height: 12px;
    background-size: 12px 12px;
    top: 8px;
}
.custom-user-id .form-control:focus{
    border: 2px solid #003C68;
}
.custom-user-id .custom-popup-wrapper{
    width: 100%;
    border: 2px solid #003C68;
    margin-top: -2px;
    font-size: 12px;
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    background-color: #fff;
}
.custom-user-id .custom-popup-wrapper ul li a{
    font-size: 14px;
    padding: 3px 15px;
    color: #003c68;
}
.custom-popup-wrapper > .message {
    padding: 7px 15px;
    background: #f5f5f5;
    color: #848484;
    margin-bottom: 0;
}
.custom-popup-wrapper > .message span, .custom-user-id .custom-popup-wrapper > .dropdown-menu a strong, .custom-user-id .popover .popover-content .popover-heading{
    font-family: fsalbertbold;
}
.custom-user-id .custom-popup-wrapper > .dropdown-menu a strong{
    font-weight: bolder;
}
.custom-user-id .custom-popup-wrapper > .dropdown-menu {
    position: static;
    float: none;
    display: block;
    min-width: 160px;
    background-color: transparent;
    border: none;
    border-radius: 0;
    box-shadow: none;
    margin-bottom: 5px;
}
.custom-user-id .dropdown-menu>.active>a, .custom-user-id .dropdown-menu>.active>a:focus, .custom-user-id .dropdown-menu>.active>a:hover{
    color: #fff !important;
    background: #003c68;
    background-image: none;
}

/* user id custom styling starts */

/* custom-modal style starts */

.modal-backdrop.in {
    filter: alpha(opacity=50);
    opacity: 0.7;
}
.custom-modal{
    font-family: 'fsalbertregular';
    overflow: hidden;
}
.custom-modal .modal-header{
    padding: 15px 15px;
    min-height: 16.43px;
    border-bottom: 1px solid #e5e5e5;
    background-color: #003C69;
    color: white;
    overflow: hidden;
}
.custom-modal .modal-header h2{
    font-size: 24px;
    padding: 0px;
}
.custom-modal .modal-header .close-btnArea {
    padding-right: 0px;
    line-height: 32px;
}
.modal-content {
    border-radius: 0;
    border: 10px solid black;
    width: 610px;
    min-height: 610px;
}
.custom-modal .modal-body{
    overflow: hidden;
    padding-right: 20px;
    padding-left: 20px;
}
.custom-modal .modal-body .user-nameArea{
    background: #f5f5f5;
    padding: 20px;
    margin: -15px -20px 0 -20px;
    font-family: fsalbertbold;
    color: #848484;
}
.custom-modal .modal-body .popup-inner-content .popup-inner-heading{
    font-family: fsalbertbold;
    margin-bottom: 5px;
}
.custom-modal .modal-body .popup-inner-content {
    color:#848484;
    margin: 10px 0 0 0;
    overflow: hidden;
}
.custom-modal .form-horizontal .big-textarea{
    border-width: 1px;
}
.custom-modal .modal-body .popup-inner-content .form-horizontal select.form-control{
    width: 100%;
}
.custom-modal .form-horizontal .small-text + .small-text{
    right:0px;
}
.custom-modal .modal-footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    border-top:none;
}


@media (min-width: 768px) {
    .modal-dialog {
        width: 600px;
        /*margin: 75px auto;*/
    }
}


/* custom-modal style starts */


/*.custom-popup .popup-content .form-horizontal select::before{
    content: '<>';
    font: 11px "Consolas", monospace;
    color: #aaa;
    -webkit-transform: rotate(90deg);
    -moz-transform: rotate(90deg);
    -ms-transform: rotate(90deg);
    transform: rotate(90deg);
    right: 0px;
    top: 2px;
    padding: 0 0 2px;
    border-bottom: 1px solid #ddd;
    position: absolute;
    z-index: 10;
}*/
