import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class LogObserver extends ProviderObserver {
  final logger = Logger();
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    logger.i('Provider $provider was initialized with $value');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    logger.i('Provider $provider was disposed');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.i('Provider $provider updated from $previousValue to $newValue');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    logger.e('Provider $container threw error', error: error, stackTrace: stackTrace);
  }
}
