import * as types from '../actions/actionTypes';

export default (state = [], action) => {
  switch (action.type) {
    case types.REQUEST_RACES:
      return action.races;
      default:
      return state;
  }
}