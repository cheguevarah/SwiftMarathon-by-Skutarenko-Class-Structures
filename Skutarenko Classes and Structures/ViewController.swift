//
//  ViewController.swift
//  Skutarenko Classes and Structures
//
//  Created by Sasha on 3/28/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        displayAllStudents(journal)
        
             //:3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
        journal = journal.sorted{$0.mark > $1.mark}
        displayAllStudents(journal)
        
        //:4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
        
        
        journal = journal.sorted{
            $0.lastName == $1.lastName ? $0.firstName > $1.firstName : $0.lastName > $1.lastName
        }
        displayAllStudents(journal)
        
        displayAllStudents(classJournal)
        
        var secondClassJournal = classJournal
        secondClassJournal[0].firstName = "Test"
        secondClassJournal[1].firstName = "Test"
        secondClassJournal[2].firstName = "Test"
        secondClassJournal[3].firstName = "Test"
        
        displayAllStudents(secondClassJournal)
        displayAllStudents(classJournal)
        
        
        displayChessPos(chessArr)
        drawDesk(chessArr)
        
        
        blackKing.moveTo(newX: .eight, newY: .c)
        drawDesk(chessArr)
    }

    
    let separator = "-------------------------------------------------------------------------------------"

        
            //:1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
        
        var st1 = Student(firstName: "Oleg", lastName: "Ivanov", dateOfBirth: (day: 15, month: 01, year: 1992), mark: 5.5)
        var st2 = Student(firstName: "Dima", lastName: "Ivanov", dateOfBirth: (15, 01, 2002), mark: 2.3)
        var st3 = Student(firstName: "Anna", lastName: "Volobueva", dateOfBirth: (11, 06, 1988), mark: 8.0)
        var st4 = Student(firstName: "Sveta", lastName: "Adamenko", dateOfBirth: (20, 12, 2000), mark: 10)
    
    
        
        //:2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
        
    func displayAllStudents (_ reg: [Student]){
        var num = 0
        for i in reg {
            num += 1
            print("\(num) Student \(i.firstName) \(i.lastName) rodilsa \(i.dateOfBirth.day).\(i.dateOfBirth.month).\(i.dateOfBirth.year) imeet bal \(i.mark)")
        }
        print(separator)
    }

        
        
        
        //:6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
        

        var s1 = StudentCL(firstName: "Oleg", lastName: "Ivanov", dateOfBirth: (day: 15, month: 01, year: 1992), mark: 5.5)
        var s2 = StudentCL(firstName: "Dima", lastName: "Ivanov", dateOfBirth: (15, 01, 2002), mark: 2.3)
        var s3 = StudentCL(firstName: "Anna", lastName: "Volobueva", dateOfBirth: (11, 06, 1988), mark: 8.0)
        var s4 = StudentCL(firstName: "Sveta", lastName: "Adamenko", dateOfBirth: (20, 12, 2000), mark: 10)


        func displayAllStudents (_ reg: [StudentCL]){
            var num = 0
            for i in reg {
                num += 1
                print("\(num) Student \(i.firstName) \(i.lastName) rodilsa \(i.dateOfBirth.day).\(i.dateOfBirth.month).\(i.dateOfBirth.year) imeet bal \(i.mark)")
            }
            print(separator)
        }

    

    
    
        
        //:007. Уровень супермен: Выполните задание шахмат из урока по энумам используя структуры либо классы
        //1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
        
        //2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
        
        //3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
        
        
        
        
        let blackCell = "⬛️"
        let whiteCell = "⬜️"
        
        let blackDict = ["King" : "♔", "Queen" : "♕", "Bishop" : "♗",
                         "Knight" : "♘", "Rook" : "♖", "Pawn" : "♙" ]
        
        let whiteDict = ["King" : "♚", "Queen" : "♛", "Bishop" : "♝",
                         "Knight" : "♞", "Rook" : "♜", "Pawn" : "♠︎" ]
        
        
        

        
        let blackKing = ChessFigure(name: .king, color: .black, position: (x: .eight, y: .e))
        let whiteRook1 = ChessFigure(name: .rook, color: .white, position: (x: .eight, y: .a))
        let whiteRook2 = ChessFigure(name: .rook, color: .white, position: (x: .seven, y: .b))
        
        
        
        func displayChessPos(_ chess: [ChessFigure]){
            for i in chess {
                print("\(i.color.rawValue) \(i.name.rawValue)\(i.drawPic) on \(i.position.y.rawValue)\(i.position.x.rawValue)")
            }
        }
        
    
        
        
        
        
        func drawDesk(_ chessPos: [ChessFigure]) {
            let deskX = ["a", "b", "c", "d", "e", "f", "g", "h"]
            let deskY = [1,2,3,4,5,6,7,8]
            
            for num in deskY {
                var line = "\(9 - num)"
                
                counter: for (x, char) in deskX.enumerated() {
                    
                    for chess in chessPos {
                        if chess.position.x.rawValue == num && chess.position.y.rawValue == char {
                            line.append(chess.drawPic)
                            continue counter
                        }
                    }
                    line.append(contentsOf: (x + 1) % 2 == num % 2 ? whiteCell : blackCell)
                }
                print("\(line) \(num)")
            }
            print(" A B C D E F G H")
        }
        
        
    

    }




