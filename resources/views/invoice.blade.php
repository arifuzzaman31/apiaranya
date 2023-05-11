<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <title>Document</title>
   </head>
   <body>
      <section class="w-75 mx-auto">
         <h4 class="shadow-lg p-3 bg-white rounded mt-3">Order Details</h4>
         <div >
            <!-- <div class="row gx-5">
               <div class="col-md-9 bg-light shadow-lg p-3 bg-white rounded mt-1">
                 First, but unordered
               </div>
               <div class="col-md-2 bg-light shadow-lg p-3 bg-white rounded mt-1">
                 Second, but last
               </div>
               
               </div> -->
            <div class=" overflow-hidden">
               <div class="row gx-2">
                  <div class="col-md-10">
                     <div class="p-3 border shadow-lg bg-white rounded">
                        <div class="container">
                           <div class="row">
                              <div class="col-md-3">
                                 <h5>Invoice <span class="text-warning">#G-Store:9</span> </h5>
                                 <p class="text-secondary">Order Date: 22 Mar, 2023</p>
                              </div>
                              <div class="col-md-3">
                                 <div class="dropdown">
                                    <button class="btn btn-light dropdown-toggle p-2 w-100 border shadow-lg bg-white rounded" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Payment Status
                                    </button>
                                    <div class="dropdown-menu w-100" aria-labelledby="dropdownMenuButton">
                                       <a class="dropdown-item" href="#">Paid</a>
                                       <a class="dropdown-item" href="#">Unpaid</a>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <div class="dropdown">
                                    <button class="btn btn-light dropdown-toggle w-100 p-2 w-100 border shadow-lg bg-white rounded" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Delivery Status
                                    </button>
                                    <div class="dropdown-menu w-100" aria-labelledby="dropdownMenuButton">
                                       <a class="dropdown-item" href="#">Order places</a>
                                       <a class="dropdown-item" href="#">Pending</a>
                                       <a class="dropdown-item" href="#">Pending</a>
                                       <a class="dropdown-item" href="#">Pending</a>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-3">
                                 <button type="button" class="btn btn-success w-100">
                                    <svg class="px-1" xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-download" viewBox="0 0 16 16">
                                       <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
                                       <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
                                    </svg>
                                    Download Invoice
                                 </button>
                              </div>
                           </div>
                        </div>
                        <div class="container">
                           <div class="row">
                              <div class="col-md-6">
                                 <h6>Customer Info</h6>
                                 <p>Name: Robert Jacobs <br>
                                    Email: customer@themetags.com <br>
                                    Phone: +880 1235 385 478 <br>
                                    Delivery Type: Scheduled <br>
                                    Delivery Time: 26 March, 12pm - 2pm
                                 </p>
                              </div>
                              <div class="col-md-3">
                                 <h6>Shipping Address</h6>
                                 <p>5-9-191, Brindavan <br> Complex, Addanki, <br> Andhra Pradesh, India</p>
                              </div>
                              <div class="col-md-3">
                                 <h6>Billing Address</h6>
                                 <p>5-9-191, Brindavan <br> Complex, Addanki, <br> Andhra Pradesh, India</p>
                              </div>
                           </div>
                        </div>
                        <hr>
                        <div class="container">
                           <div class="row">
                              <div class="col-md-1">
                                 <h6>S/L</h6>
                                 <p>1</p>
                              </div>
                              <div class="col-md-5">
                                 <h6>Products</h6>
                                 <div class="d-flex align-items-center">
                                    <div>
                                       <img class="px-2" src="https://grostore.themetags.com/public/uploads/media/BE7N2VlcmU1abeHNA01HpN5XSl01aNlsKXuKhN2c.png" alt="" width="50px" />
                                    </div>
                                    <p>Gala Apple ± 50 gm <br>
                                       <small>Weight: 5kg</small>
                                    </p>
                                 </div>
                              </div>
                              <div class="col-md-2">
                                 <h6>Unit Price</h6>
                                 <p>₹3,600.00</p>
                              </div>
                              <div class="col-md-2">
                                 <h6>QTY</h6>
                                 <p>1</p>
                              </div>
                              <div class="col-md-2">
                                 <h6>Total Price</h6>
                                 <p class="text-warning" >₹3,600.00</p>
                              </div>
                           </div>
                        </div>
                        <hr>
                        <div class="container">
                           <div class="row">
                              <div class="col-md-2">
                                 <h6>Payment Method</h6>
                                 <p>Cash On Delivery</p>
                              </div>
                              <div class="col-md-3">
                                 <h6>Logistic</h6>
                                 <p>Delivery By BirdWings</p>
                              </div>
                              <div class="col-md-2">
                                 <h6>Sub Total</h6>
                                 <p>₹3,600.00</p>
                              </div>
                              <div class="col-md-1">
                                 <h6>Tips</h6>
                                 <p>₹0.00</p>
                              </div>
                              <div class="col-md-2">
                                 <h6>Shipping Cost</h6>
                                 <p >₹3,600.00</p>
                              </div>
                              <div class="col-md-2">
                                 <h6>Grand Total</h6>
                                 <p class="text-warning" >₹66,680.00</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-2">
                     <div class="p-4 border shadow-lg bg-white rounded">
                        <h5>Order Logs</h5>
                        <div class="form-check mt-3">
                           <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                           <label class="form-check-label" for="flexRadioDefault1">
                           No logs found
                           </label>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </body>
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>