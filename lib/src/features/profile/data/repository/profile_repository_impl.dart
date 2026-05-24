import 'package:hasnetix/src/core/index.dart' show ResultFuture;
import 'package:hasnetix/src/features/auth/index.dart' show User;
import 'package:hasnetix/src/features/profile/index.dart'
    show ProfileDataSource, ProfileRepository;

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(ProfileDataSource dataSource)
    : _profileDataSource = dataSource;

  final ProfileDataSource _profileDataSource;

  @override
  ResultFuture<User?> getUserDetails() => _profileDataSource.getUserDetails();
}
