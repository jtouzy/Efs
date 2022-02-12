//
//  Passthrough.swift
//  Efs
//
//  Created by Jérémy TOUZY on 12/02/2022.
//

extension Efs {
  public static func passthrough<O>(_ output: O) -> () -> O {
    return {
      output
    }
  }
  public static func passthrough<IA, O>(_ output: O) -> (IA) -> O {
    return { _ in
      output
    }
  }
  public static func passthrough<IA, IB, O>(_ output: O) -> (IA, IB) -> O {
    return { _, _ in
      output
    }
  }
  public static func passthrough<IA, IB, IC, O>(_ output: O) -> (IA, IB, IC) -> O {
    return { _, _, _ in
      output
    }
  }
  public static func passthrough<IA, IB, IC, ID, O>(_ output: O) -> (IA, IB, IC, ID) -> O {
    return { _, _, _, _ in
      output
    }
  }
  public static func passthrough<IA, IB, IC, ID, IE, O>(_ output: O) -> (IA, IB, IC, ID, IE) -> O {
    return { _, _, _, _, _ in
      output
    }
  }
  public static func passthrough<IA, IB, IC, ID, IE, IF, O>(_ output: O) -> (IA, IB, IC, ID, IE, IF) -> O {
    return { _, _, _, _, _, _ in
      output
    }
  }
}
