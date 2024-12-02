import '../schema/user.dart';

// Normaler User in unserer "fiktiven Datenbank"
final normalUser =
    User(email: "test@test.de", password: "123", name: "Test", isAdmin: false);

// Admin User in unserer "fiktiven Datenbank"
final adminUser = User(
    email: "admin@test.de", password: "123", name: "AdminTest", isAdmin: true);
