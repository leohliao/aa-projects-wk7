import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';
import { merge } from 'lodash';

export default function pokemonReducer (state = {}, action){
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_ALL_POKEMON:
      return merge({}, state, action.pokemon);
    default:
      return state;
  }
}
