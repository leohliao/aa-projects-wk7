export const selectAllPokemon = ({ pokemon }) =>
  Object.keys(pokemon).map((key) => (pokemon[key]));
