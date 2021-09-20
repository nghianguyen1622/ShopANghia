<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>

<body>
 

<section class="bread-crumb margin-bottom-10">
   <%--  <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <li class="home"><a itemprop="url" href="../index.html" title="Trang chủ"><span itemprop="title">Trang chủ</span></a><span><i class="fa fa-angle-right"></i></span></li>
                    <li><a itemprop="url" href="#" title="Sản phẩm mới"><span itemprop="title">Chi tiết sản phẩm</span></a><span><i class="fa fa-angle-right"></i></span></li>
                    <li ><strong><span itemprop="title">${ product.name }</span></strong>
                    <li>
                </ul>
            </div>
        </div>
    </div> --%>
</section>
<section class="product" itemscope itemtype="http://schema.org/Product">
    <meta itemprop="image" content="https:https://bizweb.dktcdn.net/thumb/grande/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637">
    <meta itemprop="description" content="  Chiếc điện thoại màn hình Infinity-O lớn nhất, camera xuất sắc nhất và hiệu năng mạnh mẽ nhất của Samsung đã xuất hiện. Galaxy S10+ dẫn đầu xu thế, mang trên mình các công nghệ tiên tiến của tương lai và là một tác phẩm nghệ thuật đích thực.
            Kiệt tác màn hình vô cực Infinity-O
            Gần ...">
    <meta itemprop="name" content="Samsung Galaxy S10+ (8 + 128GB)">
    <div class="container">
        <div class="row">
            <div class="details-product padding-bottom-10">
                <div class="col-xs-12 col-sm-12 col-lg-12 col-md-12 details-pro">
                    <div class="product-top clearfix">
                        <h1 class="title-head">${ product.name }</h1>
                        <div class="sku-product">
                            Mã sản phẩm: <span class="variant-sku" itemprop="sku" content="00543146">${ product.masanpham }</span>
                            <span class="hidden" itemprop="brand" itemscope itemtype="https://schema.org/brand">A-NGHĨA</span>
                        </div>
                        <div class="panel-product-rating clearfix">
                            <div class="bizweb-product-reviews-badge" data-id="13904443"></div>
                            <div class="iddanhgia" onclick="scrollToxx();">
                                <span>Đã bán <span style="color: #f30">${ sold.size() }</span> sản phẩm</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-5 col-md-5">
                    <div class="relative product-image-block ">
                        <div class="large-image">
                            <a href="<c:url value="/assets/user/images/sanpham/${product.img}" />" data-rel="prettyPhoto[product-gallery]" class="large_image_url" title="Samsung Galaxy S10+ (8 + 128GB)">
                                <img id="zoom_01" src="<c:url value="/assets/user/images/sanpham/${product.img}" />" alt="${product.name}" class="img-responsive center-block">
                            </a>
								<div class="hidden">
									<div class="item">
										<a
											href="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-image="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-zoom-image="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-rel="prettyPhoto[product-gallery]"
											title="${product.title}"></a>
									</div>
									<div class="item">
										<a
											href="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-image="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-zoom-image="<c:url value="/assets/user/images/sanpham/${product.img}" />"
											data-rel="prettyPhoto[product-gallery]"
											title="${product.title}"></a>
									</div>
								</div>
							</div>
                        <div id="gallery_01" class="owl-carousel owl-theme thumbnail-product margin-top-15" data-lg-items="5" data-md-items="5" data-sm-items="4" data-xs-items="4" data-xss-items="4" data-margin="10" data-nav="true">
                            <div class="item"><a class="thumb-link clearfix" href="javascript:void(0);" data-image="<c:url value="/assets/user/images/sanpham/${product.img}" />" data-zoom-image="<c:url value="/assets/user/images/sanpham/${product.img}" />" title="Samsung Galaxy S10+ (8 + 128GB)"><img src="<c:url value="/assets/user/images/sanpham/${product.img}" />" data-lazyload="<c:url value="/assets/user/images/sanpham/${product.img}" />" alt="Samsung Galaxy S10+ (8 + 128GB)" data-image="https://bizweb.dktcdn.net/100/348/133/products/636863659522918468-ss-galaxy-s10-plus-xanh-1.png?v=1552139238637"></a></div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-lg-4 col-md-4 details-pro">
                    <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                        <div class="price-box clearfix">
                           <span class="special-price">
                              <span class="price product-price">${product.gia}₫</span>
                              <meta itemprop="price" content="22990000">
                              <meta itemprop="priceCurrency" content="VND">
                           </span>
                            <!-- Giá Khuyến mại -->
                            <span class="old-price" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/priceSpecification">
                              Giá thị trường:
                              <del class="price product-price-old">
                              ${product.giathitruong}₫
                              </del>
                              <meta itemprop="price" content="23500000">
                              <meta itemprop="priceCurrency" content="VND">
                           </span>
                            <!-- Giá gốca -->
                            <span class="save-price">Tiết kiệm:
                           <span class="price product-price-save">${product.sale}%</span>
                           </span> <!-- Tiết kiệm -->
                        </div>
                        <div class="inventory_quantity">
                            <span class="stock-brand-title">Tình trạng:</span>
                            <span class="a-stock a2">
                              <link itemprop="availability" href="#" />
                              ${product.tinhtrang}
                           </span>
                        </div>
                    </div>
                    <div class="form-product">
                        <form enctype="multipart/form-data" id="add-to-cart-form" action="/cart/add" method="post" class="form-inline">
                            <div class="select-swatch">
                                <div id="variant-swatch-0" class="swatch clearfix" data-option="option1" data-option-index="0">
                                    <div class="header">Dung lượng:</div>
                                    <div class="select-swap">
                                        <div data-value="128gb" class="n-sd swatch-element 128gb ">
                                            <input class="variant-0" id="swatch-0-128gb" type="radio" name="option1" value="128GB" checked />
                                            <label for="swatch-0-128gb">
                                                ${product.dungluong}
                                                <img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="128GB" />
                                                <img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="128GB" />
                                            </label>
                                        </div>
                                      
                                    </div>
                                </div>
                                <div id="variant-swatch-1" class="swatch clearfix" data-option="option2" data-option-index="1">
                                    <div class="header">Màu sắc:</div>
                                    <div class="select-swap">
                                        <div data-value="den" class="n-sd swatch-element color den ">
                                            <input class="variant-1" id="swatch-1-den" type="radio" name="option2" value="Đen" checked />
                                            <label class="den has-thumb" for="swatch-1-den">
                                                <img src="https://cdn.tgdd.vn/Products/Images/44/207682/apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-1-3-180x125.jpg" alt="vàng" class="ant-swatch" />
                                                <span>${product.mausac}</span>
                                                <img class="crossed-out" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/soldout.png?1559638811340" alt="Đen" />
                                                <img class="img-check" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/select-pro.png?1559638811340" alt="Đen" />
                                            </label>
                                        </div>
                                      
                                    </div>
                                </div>
                            </div>
                            <div class="box-variant clearfix  hidden ">
                                <select id="product-selectors" class="form-control form-control-lg" name="variantId" style="display:none">
                                    <option  selected="selected"  value="23441015">128GB / Đen - 22.990.000₫</option>
                                    <option  value="23441016">128GB / Xanh - 22.990.000₫</option>
                                    <option  value="23441017">128GB / Trắng - 22.990.000₫</option>
                                    <option  value="23441018">512 GB / Đen - 22.990.000₫</option>
                                    <option  value="23441019">512 GB / Xanh - 22.990.000₫</option>
                                    <option  value="23441020">512 GB / Trắng - 22.990.000₫</option>
                                </select>
                            </div>
                            <div class="box-promotion">
                                <p class="fk-tit">Khuyến mại đặc biệt (SL có hạn)</p>
                                <div class="fk-main">
                                    <ul>
                                        <li>Cơ hội trúng Samsung Galaxy S10 mỗi ngày</li>
                                    </ul>
                                    <ul>
                                        <li>Trả góp 0%</li>
                                    </ul>
                                    <ul>
                                        <li>Ưu đãi phòng chờ sân bay hạng thương gia</li>
                                    </ul>
                                    <ul>
                                        <li>Tặng 1 năm bảo hiểm máy rơi vỡ, vào nước</li>
                                    </ul>
                                    <ul>
                                        <li>Giảm 500,000đ khi thanh toán qua VNPay QR</li>
                                    </ul>
                                </div>
                                <input name="properties[Khuyến mãi]" type="hidden" value="
                                 Cơ hội trúng Samsung Galaxy S10 mỗi ngày
                                 Trả góp 0%
                                 Ưu đãi phòng chờ sân bay hạng thương gia
                                 Tặng 1 năm bảo hiểm máy rơi vỡ, vào nước
                                 Giảm 500,000đ khi thanh toán qua VNPay QR  " />
                            </div>
                            
                        
                            <div class="clearfix form-group " method="get" >
                                
                                <div class="btn-mua">
                                    <a href="<c:url value="/shop/AddCart/${ product.id }"/>"  data-role='addtocart' class="btn btn-lg btn-gray btn-cart ">
                                        <span class="txt-main"><i class="fa fa-shopping-cart padding-right-10"></i> Cho vào giỏ</span>
                                    </a>
                                </div>
                            </div>
                          
                            <div class="clearfix form-group ">
                               
                                <div class="btn-mua">
                                    <a href="<c:url value="/shop/checkout/${ product.id }"/>" type="submit" data-role='addtocart' style="background: #0a5bff" class="btn btn-lg btn-gray btn-cart btn_buy add_to_cart">
                                        <span class="txt-main"><i class="fa fa-pinterest padding-right-10"></i> Mua ngay</span>
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="clearfix"></div>
                    <div class="call-and-payment">
                        <div class="box-zalo-promotion">
                            Giảm ngay <span>250.000đ</span> cho đơn hàng từ 500.000đ khi thanh toán qua ZaloPay cho khách hàng mới. <a href='#' title='Click xem thể lệ'>Click xem thể lệ</a>
                        </div>
                        <div class="hotline_product">
                            Gọi điện để được tư vấn: <a href="tel:18006750" title="18006750">1800 6750</a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-lg-3 col-md-3 hidden-sm hidden-xs">
                    <div class="ant_onlineSupport">
                        <h2 class="supportTitle">CHÚNG TÔI LUÔN SẴN SÀNG<br>ĐỂ GIÚP ĐỠ BẠN</h2>
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" data-lazyload="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/ant_product_support.png?1559638811340" alt="Hỗ trợ trực tuyến" class="supportImage img-responsive center-block" />
                        <h3 class="supportTitle3">Để được hỗ trợ tốt nhất. Hãy gọi</h3>
                        <div class="phoneNumber">
                            <a href="tel:18006750" title="1800 6750">1800 6750</a>
                        </div>
                        <div class="or"><span>HOẶC</span></div>
                        <h3 class="supportTitle">Chat hỗ trợ trực tuyến</h3>
                        <a class="chatNow sprite-icon_chat" href="#" title="CHAT VỚI CHÚNG TÔI">CHAT VỚI CHÚNG TÔI</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-lg-12 col-md-12 margin-top-10">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="product-tab e-tabs padding-bottom-10">
                                <ul class="tabs tabs-title clearfix margin-bottom-20">
                                    <li class="tab-link" data-tab="tab-1">
                                        <h3><span>Mô tả</span></h3>
                                    </li>
                                    <li class="tab-link" data-tab="tab-3">
                                        <h3><span>Nhận xét sản phẩm</span></h3>
                                    </li>
                                </ul>
                                <div id="tab-1" class="">
                                    <div class="rte" id="fancy-image-view">
                                        <div class="ba-text-fpt has-height">
                                            <p><strong>Đặc điểm nổi bật của Apple Macbook Air 2019 i5 1.6GHz/8GB/128GB (MVFM2SA/A)

                                                Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

                                                MacBook Air 2019 128 GB i5 đã ra mắt giữ nguyên các ưu điểm vốn có của dòng MacBook Air: Mỏng nhẹ, cấu hình khỏe và pin trâu. Mẫu MacBook mới con được trang bị màn hình True Tone và cải tiến bàn phím Butterfly thế hệ mới, ổn định và gõ êm hơn.</strong></p>
                                            <p><strong><img alt="Samsung Galaxy S10+" data-src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-s10-plus-1.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA=" title="Bảo mật Samsung Galaxy S10+" /></strong></p>
                                            <h3><strong>Bổ sung tính năng True Tone, màn hình Retina sắc nét</strong></h3>
                                            <p>Với màn hình Retina, độ phân giải 2560 x 1600 cho hơn 4 triệu điểm ảnh MacBook Air 2019 i5 mang đến chất lượng hình ảnh chi tiết và chân thực hơn bao giờ hết.</p>
                                            <p><img alt="Màn hình Galaxy S10+" data-src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-s10-plus-2.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA=" title="Màn hình Galaxy S10+" /></p>
                                            <p>Thế hệ MacBook Air mới con sở hữu công nghệ True Tone - tự động điều chỉnh điểm trắng của màn hình để phù hợp với nhiệt độ màu của môi trường của bạn, giúp màu sắc trên máy tự nhiên hơn, hạn chế mỏi mắt khi dùng lâu..</p>
                                            <p><img alt="Thiết kế Galaxy S10+" data-src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-s10-plus-3.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA=" title="Thiết kế Galaxy S10+" /></p>
                                            <h3><strong>Cảm biến vân tay siêu âm ngay trên màn hình</strong></h3>
                                            <p>Không còn cảm biến vân tay ở mặt lưng nữa, giờ đây với công nghệ vân tay siêu âm, Galaxy S10+ đã tích hợp cảm biến vân tay ngay trên màn hình chính. Đây là một bước tiến lớn trong công nghệ bảo mật. Cảm biến sẽ sử dụng sóng siêu âm để nhận dạng 3D vân tay của bạn, giúp bạn là người duy nhất có thể truy cập vào máy, vô cùng tiện lợi và an toàn tuyệt đối.</p>
                                            <p><img alt="Bảo mật Samsung Galaxy S10+" data-src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-s10-plus-4.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA=" title="Bảo mật Samsung Galaxy S10+" /></p>
                                            <h3><strong>Camera đa nhiệm, chụp đẹp trong mọi hoàn cảnh</strong></h3>
                                            <p>Mang trên mình tới 3 camera sau, Samsung Galaxy S10+ có thể chụp được những bức ảnh độc đáo và xuất sắc trong mọi hoàn cảnh. 3 camera với 3 vai trò khác nhau bao gồm camera chụp thông thường; camera tele để chụp gần và camera góc siêu rộng để chụp được khung hình nhiều hơn. Nhiếp ảnh di động được nâng lên một tầm cao mới trên Galaxy S10+.</p>
                                            <p><img alt="Camera Galaxy S10+" data-src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/galaxy-s10-plus-5.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA=" title="Camera Galaxy S10+" /></p>
                                            <h3><strong>Khẩu độ kép, chụp tối ưu cho cả ban ngày lẫn đêm tối</strong></h3>
                                            <p>Với khả năng tự động thay đổi khẩu độ từ f/2.4 khi chụp ảnh ban ngày và f/1.5 dành riêng cho chụp thiếu sáng, Samsung S10+ cho bạn thỏa sức chụp ảnh ở những điều kiện ánh sáng khác nhau. Chỉ cần đưa máy lên và bấm chụp, phần cứng camera tuyệt vời và bộ vi xử lý mạnh mẽ sẽ cùng nhau tạo nên bức ảnh đẹp nhất cho riêng bạn.</p>
                                        </div>
                                        <div class="show-more hidden-lg hidden-md hidden-sm">
                                            <a class="btn btn-default btn--view-more">
                                                <span class="more-text">Xem thêm <i class="fa fa-chevron-down"></i></span>
                                                <span class="less-text">Thu gọn <i class="fa fa-chevron-up"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div id="tab-3" class="tab-content">
                                    <div id="bizweb-product-reviews" class="bizweb-product-reviews" data-id="13904443">
                                        s
                                        <div class="title-bl">
                                            <h3>Đánh giá sản phẩm</h3>
                                        </div>
                                        <div id="bizweb-product-reviews-sub" style="width:100%">
                                            <div class="bizweb-product-reviews-summary" id="bizweb-product-reviews-summary">
                                                <div>
                                                    <meta itemprop="name" content="Samsung Galaxy S10+ (8 + 128GB)" />
                                                    <div class="bpr-summary" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                                                        <meta content="1" itemprop="ratingValue" />
                                                        <meta content="5" itemprop="bestRating" />
                                                        <meta content="1" itemprop="worstRating" />
                                                        <meta content="1" itemprop="ratingCount" />
                                                        <span class="bpr-summary-average">1</span>
                                                        <div id="bizweb-prv-summary-star" class="bizweb-product-reviews-star" data-score="1" data-number="5"></div>
                                                        <div class="bpr-summary-caption"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="product-reviews-summary-actions">
                                       </span>
                                            <div class="bizweb-product-reviews-form" id="bpr-form_13904443" style="display:none;">
                                            </div>
                                            <div style="display:none;" id="bpr-thanks" class="bizweb-product-reviews-form">
                                            </div>
                                            <div id="bpr-list" class="bizweb-product-reviews-list">
                                            </div>
                                            <div id="bpr-more-reviews">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="specifications margin-bottom-20">
                                <h2 class="fs-dttop">Thông số kỹ thuật</h2>
                                <div class="fs-tsright">
                                    <ul>
                                        <li><label>CPU:</label>Intel Core i5 Coffee Lake, 1.60 GHz</li>
                                        <li><label>RAM:</label>8 GB, DDR3, 2133 MHz</li>
                                        <li><label>Ổ cứng:</label>SSD: 128 GB</li>
                                        <li><label>Màn hình:</label>13.3 inch, Retina (2560 x 1600)</li>
                                        <li><label>Card màn hình:</label>Card đồ họa tích hợp, Intel UHD Graphics 617</li>
                                        <li><label>Cổng kết nối:</label>2 x Thunderbolt 3 (USB-C)</li>
                                        <li><label>Hệ điều hành:</label>Mac OS</li>
                                        <li><label>Thiết kế:</label>Vỏ kim loại nguyên khối, PIN liền</li>
                                        <li><label>Kích thước:</label>Dày 4.1 đến 15.6 mm, 1.25 kg</li>
                                    </ul>
                                </div>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#specifications">
                                    Xem cấu hình chi tiết
                                </button>
                                <div class="modal fade" id="specifications" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Thông số kỹ thuật chi tiết</h4>
                                            </div>
                                            <div class="modal-body">
                                                <ul>
                                                    <li>Màn hình</li>
                                                    <li><label data-id="204">Công nghệ màn hình :</label>Curved Dynamic AMOLED</li>
                                                    <li><label data-id="10">Màu màn hình :</label>16 Triệu</li>
                                                    <li><label data-id="534">Chuẩn màn hình :</label>Quad HD+</li>
                                                    <li><label data-id="12">Độ phân giải màn hình :</label>1440 x 3040 pixels</li>
                                                    <li><label data-id="1160">Màn hình :</label>6.4 inches</li>
                                                    <li><label data-id="1246">Mặt kính màn hình :</label>Corning Gorilla Glass 6</li>
                                                    <li>Camera Trước</li>
                                                    <li><label data-id="1332">Độ phân giải :</label>Camera kép</li>
                                                    <li><label data-id="1334">Thông tin khác :</label>Đang cập nhật</li>
                                                    <li>Camera Sau</li>
                                                    <li><label data-id="1328">Độ phân giải :</label>3 camera</li>
                                                    <li><label data-id="1329">Quay phim :</label>2160p@60fps, 1080p@240fps, 720p@960fps, HDR, dual-video rec</li>
                                                    <li><label data-id="1330">Đèn Flash :</label>Có</li>
                                                    <li><label data-id="1331">Chụp ảnh nâng cao :</label>Đang cập nhật</li>
                                                    <li>Cấu hình phần cứng</li>
                                                    <li><label data-id="649">Tốc độ CPU :</label>2x2.7 GHz + 2x2.3 GHz + 4x1.9 GHz</li>
                                                    <li><label data-id="650">Số nhân :</label>8</li>
                                                    <li><label data-id="651">Chipset :</label>Exynos 9820</li>
                                                    <li><label data-id="652">RAM :</label>8 GB</li>
                                                    <li><label data-id="653">Chip đồ họa (GPU) :</label>Mali-G76 MP12</li>
                                                    <li><label data-id="1345">Cảm biến :</label>Mở khóa bằng vân tay siêu âm, Mở khóa bằng khuôn mặt 2D,...</li>
                                                    <li>Bộ nhớ &amp; Lưu trữ</li>
                                                    <li><label data-id="23">Danh bạ lưu trữ :</label>Không giới hạn</li>
                                                    <li><label data-id="24">ROM :</label>128 GB</li>
                                                    <li><label data-id="1327">Bộ nhớ còn lại :</label>Đang cập nhật</li>
                                                    <li><label data-id="25">Thẻ nhớ ngoài :</label>MicroSD</li>
                                                    <li><label data-id="151">Hỗ trợ thẻ nhớ tối đa :</label>512 GB</li>
                                                    <li>Thiết kế &amp; Trọng lượng</li>
                                                    <li><label data-id="748">Kiểu dáng :</label>Đang cập nhật</li>
                                                    <li><label data-id="1247">Chất liệu :</label>Kính, kim loại, Ceramic</li>
                                                    <li><label data-id="749">Kích thước :</label>157.6 x 74.1 x 7.8 mm</li>
                                                    <li><label data-id="212">Trọng lượng :</label>175g</li>
                                                    <li><label data-id="1248">Khả năng chống nước :</label>Có</li>
                                                    <li>Thông tin pin</li>
                                                    <li><label data-id="194">Loại pin :</label>Li-Ion</li>
                                                    <li><label data-id="36">Dung lượng pin :</label>4100 mAh</li>
                                                    <li><label data-id="750">Pin có thể tháo rời :</label>Không</li>
                                                    <li><label data-id="1250">Chế độ sạc nhanh :</label>Có</li>
                                                    <li>Kết nối &amp; Cổng giao tiếp</li>
                                                    <li><label data-id="156">Loại SIM :</label>Nano SIM</li>
                                                    <li><label data-id="753">Khe cắm sim :</label>2</li>
                                                    <li><label data-id="28">Wifi :</label>Wi-Fi 802.11 a/b/g/n/ac,&nbsp;Dual-band,&nbsp;Wi-Fi Direct,&nbsp;Wi-Fi hotspot</li>
                                                    <li><label data-id="31">GPS :</label>A-GPS, GLONASS, BDS</li>
                                                    <li><label data-id="30">Bluetooth :</label>v5.0,&nbsp;apt-X,&nbsp;A2DP,&nbsp;LE</li>
                                                    <li><label data-id="754">GPRS/EDGE :</label>Không</li>
                                                    <li><label data-id="396">NFC :</label>Có</li>
                                                    <li><label data-id="755">Cổng sạc :</label>Type-C 1.0</li>
                                                    <li><label data-id="35">Jack (Input &amp; Output) :</label>3.5mm</li>
                                                    <li>Giải trí &amp; Ứng dụng</li>
                                                    <li><label data-id="756">Xem phim :</label>True</li>
                                                    <li><label data-id="757">Nghe nhạc :</label>True</li>
                                                    <li><label data-id="758">Ghi âm :</label>Có</li>
                                                    <li><label data-id="760">FM radio :</label>Có</li>
                                                    <li><label data-id="1251">Đèn pin :</label>Có</li>
                                                    <li><label data-id="193">Chức năng khác :</label>Đang cập nhật</li>
                                                    <li>Bảo hành</li>
                                                    <li><label data-id="46">Thời gian bảo hành :</label>12 Tháng</li>
                                                    <li>Hệ điều hành</li>
                                                    <li><label data-id="1350">Hệ điều hành :</label>Android 9.0 (Pie)</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="right_module">
                                <div class="similar-product">
                                    <div class="right-bestsell">
                                        <h2><a href="#" title="Bạn có thể thích">Bạn có thể thích</a></h2>
                                        <div class="list-bestsell">
                                        
                                        <!-- Giới hạn sản phẩm shoow ra là 5 -->
                                        
                                         <c:set var="countList" value="${ productByIDCategory.size() }"></c:set> 
                                        <c:if test="${ productByIDCategory.size() > 5 }">
                                         
                                        <c:set var="countList" value="5"></c:set> 
                                        
                                        </c:if>
                                        
                                        
                                        
                                        <c:forEach var="item" items="${ productByIDCategory }" begin="1" end="${countList}"> 
                                            <div class="list-bestsell-item">
                                                <div class="thumbnail-container clearfix">
                                                    <div class="product-image">
                                                        <a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />" title="Laptop Macbook Pro Touch 2019"><img class="img-responsive" src="<c:url value="/assets/user/images/sanpham/${ item.img }" />" data-lazyload="<c:url value="/assets/user/images/sanpham/${ item.img }" />" alt="${item.title}" /></a>
                                                    </div>
                                                    <div class="product-meta">
                                                        <h3><a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />" title="${item.title}">${item.name}</a></h3>
                                                        <div class="bizweb-product-reviews-badge" data-id="13904443"></div>
                                                        <div class="product-price-and-shipping"><span class="price">${item.gia}₫</span><span class="regular-price">${item.giathitruong}₫</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>
                                            
                                            
                                            
