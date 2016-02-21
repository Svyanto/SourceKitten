// this file is generated by `create_swift_from_generated_interface.py`
#if SWIFT_PACKAGE
import Clang_C
#endif
private let library = toolchainLoader.load("libclang.dylib")
// swiftlint:disable file_length
// swiftlint:disable force_unwrapping
// swiftlint:disable function_parameter_count
// swiftlint:disable missing_docs
// swiftlint:disable trailing_newline
// swiftlint:disable variable_name
// swiftlint:disable valid_docs
// import Darwin
// import Foundation
// import SWXMLHash
// import SourceKittenFramework

/*===-- clang-c/CXString.h - C Index strings  --------------------*- C -*-===*\
|*                                                                            *|
|*                     The LLVM Compiler Infrastructure                       *|
|*                                                                            *|
|* This file is distributed under the University of Illinois Open Source      *|
|* License. See LICENSE.TXT for details.                                      *|
|*                                                                            *|
|*===----------------------------------------------------------------------===*|
|*                                                                            *|
|* This header provides the interface to C Index strings.                     *|
|*                                                                            *|
\*===----------------------------------------------------------------------===*/

/**
* \defgroup CINDEX_STRING String manipulation routines
* \ingroup CINDEX
*
* @{
*/

/**
* \brief A character string.
*
* The \c CXString type is used to return strings from the interface when
* the ownership of that string might differ from one call to the next.
* Use \c clang_getCString() to retrieve the string data and, once finished
* with the string data, call \c clang_disposeString() to free the string.
*/
/*
public struct CXString {
    public var data: UnsafePointer<Void>
    public var private_flags: UInt32
    public init()
    public init(data: UnsafePointer<Void>, private_flags: UInt32)
}
*/

/*
extension CXString : CustomStringConvertible {
    public var description: String { get }

*/

/**
 * \brief Retrieve the character data associated with the given string.
 */
public func clang_getCString(string: CXString) -> UnsafePointer<Int8> {
    return _clang_getCString(string: string)
}
private let _clang_getCString: @convention(c) (string: CXString) -> UnsafePointer<Int8> = library.loadSymbol("clang_getCString")


/**
 * \brief Free the given string.
 */
public func clang_disposeString(string: CXString) {
    return _clang_disposeString(string: string)
}
private let _clang_disposeString: @convention(c) (string: CXString) -> () = library.loadSymbol("clang_disposeString")
