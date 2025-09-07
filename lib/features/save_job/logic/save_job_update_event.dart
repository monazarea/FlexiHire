class SaveJobUpdateEvent {
  final int jobId;
  final bool isNowSaved;

  SaveJobUpdateEvent({required this.jobId, required this.isNowSaved});
}