<!--                                             <div class="list-bestsell-item"> -->
<!--                                                 <div class="thumbnail-container clearfix"> -->
<!--                                                     <div class="product-image"> -->
<!--                                                         <a href="/samsung-galaxy-s10e" title="Laptop MSI Gaming 15 GF63 9SC i7"><img class="img-responsive" src="https://cdn.tgdd.vn/Products/Images/44/205916/msi-gaming-gf63-9sc-i7-9750h-8gb-256gb-gtx1650-win-1-1-180x125.jpg" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636863622278818137-ss-galaxy-s10e-den-1.png?v=1552138222357" alt="Samsung Galaxy S10e" /></a> -->
<!--                                                     </div> -->
<!--                                                     <div class="product-meta"> -->
<!--                                                         <h3><a href="/samsung-galaxy-s10e" title="Laptop MSI Gaming 15 GF63 9SC i7">Laptop MSI Gaming 15 GF63 9SC i7</a></h3> -->
<!--                                                         <div class="bizweb-product-reviews-badge" data-id="13870660"></div> -->
<!--                                                         <div class="product-price-and-shipping"><span class="price">25.990.000₫</span><span class="regular-price">26.000.000₫</span></div> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="list-bestsell-item"> -->
<!--                                                 <div class="thumbnail-container clearfix"> -->
<!--                                                     <div class="product-image"> -->
<!--                                                         <a href="/samsung-galaxy-a9-2018" title=""><img class="img-responsive" src="https://cdn.tgdd.vn/Products/Images/44/205916/msi-gaming-gf63-9sc-i7-9750h-8gb-256gb-gtx1650-win-1-1-180x125.jpg" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636776104541101822-galaxy-a7-blue-5.png?v=1551252657427" alt="Samsung Galaxy A9 2018" /></a> -->
<!--                                                     </div> -->
<!--                                                     <div class="product-meta"> -->
<!--                                                         <h3><a href="/samsung-galaxy-a9-2018" title="Samsung Galaxy A9 2018">Samsung Galaxy A9 2018</a></h3> -->
<!--                                                         <div class="bizweb-product-reviews-badge" data-id="13818369"></div> -->
<!--                                                         <div class="product-price-and-shipping"><span class="price">10.490.000₫</span><span class="regular-price">12.500.000₫</span></div> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <div class="list-bestsell-item"> -->
<!--                                                 <div class="thumbnail-container clearfix"> -->
<!--                                                     <div class="product-image"> -->
<!--                                                         <a href="/samsung-galaxy-a7-2018" title="Samsung Galaxy A7 (2018)"><img class="img-responsive" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" data-lazyload="https://bizweb.dktcdn.net/thumb/small/100/348/133/products/636746958719163577-a7-2018-blue-1.png?v=1551252578530" alt="Samsung Galaxy A7 (2018)" /></a> -->
<!--                                                     </div> -->
<!--                                                     <div class="product-meta"> -->
<!--                                                         <h3><a href="/samsung-galaxy-a7-2018" title="Samsung Galaxy A7 (2018)">Samsung Galaxy A7 (2018)</a></h3> -->
<!--                                                         <div class="bizweb-product-reviews-badge" data-id="13818293"></div> -->
<!--                                                         <div class="product-price-and-shipping"><span class="price">6.990.000₫</span><span class="regular-price">7.500.000₫</span></div> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row margin-top-20 margin-bottom-10">
            <div class="col-lg-12">
                <div class="related-product">
                    <div class="home-title">
                        <h2><a href="#" title="Sản phẩm cùng loại">Sản phẩm cùng loại</a></h2>
                    </div>
                   

                    <div class="section-tour-owl owl-carousel not-dqowl products-view-grid margin-top-10" data-md-items="5" data-sm-items="4" data-xs-items="2" data-margin="10">
                       
                   
                       <c:forEach var="item" items="${productByIDCategory}"> 
                       
                        <div class="item">
                        <a href="<c:url value="/shop/chi-tiet-san-pham/${item.id}" />" title="${ item.title }">  
                            <div class="news-item-products">
                            
                           
                                
                           
                                
                                <div class="relative fix-images">
                                    <img data-src="" src="<c:url value="/assets/user/images/sanpham/${ item.img }" />"  alt="${ item.title }" class="img-responsive center-block" />
                                    <label class="per">Giảm  ${ item.sale }% </label>
                                </div>
                                <h3>${ item.name }</h3>
                                <div class="price">
                                    <strong>${ item.gia }₫</strong>
                                    <span>${ item.giathitruong }₫</span>
                                </div>
                                
                              
                            </div>
                            
                            </a>
                            
                        </div>
                        
            </c:forEach>
                      
                    </div>
                            
                </div>
            </div>
        </div>
    </div>
