import '../../../shared/models/repository/models/app_user.dart';

// Normaler User in unserer "fiktiven Datenbank"
final normalUser = AppUser(
    email: "test@test.de",
    password: "123",
    firstName: "Gandalf",
    isAdmin: false);

// Admin User in unserer "fiktiven Datenbank"
final adminUser = AppUser(
    email: "admin@test.de",
    password: "123",
    firstName: "AdminTest",
    isAdmin: true);

final guest = AppUser(
    email: "guest@guest.de",
    password: "guest",
    firstName: "Gast",
    isAdmin: false,
    isGuest: true);
