enum RoleType { customer, vendor, supervisor, admin }

extension EnumRole on RoleType {
  String toJsonString() {
    switch (this) {
      case RoleType.customer:
        return 'customer';
      case RoleType.vendor:
        return "vendor";
      case RoleType.supervisor:
        return "supervisor";
      case RoleType.admin:
        return "admin";
    }
  }

  String getType() {
    switch (this) {
      case RoleType.customer:
        return "customer";
      case RoleType.vendor:
        return "vendor";
      case RoleType.supervisor:
        return "supervisor";
      case RoleType.admin:
        return "admin";
    }
  }

  String display() {
    switch (this) {
      case RoleType.customer:
        return "Người dùng";
      case RoleType.vendor:
        return "vendor";
      case RoleType.supervisor:
        return "Chuyên gia";
      case RoleType.admin:
        return "admin";
    }
  }
}

RoleType stringToRoleType(String type) {
  switch (type) {
    case 'customer':
      return RoleType.customer;
    case 'vendor':
      return RoleType.vendor;
    case 'transporter':
      return RoleType.supervisor;
    case 'admin':
      return RoleType.admin;

    default:
      return RoleType.customer;
  }
}

String roleTypeToString(RoleType type) {
  switch (type) {
    case RoleType.customer:
      return 'customer';
    case RoleType.vendor:
      return 'vendor';
    case RoleType.supervisor:
      return 'transporter';
    case RoleType.admin:
      return 'admin';
  }
}