</section>

<div class="bizweb-product-reviews-module"></div>




<div class="ajax-load">
         <span class="loading-icon">
            <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                 width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
               </rect>
               <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
               </rect>
               <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                  <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            </svg>
         </span>
</div>
<div class="loading awe-popup">
    <div class="overlay"></div>
    <div class="loader" title="2">
        <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
             width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
               <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                   <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                   <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                  <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
               </rect>
            </svg>
    </div>
</div>
<div class="addcart-popup product-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="content">
        <div class="row row-noGutter">
            <div class="col-xl-6 col-xs-12">
                <div class="btn btn-full btn-primary a-left popup-title"><i class="fa fa-check"></i>Thêm vào giỏ hàng thành công
                </div>
                <a href="javascript:void(0)" class="close-window close-popup"><i class="fa fa-close"></i></a>
                <div class="info clearfix">
                    <div class="product-image margin-top-5"><img alt="popup" src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/logo.png?1559638811340" style="max-width:150px; height:auto"/></div>
                    <div class="product-info">
                        <p class="product-name"></p>
                        <p class="quantity color-main"><span>Số lượng: </span></p>
                        <p class="total-money color-main"><span>Tổng tiền: </span></p>
                    </div>
                    <div class="actions"><button class="btn  btn-primary  margin-top-5 btn-continue">Tiếp tục mua hàng</button><button class="btn btn-gray margin-top-5" onclick="window.location='/cart'">Kiểm tra giỏ hàng</button></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="error-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="popup-inner content">
        <div class="error-message"></div>
    </div>
