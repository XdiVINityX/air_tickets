abstract interface class IFlyFromSharedPreferences{

  Future<void> saveFlyFromPreferences(String from);

  Future<String> getFlyFromPreferences();
}


