///Abstract repository, it defines a type.
///
/// Responsibility:
/// It's in charge of making the transition from the UseCase and the Persistence
/// framework, it handles the conversion entity => domain & domain => entity.
/// This is the layer where data is cypher in case of needed, conversion,
/// formatting ...
abstract class AbstractRepository {}
