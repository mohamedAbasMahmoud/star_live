class ApiConstance {
  static const String baseUrl = 'https://tiqnia.com/Apps/laundry_app/api/v1';

  static String token = '';

  /// ===Auth====
  static const String gettrustCategory = 'custom-api/v1/categories';
  static const String getCities = '/governments';
  static const String getProviderTypes = '/provider-types';
  static const String signUp = '/auth/register';
  static const String login = '/auth/login';
  static const String sendOtp = '/send-otp';
  static const String veryfiyOtp = '/verify-otp';
  static const String forgetPassword = '/auth/forget-password';
  static const String deleteAccount = '/auth/delete-account';
  static const String updateauth = '/auth/update-profile';

  ///auth/update-profile

  //===home===
  static const String allSpecialization = '/specializations';

  ///===specializations===
  static String allSubSpeialization = '/sub-specializations';
  static String showSubProviders = '/specializations/providers';
  static String providersServices(int id) => '/providers/$id/services';
  static String addnewprovreview = '/provider-service-reviews';
  //==topProvider===
  static String getTopProviders = '/home/top-providers';
  static String egyptTopProviders(int id) => '/home/country/$id/top-providers';
  static String saudiaTopProviders(int id) => '/home/country/$id/top-providers';
  static String unitedStatesTopProviders(int id) =>
      '/home/country/$id/top-providers';

  ///====jobs====
  static const String getAllJobs = '/jobs';
  static const String getJobapplication = '/client/job-application';
  static String getShowJobs(int id) => '/jobs/$id';
  //====posts========
  static String getAllPosts = '/request-services';
  static String detailPosts(int id) => '/request-services/$id';
  //=====offers======
  static const String getAllOffersServise = '/request-offers';
  static const String addNewOfferServise = '/request-offers';
  static String deleteOfferServise(int id) => '/request-offers/$id';
  //===shoop===
  static const String allShopCategory = '/store/categories';
  static const String topSellingShop = '/store/top-selling-products';
  static const String recommendedShop = '/store/recommended-products';
  //==detail_shop==
  static String showProduct(int id) => '/store/products/$id';

  //==========//============//=========
  static const String logout = 'auth/logout';
  static const String resetPassword = '/profile/reset-password';
  static const String createLocation = '//locations';

  static const String deleteAcount = '/auth/delete-account';
  static String updateProfile(int id) => '/profile/$id/update';
  static String fetchUserProfile(int id) => '/profile/$id';
  static String fetchpreviousWork = '/provider-previous-works';

  static String getAllProvidePreview = '/provider-service-reviews';

  // Home===================================Home=========================
  static const String getCategories = '/categories';
  static String getCategoriesItems(int id) => '/categories/$id/items';

  ///search
  static const String searchItems = '/search';

  static const String getSubCategory = 'products/categories';

  //cart///////////////////////////////////cart/////////////////////////////////////////////////////
  //static const String getCart = '/cart';
  static const String addToCart = '/cart/add';
  static const String removeFromCart = '/cart/remove';
  static const String getAllCarts = '/cart';
  static const String increaseQuantity = '/cart/increase-quantity';
  static const String decreaseQuantity = '/cart/decrease-quantity';

  /////////////Timee==================

  static const String getTime = '/period-times';
  //=======================Location======
  static String getAllLocation() => '/locations';
  ///////////////////////////////////////////////////////////////////////////////////////////
  ////====================================orders--------------------------------------
  static const String createNewOrders = '/orders';
  static const String filterOrders = '/user/orders/filter';

  // // favorites
  // static const String getUserFavorites =
  //     'https://www.7pets.net/wp-json/custom/v1/wishlist';
  // static const String addFavorites =
  //     'https://www.7pets.net/wp-json/custom/v1/add-to-wishlist';
  // static const String removeFavorites =
  //     'https://www.7pets.net/wp-json/custom/v1/remove-from-wishlist';

  // // Customer
  // static final String getCustomer =
  //     'https://www.7pets.net/wp-json/custom/v1/get-customer/$kUserId';
}
