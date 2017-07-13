import React from 'react';

class PokemonIndex extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.requestAllPokemon();
  }

  render(){
    
    let pokemon = this.props.pokemon.map((poke) => (
      <li key={poke.id}>{poke.name}<img src={poke.image_url}></img></li>
    ));

    return(
      <ul>
        {pokemon}
      </ul>
    );
  }
}

export default PokemonIndex;
