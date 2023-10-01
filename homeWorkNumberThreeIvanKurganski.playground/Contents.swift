//Home work number 3 by Ivan Kurganski

//the first exercise

/* the pawn - пешка
 the bishop - ладья
 the knight - конь
 the rook - слон
 the queen - королева
 the king - король
 */

// К СОЖАЛЕНИЮ НЕ ЗНАЮ КАК КАЖДКЮ ФИГУРУ ЗАМЕНИТЬ НА EMOJII.
let fig = "\u{1F614}"
enum ChessFigure {
    case pawn(color: String, position: (column: String, row: Int))
    case knight(color: String, position: (column: String, row: Int))
    case rook(color: String, position: (column: String, row: Int))
    case bishop(color: String, position: (column: String, row: Int))
    case queen(color: String, position: (column: String, row: Int))
    case king(color: String, position: (column: String, row: Int))
}


let table = [ChessFigure.pawn(color: "white", position: ("A", 2)),
             ChessFigure.pawn(color: "white", position: ("B", 2)),]

func chessPawnsWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "A", 2: "B", 3: "C", 4: "D", 5: "E", 6: "F", 7: "G", 8: "H"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .pawn where color == "white":
        for i in 1...8 {
            figArray.append(ChessFigure.pawn(color: color, position: (column: String(directions[i]!), row: 2)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessPawnsWhite(fig: .pawn(color: "white", position: (column: "A", row: 2)), color: "white"))

func chessBishopWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "C", 2: "F"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .bishop where color == "white":
        for i in 1...2 {
            figArray.append(ChessFigure.bishop(color: color, position: (column: String(directions[i]!), row: 1)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessBishopWhite(fig: .bishop(color: "white", position: (column: "A", row: 1)), color: "white"))

func chessKnightWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "B", 2: "G"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .knight where color == "white":
        for i in 1...2 {
            figArray.append(ChessFigure.knight(color: color, position: (column: String(directions[i]!), row: 1)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessKnightWhite(fig: .knight(color: "white", position: (column: "A", row: 1)), color: "white"))

func chessRookWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "A", 2: "H"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .rook where color == "white":
        for i in 1...2 {
            figArray.append(ChessFigure.rook(color: color, position: (column: String(directions[i]!), row: 1)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessRookWhite(fig: .rook(color: "white", position: (column: "A", row: 1)), color: "white"))

func chessQueenWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "E"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .queen where color == "white":
        for i in 1...1 {
            figArray.append(ChessFigure.queen(color: color, position: (column: String(directions[i]!), row: 1)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessQueenWhite(fig: .queen(color: "white", position: (column: "A", row: 1)), color: "white"))

func chessKingWhite(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "D"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .king where color == "white":
        for i in 1...1 {
            figArray.append(ChessFigure.king(color: color, position: (column: String(directions[i]!), row: 1)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessKingWhite(fig: .king(color: "white", position: (column: "A", row: 1)), color: "white"))

func chessPawnsBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "A", 2: "B", 3: "C", 4: "D", 5: "E", 6: "F", 7: "G", 8: "H"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .pawn where color == "black":
        for i in 1...8 {
            figArray.append(ChessFigure.pawn(color: color, position: (column: String(directions[i]!), row: 7)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessPawnsBlack(fig: .pawn(color: "black", position: (column: "A", row: 7)), color: "black"))


func chessBishopBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "C", 2: "F"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .bishop where color == "black":
        for i in 1...2 {
            figArray.append(ChessFigure.bishop(color: color, position: (column: String(directions[i]!), row: 8)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessBishopBlack(fig: .bishop(color: "black", position: (column: "A", row: 8)), color: "black"))


func chessKnightBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "B", 2: "G"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .knight where color == "black":
        for i in 1...2 {
            figArray.append(ChessFigure.knight(color: color, position: (column: String(directions[i]!), row: 8)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessKnightBlack(fig: .knight(color: "black", position: (column: "A", row: 8)), color: "black"))

func chessRookBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "A", 2: "H"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .rook where color == "black":
        for i in 1...2 {
            figArray.append(ChessFigure.rook(color: color, position: (column: String(directions[i]!), row: 8)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessRookBlack(fig: .rook(color: "black", position: (column: "A", row: 1)), color: "black"))

func chessQueenBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "E"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .queen where color == "black":
        for i in 1...1 {
            figArray.append(ChessFigure.queen(color: color, position: (column: String(directions[i]!), row: 8)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessQueenBlack(fig: .queen(color: "black", position: (column: "A", row: 1)), color: "black"))

func chessKingBlack(fig: ChessFigure, color: String) -> [ChessFigure] {
    let directions = [1: "D"]
    var figArray: [ChessFigure] = []
    switch fig {
    case .king where color == "black":
        for i in 1...1 {
            figArray.append(ChessFigure.king(color: color, position: (column: String(directions[i]!), row: 8)))
        }
        return figArray
    default:
        return figArray
    }
}
print(chessKingBlack(fig: .king(color: "black", position: (column: "A", row: 1)), color: "black"))

//===============================================================================================================

//the second exercise
// Создать функцию, которая принимает массив опциональных чисел, а возвращает массив не опциональных чисел




func acceptArrayOptionalNumbers(numbers: [Int?]) -> [Int] {
    
    var notOptionalArray: [Int] = []
    let optionalArray: [Int?] = [1, nil, 2, 3, 4, 5, nil]
    for num in optionalArray {
        if let i = num {
            notOptionalArray.append(i)
        }
    }
    return notOptionalArray
}
acceptArrayOptionalNumbers(numbers: [3])

//===============================================================================================================

//the third exercise

// Создать tuple студент - (name: String, marks: [Int], где name - это имя студента, а marks - массив его оценок. Напишите функцию, которая принимает массив таких
// студентов и замыкание в качестве входных параметров. Функция возвращает массив отфильтрованных студентов. Логика фильтрации происходит в замыкании.

var students: (name: String, marks: [Int]) = ("Stephen", [7, 8, 9, 6, 10, 6, 7, 7])

func sortStudents(arrayForSort: [Int], closure: ([Int]) -> [Int]) -> [Int] {
    return closure(arrayForSort)
}
let sorting: [Int] = sortStudents(arrayForSort: students.marks) { numbers in
    return students.marks.sorted(by: >)
}
print(sorting)


