export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkAmount' : IDL.Func([], [IDL.Float64], ['query']),
    'checkBalance' : IDL.Func([], [IDL.Nat], ['query']),
    'topUp' : IDL.Func([IDL.Nat], [], ['oneway']),
    'withdraw' : IDL.Func([IDL.Nat], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
