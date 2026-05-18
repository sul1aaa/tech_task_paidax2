import 'dart:ui';

class EtfAsset {
  final String ticker;
  final String description;
  final Color color;
  final int percentage;

  const EtfAsset({
    required this.ticker,
    required this.description,
    required this.color,
    required this.percentage,
  });
}

final mockEtfAssets = [
  const EtfAsset(
    ticker: 'SPUS',
    description: 'Акции США, шариатский фильтр',
    color: Color(0xFF0038FF),
    percentage: 35,
  ),
  const EtfAsset(
    ticker: 'HLAL',
    description: 'FTSE США, шариатский',
    color: Color(0xFF00BC7D),
    percentage: 20,
  ),
  const EtfAsset(
    ticker: 'SPSK',
    description: 'Сукук-облигации',
    color: Color(0xFF9B5CF6),
    percentage: 20,
  ),
  const EtfAsset(
    ticker: 'ISDU',
    description: 'Развитые рынки, исламский',
    color: Color(0xFFF59E0B),
    percentage: 15,
  ),
  const EtfAsset(
    ticker: 'HLAL',
    description: 'Глобальный шариатский',
    color: Color(0xFF06B6D4),
    percentage: 10,
  ),
];
