#main.container {
    width: 800px !important;
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
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #B4B4B4;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
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

.suntrust-app-nav-list li a {
    color: #fff;
    letter-spacing: 1px;
    font-weight: 100;
    text-align: left;
    font-size: 18px;
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

.suntrust-app-nav-list > li > a > .suntrust-subtext {
    display: block;
    font-size: 9px;
    line-height: 1px;
    padding-top: 7px;
}

.center {
    float: none;
    margin-left: auto;
    margin-right: auto;
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
    border-left: 2px solid #f5f5f5;
    border-right: 2px solid #f5f5f5;
    border-bottom: 2px solid #f5f5f5;
    margin-top: -8px;
    background-color: white;
}

.test-page h1 {
    padding-top: 12%;
}

.test-page li a:hover {
    background-color: #fff;
}

.navbar-left h6 {
    font-weight: 300;
    color: #555;
    font-size: 13px;
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
    color: #929292;
}

.table>tbody>tr>td,.table>tbody>tr>th,.table>tfoot>tr>td,.table>tfoot>tr>th,.table>thead>tr>td,.table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
    border-top: 1px solid #ddd;
    font-weight: 200;
    color: #003C68;
}

td.ng-binding {
    color: #004E7C;
    line-height: 35px !important;
}

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
    background-color: transparent;
    border-right: 1px solid #B4B4B4;
    width: 90px;
    color: #828080;
}

.inactive-btn {
    background-color: transparent;
    width: 90px;
    color: #828080;
}

.newuser-btn {
    margin-right: 38px;
    color: #fff !important;
    background-color: #EF7621;
    font-weight: 200;
}

.weight-100 {
    font-weight: 100 !important;
}

.search-input-icon {
    position: absolute;
    left: 163px;
    top: 11px;
    color: #828080;
}

.page nav {
    border-bottom: 1px solid #DDD;
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

th.header.sortable:first-child {
    width: 113px !important;
}

th.header.sortable:nth-child(2) {
    width: 113px !important;
}

th.header.sortable:nth-child(3) {
    width: 123px !important;
}

th.header.sortable:nth-child(4) {
    width: 292px !important;
}

th.header.sortable:nth-child(5) {
    width: 75px !important;
}
.totals h5 {
    text-align: left;font-weight: 200;color: #828080;
}
.totals h5 b {
    font-size: 25px;color: #828080;
}
.totals .btn-group {
   border-radius: 5px;margin-right: 50px;
}
.filter-btn {
    background-color: transparent;width: 90px;border: 1px solid #B4B4B4;border-radius: 5px;padding-left: 20px;color: #828080;
}
.glyphicon-filter {
    color: #828080;
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
    margin-left: -114px;
    z-index: 1;
    /*border: 1px solid #004D7E;*/
}
.glyphicon-cog, .glyphicon-chevron-down, .glyphicon-filter{
    /*color: #004D7E;*/
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
