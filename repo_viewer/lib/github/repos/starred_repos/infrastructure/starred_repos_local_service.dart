import 'package:repo_viewer/core/infrastructure/sembast_database.dart';
import 'package:repo_viewer/github/repos/core/infrastructure/github_repo_dto.dart';
import 'package:sembast/sembast.dart';
import 'package:collection/collection.dart';

class StarredReposLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store('starredRepos');

  StarredReposLocalService(this._sembastDatabase);

  Future<void> upsertPage(List<GithubRepoDTO> dtos, int page) async {
    final sembastPage = page--;

    await _store
        .records(
          dtos.mapIndexed((index, _) => (index + 3 * sembastPage).toString()),
        )
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }
}
