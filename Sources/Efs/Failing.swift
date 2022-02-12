//
//  Failing.swift
//  Efs
//
//  Created by Jérémy TOUZY on 12/02/2022.
//

extension Efs {
  public static func failing<O>() -> () -> O {
    return {
      fatalError("Non-mocked function has been called here.")
    }
  }
  public static func failing<IA, O>() -> (IA) -> O {
    return { ia in
      fatalError("Non-mocked function with \(buildInputs(ia)) has been called here.")
    }
  }
  public static func failing<IA, IB, O>() -> (IA, IB) -> O {
    return { ia, ib in
      fatalError("Non-mocked function with \(buildInputs(ia, ib)) has been called here.")
    }
  }
  public static func failing<IA, IB, IC, O>() -> (IA, IB, IC) -> O {
    return { ia, ib, ic in
      fatalError("Non-mocked function with \(buildInputs(ia, ib, ic)) has been called here.")
    }
  }
  public static func failing<IA, IB, IC, ID, O>() -> (IA, IB, IC, ID) -> O {
    return { ia, ib, ic, id in
      fatalError("Non-mocked function with \(buildInputs(ia, ib, ic, id)) has been called here.")
    }
  }
  public static func failing<IA, IB, IC, ID, IE, O>() -> (IA, IB, IC, ID, IE) -> O {
    return { ia, ib, ic, id, ie in
      fatalError("Non-mocked function with \(buildInputs(ia, ib, ic, id, ie)) has been called here.")
    }
  }
  public static func failing<IA, IB, IC, ID, IE, IF, O>() -> (IA, IB, IC, ID, IE, IF) -> O {
    return { ia, ib, ic, id, ie, `if` in
      fatalError("Non-mocked function with \(buildInputs(ia, ib, ic, id, ie, `if`)) has been called here.")
    }
  }
}

private func buildInputs(_ inputs: Any...) -> String {
  inputs
    .enumerated()
    .reduce(into: Array<String>()) { $0.append("input\($1.offset): [\($1.element)]") }
    .joined(separator: ",")
}
