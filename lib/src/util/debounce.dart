import 'dart:async';

/// Map of functions currently being debounced.
Map<Function, _DebounceTimer> timeouts = <Function, _DebounceTimer>{};

/// A collection of of static functions to debounce calls to a target function.
class Debounce {
  /// Calls [duration] with a timeout specified in milliseconds.
  static void milliseconds(
    int timeoutMs,
    Function target, [
    List<dynamic>? positionalArguments,
    Map<Symbol, dynamic>? namedArguments,
  ]) {
    duration(
      Duration(milliseconds: timeoutMs),
      target,
      positionalArguments,
      namedArguments,
    );
  }

  /// Calls [duration] with a timeout specified in seconds.
  static void seconds(
    int timeoutSeconds,
    Function target, [
    List<dynamic>? positionalArguments,
    Map<Symbol, dynamic>? namedArguments,
  ]) {
    duration(
      Duration(seconds: timeoutSeconds),
      target,
      positionalArguments,
      namedArguments,
    );
  }

  /// Calls [target] with the latest supplied [positionalArguments] and [namedArguments]
  /// after a [timeout] duration.
  ///
  /// Repeated calls to [duration] (or any debounce operation in this library)
  /// with the same [Function target] will reset the specified [timeout].
  static void duration(
    Duration timeout,
    Function target, [
    List<dynamic>? positionalArguments,
    Map<Symbol, dynamic>? namedArguments,
  ]) {
    timeouts[target]?.cancel();
    timeouts[target] = _DebounceTimer(timeout, target, positionalArguments, namedArguments);
  }

  /// Run a function which is already debounced (queued to be run later),
  /// but run it now. This also cancels and clears out the timeout for
  /// that function.
  ///
  /// If [positionalArguments] and [namedArguments] is not null or empty,
  /// a new version of [target] will be called with those arguments.
  static Future runAndClear(
    Function target, [
    List<dynamic>? positionalArguments,
    Map<Symbol, dynamic>? namedArguments,
  ]) async {
    if (timeouts.containsKey(target)) {
      if (positionalArguments?.isNotEmpty == true || namedArguments?.isNotEmpty == true) {
        timeouts[target]!.cancel();
        await Function.apply(target, positionalArguments, namedArguments);
      } else {
        await timeouts[target]!.runNow();
      }
      timeouts.remove(target);
    }
  }

  /// Clear a function that has been debounced. Returns [true] if
  /// a debounced function has been removed.
  static bool clear(Function target) {
    if (timeouts.containsKey(target)) {
      timeouts[target]!.cancel();
      timeouts.remove(target);
      return true;
    }

    return false;
  }
}

// _DebounceTimer allows us to keep track of the target function
// along with it's timer.
class _DebounceTimer {
  _DebounceTimer(
    Duration timeout,
    this.target, [
    this.positionalArguments,
    this.namedArguments,
  ]) : timer = Timer(timeout, () {
          Function.apply(target, positionalArguments, namedArguments);
        });

  final Timer timer;
  final Function target;
  final List<dynamic>? positionalArguments;
  final Map<Symbol, dynamic>? namedArguments;

  Future runNow() async {
    cancel();
    await Function.apply(target, positionalArguments, namedArguments);
  }

  void cancel() {
    timer.cancel();
  }
}