</div>
<div id="popup-cart" class="modal fade" role="dialog">
    <div id="popup-cart-desktop" class="clearfix">
        <div class="title-popup-cart"><i class="ion ion-md-notifications-outline" aria-hidden="true"></i> Bạn đã thêm <span class="cart-popup-name"></span> vào giỏ hàng</div>
        <div class="title-quantity-popup"><a href="/cart" title="Giỏ hàng của bạn">Giỏ hàng của bạn có <span class="cart-popup-count"></span> sản phẩm</a></div>
        <div class="content-popup-cart clearfix">
            <div class="thead-popup">
                <div style="width: 55%;" class="text-left">Sản phẩm</div>
                <div style="width: 15%;" class="text-center">Đơn giá</div>
                <div style="width: 15%;" class="text-center">Số lượng</div>
                <div style="width: 15%;" class="text-center">Thành tiền</div>
            </div>
            <div class="tbody-popup"></div>
            <div class="tfoot-popup">
                <div class="tfoot-popup-1 clearfix">
                    <div class="pull-left popupcon"><a class="button btn-continue" title="Tiếp tục mua hàng" onclick="$('#popup-cart').modal('hide');"><span><span><i class="fa fa-caret-left" aria-hidden="true"></i> Tiếp tục mua hàng</span></span></a></div>
                    <div class="pull-right popup-total">
                        <p>Thành tiền: <span class="total-price"></span></p>
                    </div>
                </div>
                <div class="tfoot-popup-2 clearfix"><a class="button btn-proceed-checkout" title="Thanh toán đơn hàng" href="/checkout"><span>Thanh toán đơn hàng</span></a></div>
            </div>
        </div>
        <a class="quickview-close close-window" href="javascript:;" onclick="$('#popup-cart').modal('hide');" title="Đóng"><i class="fa fa-times"></i></a>
    </div>
