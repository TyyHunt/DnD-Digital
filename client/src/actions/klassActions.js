import * as types from './actionTypes'

export const getKlasses = () => {
  return dispatch => {
    return fetch('http://localhost:3005/api/klasses')
      .then(response => response.json())
      .then(data => {
        dispatch(setKlasses(data))
      })
      .catch(error => console.log(error));
  };
}

export const setKlasses = klasses => {
  return {
    type: types.REQUEST_KLASSES,
    klasses: klasses
  }
}