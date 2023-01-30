import 'package:flutter/foundation.dart';
import 'package:rive/rive.dart';

class RiveAnimationProvider extends ChangeNotifier {
  // Rive Controls
  SMIBool? _mascotCheck;
  SMIBool? _mascotHandsUp;
  SMIBool? _mascotCry;
  SMIBool? _mascotParty;
  SMITrigger? _mascotSuccess;
  SMITrigger? _mascotFail;
  SMITrigger? _mascotWave;
  SMITrigger? _mascotScratch;
  SMINumber? _mascotLook;

  // init rive file and controls
  void onLoginScreenInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(artboard, 'State Machine 1');
    if (controller != null) {
      artboard.addController(controller); // TODO: try to comment this then hot reolad the app. You can notice huge difference in performance
      _mascotCheck = controller.findSMI('check');
      _mascotSuccess = controller.findSMI('success');
      _mascotFail = controller.findSMI('fail');
      _mascotHandsUp = controller.findSMI('hands_up');
      _mascotCry = controller.findSMI('cry');
      _mascotWave = controller.findSMI('wave');
      _mascotScratch = controller.findSMI('scratch');
      _mascotParty = controller.findSMI('party');
      _mascotLook = controller.findSMI('look');
    }
  }

  // on text field tap
  void onMascotCheck(bool value) {
    _mascotCheck?.value = value;
  }

  // follow characters on text field
  void onMascotLook(double value) {
    _mascotLook?.value = value * 2;
  }

  // hands up
  void onMascotHandsUp(bool value) {
    _mascotHandsUp?.value = value;
  }

  // on failure
  void onMascotFailure() {
    _mascotFail?.fire();
  }

  // on success
  void onMascotSuccess() {
    _mascotSuccess?.fire();
  }

  // on mascot party
  void onMascotParty() {
    _mascotParty?.value = true;
  }

  // on mascot wave
  void onMascotWave() {
    _mascotWave?.fire();
  }

  // on mascot scratch
  void onMascotScratch() {
    _mascotScratch?.fire();
  }

  // on mascot cry
  void onMascotCry() {
    _mascotCry?.value = true;
  }

  // reset Animation value
  void resetAnimation() {
    _mascotCheck?.value = false;
    _mascotLook?.value = 0;
    _mascotHandsUp?.value = false;
    _mascotCry?.value = false;
    _mascotParty?.value = false;
  }
}
