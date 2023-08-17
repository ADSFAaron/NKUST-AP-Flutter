import 'package:ap_common/callback/general_callback.dart';
import 'package:nkust_ap/models/event_info_response.dart';

class EventSendCallback<T> extends GeneralCallback<T> {
  final Function(EventInfoResponse e) onNeedPick;

  EventSendCallback({
    required Function(DioException e) onFailure,
    required Function(GeneralResponse generalResponse) onError,
    required Function(T data) onSuccess,
    required this.onNeedPick,
  }) : super(onFailure: onFailure, onError: onError, onSuccess: onSuccess);
}
