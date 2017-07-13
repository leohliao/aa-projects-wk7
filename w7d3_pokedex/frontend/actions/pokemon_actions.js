export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
import * as APIUtil from '../util/api_util';

//action creator
export const receiveAllPokemon = function(pokemon){
  return { //returns 'action'
    type: RECEIVE_ALL_POKEMON,
    pokemon: pokemon
  };
};

//thunk action creator
export const requestAllPokemon = () => (dispatch) => {
  return APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)));
};
