
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

enum PermissionType {
  // Microphone
  recordAudio,

  // Camera
  camera,

  // Read External Storage (Android)
  storage,

  // Write External Storage (Android)
  manageExternalStorage,

  // Receive notifications
  notification,
  location,
  // Access Coarse Location (Android) / When In Use iOS
  accessCoarseLocation,

  // Access Fine Location (Android) / When In Use iOS
  accessFineLocation,

  // Access Fine Location (Android) / When In Use iOS
  whenInUseLocation,

  // Access Fine Location (Android) / Always Location iOS
  alwaysLocation,

  // Write contacts (Android) / Contacts iOS
  writeContacts,

  // Read contacts (Android) / Contacts iOS
  readContacts,
  photos,
}

class PermissionHandler {
  /// Permission type to request permission from user
  PermissionType? _permissionType;

  /// callback when permission is denied by user
  Function()? _onPermissionDenied;

  /// callback when permission is granted by user
  Function()? _onPermissionGranted;

  /// callback when permission is permanently denied by user
  Function()? _onPermissionPermanentlyDenied;

  /// Check a [permission] and return a [Future] with the result
  PermissionHandler(PermissionType permissionType) {
    _permissionType = permissionType;
  }

  /// Request a [permission] , onPermissionDenied method to handle when permission is denied
  PermissionHandler onPermissionDenied(Function()? onPermissionDenied) {
    _onPermissionDenied = onPermissionDenied;
    return this;
  }

  ///  Request a [permission] ,onPermissionGranted method to handle when permission is granted
  PermissionHandler onPermissionGranted(
      Function()? onPermissionGranted) {
    _onPermissionGranted = onPermissionGranted;

    return this;
  }

  ///  Request a [permission] ,onPermissionPermanentlyDenied method to handle when permission is permanently denied
  PermissionHandler onPermissionPermanentlyDenied(
      Function()? onPermissionPermanentlyDenied) {
    _onPermissionPermanentlyDenied = onPermissionPermanentlyDenied;

    return this;
  }

  /// get Permission from PermissionType enum value
  Permission _getPermissionFromType(PermissionType permissionType) {
    switch (permissionType) {
      case PermissionType.camera:
        return Permission.camera;
      case PermissionType.storage:
        return Permission.storage;
      case PermissionType.recordAudio:
        return Permission.microphone;
      case PermissionType.writeContacts:
        return Permission.contacts;
      case PermissionType.readContacts:
        return Permission.contacts;
      case PermissionType.whenInUseLocation:
        return Permission.locationWhenInUse;
      case PermissionType.alwaysLocation:
        return Permission.locationAlways;
      case PermissionType.notification:
        return Permission.notification;
      case PermissionType.photos:
        return Permission.photos;
      default:
        throw Exception('Invalid permission type');
    }
  }

  /// execute request permission
  /// gets permission from PermissionType enum value and request permission
  /// handle permission status and call callback function
  /// if permission is granted, call onPermissionGranted callback
  /// if permission is denied, call onPermissionDenied callback
  /// if permission is permanently denied, call onPermissionPermanentlyDenied callback
  void execute() async {
    Permission permission = _getPermissionFromType(_permissionType!);

    if (permission == Permission.locationWhenInUse ||
        permission == Permission.locationAlways ||
        permission == Permission.location) {
      debugPrint("****************************");
      await permission.shouldShowRequestRationale;
    }
    PermissionStatus status = await permission.request();
    debugPrint("status:$status");

    if (status.isGranted) {
      if (_onPermissionGranted != null) {
        _onPermissionGranted!();
      }
    } else if (status.isDenied) {
      if (_onPermissionDenied != null) {
        _onPermissionDenied!();
      }
    } else if (status.isPermanentlyDenied) {
      if (_onPermissionPermanentlyDenied != null) {
        _onPermissionPermanentlyDenied!();
      }
    }
  }
}