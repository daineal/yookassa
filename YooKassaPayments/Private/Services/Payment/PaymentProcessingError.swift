import YooKassaPaymentsApi

enum PaymentProcessingError: PresentableError {
    case emptyList
    case internetConnection

    var title: String? {
        return nil
    }

    var message: String {
        switch self {
        case .emptyList:
            return ┬žLocalized.Error.emptyPaymentMethods
        case .internetConnection:
            return ┬žLocalized.Error.internetConnection
        }
    }

    var style: PresentableNotificationStyle {
        return .alert
    }
    var actions: [PresentableNotificationAction] {
        return []
    }
}

// MARK: - Localized

private extension PaymentProcessingError {
    enum Localized {
        enum Error: String {
            case emptyPaymentMethods = "Error.emptyPaymentOptions"
            case internetConnection = "Error.internet"
        }
    }
}