</div>
<div id="myModal" class="modal fade" role="dialog"></div>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<div class="backdrop__body-backdrop___1rvky"></div>
<div class="mobile-main-menu">
    <div class="drawer-header">
        <a href="account/login">
            <div class="drawer-header--auth">
                <div class="_object"><img src="https://bizweb.dktcdn.net/100/348/133/themes/709285/assets/user.svg?1559638811340" alt="Ant Mobile" /></div>
                <div class="_body">ĐĂNG NHẬP<br>Nhận nhiều ưu đãi hơn</div>
            </div>
        </a>
    </div>
    <ul class="ul-first-menu">
        <li><a href="/account/login" title="Đăng nhập">Đăng nhập</a></li>
        <li><a href="/account/register" title="Đăng ký">Đăng ký</a></li>
    </ul>
    <div class="la-scroll-fix-infor-user">
        <div class="la-nav-menu-items">
            <div class="la-title-nav-items"><strong>Danh mục</strong></div>
            <ul class="la-nav-list-items">
                <li class="ng-scope"><a href="/" title="Trang chủ">Trang chủ</a></li>
                <li class="ng-scope"><a href="/gioi-thieu" title="Giới thiệu">Giới thiệu</a></li>
                <li class="ng-scope ng-has-child1">
                    <a href="product.html" title="Sản phẩm">Sản phẩm <i class="fa fa-plus fa1" aria-hidden="true"></i></a>
                    <ul class="ul-has-child1">
                        <li class="ng-scope ng-has-child2">
                            <a href="/dien-thoai" title="Điện thoại">Điện thoại <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/samsung" title="Samsung">Samsung</a></li>
                                <li class="ng-scope"><a href="/apple" title="Apple">Apple</a></li>
                                <li class="ng-scope"><a href="/sony" title="Sony">Sony</a></li>
                                <li class="ng-scope"><a href="/oppo" title="Oppo">Oppo</a></li>
                                <li class="ng-scope"><a href="/huawei" title="Huawei">Huawei</a></li>
                                <li class="ng-scope"><a href="/xiaomi" title="Xiaomi">Xiaomi</a></li>
                                <li class="ng-scope"><a href="/vivo" title="Vivo">Vivo</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/tablet" title="Tablet">Tablet <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/apple-ipad" title="Apple (iPad)">Apple (iPad)</a></li>
                                <li class="ng-scope"><a href="/samsung-1" title="Samsung">Samsung</a></li>
                                <li class="ng-scope"><a href="/lenovo-1" title="Lenovo">Lenovo</a></li>
                                <li class="ng-scope"><a href="/masstel" title="Masstel">Masstel</a></li>
                                <li class="ng-scope"><a href="/huawei-1" title="Huawei">Huawei</a></li>
                                <li class="ng-scope"><a href="/itel" title="Itel">Itel</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/laptop" title="Laptop">Laptop <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/apple-macbook" title="Apple (Macbook)">Apple (Macbook)</a></li>
                                <li class="ng-scope"><a href="/asus" title="Asus">Asus</a></li>
                                <li class="ng-scope"><a href="/acer" title="Acer">Acer</a></li>
                                <li class="ng-scope"><a href="/dell" title="Dell">Dell</a></li>
                                <li class="ng-scope"><a href="/hp" title="HP">HP</a></li>
                                <li class="ng-scope"><a href="/lenovo" title="Lenovo">Lenovo</a></li>
                                <li class="ng-scope"><a href="/msi" title="MSI">MSI</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope"><a href="/phu-kien" title="Phụ kiện">Phụ kiện</a></li>
                        <li class="ng-scope"><a href="/dong-ho" title="Đồng hồ">Đồng hồ</a></li>
                        <li class="ng-scope"><a href="/may-cu" title="Máy cũ">Máy cũ</a></li>
                    </ul>
                </li>
                <li class="ng-scope ng-has-child1">
                    <a href="/tin-tuc" title="Tin tức">Tin tức <i class="fa fa-plus fa1" aria-hidden="true"></i></a>
                    <ul class="ul-has-child1">
                        <li class="ng-scope ng-has-child2">
                            <a href="/" title="Sản phẩm">Sản phẩm <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/dien-thoai" title="Điện thoại">Điện thoại</a></li>
                                <li class="ng-scope"><a href="/tablet" title="Tablet">Tablet</a></li>
                                <li class="ng-scope"><a href="/laptop" title="Laptop">Laptop</a></li>
                                <li class="ng-scope"><a href="/phu-kien" title="Phụ kiện">Phụ kiện</a></li>
                                <li class="ng-scope"><a href="/dong-ho" title="Đồng hồ">Đồng hồ</a></li>
                                <li class="ng-scope"><a href="/may-cu" title="Máy cũ">Máy cũ</a></li>
                            </ul>
                        </li>
                        <li class="ng-scope"><a href="/" title="Liên hệ">Liên hệ</a></li>
                        <li class="ng-scope ng-has-child2">
                            <a href="/" title="Tin tức">Tin tức <i class="fa fa-plus fa2" aria-hidden="true"></i></a>
                            <ul class="ul-has-child2">
                                <li class="ng-scope"><a href="/" title="Sản phẩm">Sản phẩm</a></li>
                                <li class="ng-scope"><a href="/" title="Liên hệ">Liên hệ</a></li>
                                <li class="ng-scope"><a href="/" title="Tin tức">Tin tức</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="ng-scope"><a href="/lien-he" title="Liên hệ">Liên hệ</a></li>
            </ul>
        </div>
    </div>
    <ul class="mobile-support">
        <li>
            <div class="drawer-text-support">HỖ TRỢ</div>
        </li>
        <li><i class="fa fa-phone" aria-hidden="true"></i> HOTLINE: <a href="tel:18006750" title="18006750">1800 6750</a></li>
        <li><i class="fa fa-envelope" aria-hidden="true"></i> EMAIL: <a href="mailto:baotrung304@gmail.com" title="baotrung304@gmail.com">baotrung304@gmail.com</a></li>
    </ul>
