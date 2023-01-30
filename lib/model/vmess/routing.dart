class Routing {
  /// <summary>
  ///
  /// </summary>
  String domainStrategy;

  /// <summary>
  ///
  /// </summary>
  String domainMatcher;

  /// <summary>
  ///
  /// </summary>
  List<RulesItem> rules;

  Routing(this.domainStrategy, this.domainMatcher, this.rules);
}

class RulesItem {}
