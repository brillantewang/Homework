const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  switch(action.type) {
    case "SWITCH_CURRENCY":
      let newState = {
        baseCurrency: action.baseCurrency,
        rates: action.rates
      }
      return newState;
    default:
      return state;
  }
};

export default reducer;
