import ExpoModulesCore

internal class MissionPermissionsException: GenericException<String> {
  override var reason: String {
    "\(param) permission is required to do this operation"
  }
}

internal class DefaultCalendarsNotFoundException: Exception {
  override var reason: String {
    "Could not find default calendars"
  }
}

internal class CalendarNotSavedException: GenericException<(String, String)> {
  override var reason: String {
    "Calendar \(param.0) is immutable and cannot be modified"
  }
}

internal class EntityNotSupportedException: GenericException<String?> {
  override var reason: String {
    "Calendar entityType \(param) is not supported"
  }
}

internal class CalendarIdNotFoundException: GenericException<String> {
  override var reason: String {
    "Calendar with id \(param) could not be found"
  }
}

internal class CalendarEventNotFoundException: GenericException<String> {
  override var reason: String {
    "Event with id \(param) could not be found"
  }
}

internal class CalendarEventNotUpdatedException: GenericException<String> {
  override var reason: String {
    "Event with id \(param) could not be updated because it doesn't exist"
  }
}

internal class InvalidCalendarType: GenericException<(String, String)> {
  override var reason: String {
    "Calendar with id \(param.0) is not of type `\(param.1)`"
  }
}

internal class CalendarMissingParameterException: Exception {
  override var reason: String {
    "`Calendar.getRemindersAsync` needs at least one calendar ID"
  }
}

internal class ReminderNotFoundException: GenericException<String> {
  override var reason: String {
    "Reminder with id \(param) could not be found"
  }
}

internal class InvalidCalendarEntityException: GenericException<String?> {
  override var reason: String {
    "Calendar entityType \(param) is not supported"
  }
}

internal class InvalidTimeZoneException: Exception {
  override var reason: String {
    "Invalid time zone"
  }
}

internal class SourceNotFoundException: GenericException<String> {
  override var reason: String {
    "Source with id \(param) was not found"
  }
}

internal class PermissionsManagerNotFoundException: Exception {
  override var reason: String {
    "Permissions module not found. Are you sure that Expo modules are properly linked?"
  }
}

internal class InvalidDateFormatException: Exception {
  override var reason: String {
    "JSON String could not be interpreted as a date Expected format: YYYY-MM-DD'T'HH:mm:ss.sssZ"
  }
}

internal class CalendarIdRequiredException: Exception {
  override var reason: String {
    "CalendarId is required"
  }
}

internal class EventIdRequired: Exception {
  override var reason: String {
    "Event Id is required"
  }
}
