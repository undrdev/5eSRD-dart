class CachedEntry {
  CachedEntry({
    required this.payload,
    DateTime? storedAt,
  }) : storedAt = storedAt ?? DateTime.now().toUtc();

  final Map<String, dynamic> payload;
  final DateTime storedAt;

  bool isExpired(Duration ttl) {
    final now = DateTime.now().toUtc();
    return now.difference(storedAt) > ttl;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'payload': payload,
        'storedAt': storedAt.millisecondsSinceEpoch,
      };

  factory CachedEntry.fromJson(Map<String, dynamic> json) => CachedEntry(
        payload: Map<String, dynamic>.from(json['payload'] as Map),
        storedAt: DateTime.fromMillisecondsSinceEpoch(
          json['storedAt'] as int,
          isUtc: true,
        ),
      );
}
