import 'package:clean_core/clean_core.dart';

///[AbstractRepository] of CRUD Async operations, of type Domain extends [BasicDomainObject].
///Generally not implemented, instead extends the repo from [DefaultCRUDRepoAsync].
///
/// See [AbstractRepository] for general info.
///
/// Example at [DefaultCRUDRepoAsync]
abstract class CRUDRepositoryAsync<Domain extends BasicDomainObject>
    extends AbstractRepository {
  //todo: example of definition
  ///Create the domain.
  Future<Domain> create(Domain newObject);

  ///Edit the domain.
  Future<Domain> edit(Domain objectToEdit);

  ///Destroy the domain.
  Future<Domain> destroy(Domain objectToDestroy);

  ///Find the correspondent domain by it's Key Id.
  Future<Domain> findBy(int keyId);

  ///Find all domains.
  Future<List<Domain>> findAll();

  ///Count the amount of domains.
  ///By default calling the length of findAll().
  Future<int> count() async {
    return findAll().then((value) => value.length);
  }
}