</div>
<script type="text/javascript">
    WebFontConfig = {
        custom: {
            families: ['FontAwesome'],
            urls: ['https://use.fontawesome.com/releases/v5.7.2/css/all.css']
        }
    };
    (function() {
        var wf = document.createElement('script');
        wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
        wf.type = 'text/javascript';
        wf.async = 'true';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(wf, s);
    })();
</script>
<div class="support-cart mini-cart hidden-sm hidden-xs">
    <a class="btn-support-cart" href="../giohang.html">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 435.104 435.104" style="enable-background:new 0 0 435.104 435.104;" xml:space="preserve" width="30px" height="30px">
               <g>
                  <circle cx="154.112" cy="377.684" r="52.736" data-original="#000000" class="active-path" data-old_color="#Ffffff" fill="#FFFFFF"/>
                   <path d="M323.072,324.436L323.072,324.436c-29.267-2.88-55.327,18.51-58.207,47.777c-2.88,29.267,18.51,55.327,47.777,58.207     c3.468,0.341,6.962,0.341,10.43,0c29.267-2.88,50.657-28.94,47.777-58.207C368.361,346.928,348.356,326.924,323.072,324.436z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
                   <path d="M431.616,123.732c-2.62-3.923-7.059-6.239-11.776-6.144h-58.368v-1.024C361.476,54.637,311.278,4.432,249.351,4.428     C187.425,4.424,137.22,54.622,137.216,116.549c0,0.005,0,0.01,0,0.015v1.024h-43.52L78.848,50.004     C77.199,43.129,71.07,38.268,64,38.228H0v30.72h51.712l47.616,218.624c1.257,7.188,7.552,12.397,14.848,12.288h267.776     c7.07-0.041,13.198-4.901,14.848-11.776l37.888-151.552C435.799,132.019,434.654,127.248,431.616,123.732z M249.344,197.972     c-44.96,0-81.408-36.448-81.408-81.408s36.448-81.408,81.408-81.408s81.408,36.448,81.408,81.408     C330.473,161.408,294.188,197.692,249.344,197.972z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
                   <path d="M237.056,118.1l-28.16-28.672l-22.016,21.504l38.912,39.424c2.836,2.894,6.7,4.55,10.752,4.608     c3.999,0.196,7.897-1.289,10.752-4.096l64.512-60.928l-20.992-22.528L237.056,118.1z" data-original="#000000" class="active-path" data-old_color="#F8F8F8" fill="#FFFFFF"/>
               </g>
            </svg>
        <div class="animated infinite zoomIn kenit-alo-circle"></div>
        <div class="animated infinite pulse kenit-alo-circle-fill"></div>
        <span class="cnt crl-bg count_item_pr">0</span>
    </a>
    <div class="top-cart-content hidden-md hidden-sm hidden-xs">
        <ul id="cart-sidebar" class="mini-products-list count_li">
            <li class="list-item">
                <ul></ul>
            </li>
            <li class="action">
                <ul>
                    <li class="li-fix-1">
                        <div class="top-subtotal">Tổng tiền thanh toán:<span class="price"></span></div>
                    </li>
                    <li class="li-fix-2">
                        <div class="actions clearfix">
                            <a href="/cart" class="btn btn-primary">Giỏ hàng</a>
                            <a href="/checkout" class="btn btn-checkout btn-gray">Thanh toán</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<div id="menu-overlay" class=""></div>


</body>
