import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

abstract class StoreObserver<Data> extends StatelessWidget {
  Widget builder(Data data);
  ObservableFuture<Data> get future;
  void fetch();

  StoreObserver({Key key}) : super(key: key) {
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        switch (future.status) {
          case FutureStatus.pending:
            return Center(
              child: CircularProgressIndicator(),
            );
          case FutureStatus.rejected:
            return _RetryWidget(onRetry: fetch);
          case FutureStatus.fulfilled:
            return builder(future.result);
          default:
            return null;
        }
      },
    );
  }
}

class _RetryWidget extends StatelessWidget {
  final Function onRetry;

  _RetryWidget({this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Failed to load items.',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: const Text('Tap to retry'),
            onPressed: () => onRetry?.call(),
          )
        ],
      ),
    );
  }
}
