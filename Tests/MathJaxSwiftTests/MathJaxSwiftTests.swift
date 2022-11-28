import XCTest
@testable import MathJaxSwift

final class MathJaxSwiftTests: XCTestCase {
  
  let texSVG = """
<svg style="vertical-align: -0.488ex;" xmlns="http://www.w3.org/2000/svg" width="6.934ex" height="2.184ex" role="img" focusable="false" viewBox="0 -750 3065 965.5" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><style>svg a{fill:blue;stroke:blue}[data-mml-node="merror"]>g{fill:red;stroke:red}[data-mml-node="merror"]>rect[data-background]{fill:yellow;stroke:none}[data-frame],[data-line]{stroke-width:70px;fill:none}.mjx-dashed{stroke-dasharray:140}.mjx-dotted{stroke-linecap:round;stroke-dasharray:0,140}use[data-c]{stroke-width:3px}</style><path id="MJX-1-TEX-N-24" d="M162 187Q162 164 146 149T109 133H103V130Q108 115 115 105Q122 92 131 82T150 64T170 52T190 44T206 40T220 37L227 36V313Q190 320 162 335Q116 358 86 404T55 508Q55 567 85 614T165 685Q186 696 225 704H227V750H273V704L286 703Q369 690 413 631Q441 588 444 531Q444 514 443 509Q439 490 425 479T391 468Q368 468 353 483T337 522Q337 546 353 560T390 575L394 576V578Q386 599 372 614T342 637T314 649T288 656L273 658V408L288 405Q329 394 355 376Q396 348 420 300T444 199Q444 130 408 76T313 1Q286 -9 276 -9H273V-56H227V-10H221Q202 -6 193 -4T155 11T108 41T74 94T55 176V182Q55 227 95 238Q103 240 108 240Q129 240 145 226T162 187ZM225 657Q219 657 204 651T169 632T135 594T121 538Q121 512 131 491T156 457T187 435T213 423T227 420V539Q227 657 225 657ZM378 169Q378 230 339 265T274 301Q273 301 273 169V37Q324 50 351 87T378 169Z"></path><path id="MJX-1-TEX-I-1D447" d="M40 437Q21 437 21 445Q21 450 37 501T71 602L88 651Q93 669 101 677H569H659Q691 677 697 676T704 667Q704 661 687 553T668 444Q668 437 649 437Q640 437 637 437T631 442L629 445Q629 451 635 490T641 551Q641 586 628 604T573 629Q568 630 515 631Q469 631 457 630T439 622Q438 621 368 343T298 60Q298 48 386 46Q418 46 427 45T436 36Q436 31 433 22Q429 4 424 1L422 0Q419 0 415 0Q410 0 363 1T228 2Q99 2 64 0H49Q43 6 43 9T45 27Q49 40 55 46H83H94Q174 46 189 55Q190 56 191 56Q196 59 201 76T241 233Q258 301 269 344Q339 619 339 625Q339 630 310 630H279Q212 630 191 624Q146 614 121 583T67 467Q60 445 57 441T43 437H40Z"></path><path id="MJX-1-TEX-I-1D438" d="M492 213Q472 213 472 226Q472 230 477 250T482 285Q482 316 461 323T364 330H312Q311 328 277 192T243 52Q243 48 254 48T334 46Q428 46 458 48T518 61Q567 77 599 117T670 248Q680 270 683 272Q690 274 698 274Q718 274 718 261Q613 7 608 2Q605 0 322 0H133Q31 0 31 11Q31 13 34 25Q38 41 42 43T65 46Q92 46 125 49Q139 52 144 61Q146 66 215 342T285 622Q285 629 281 629Q273 632 228 634H197Q191 640 191 642T193 659Q197 676 203 680H757Q764 676 764 669Q764 664 751 557T737 447Q735 440 717 440H705Q698 445 698 453L701 476Q704 500 704 528Q704 558 697 578T678 609T643 625T596 632T532 634H485Q397 633 392 631Q388 629 386 622Q385 619 355 499T324 377Q347 376 372 376H398Q464 376 489 391T534 472Q538 488 540 490T557 493Q562 493 565 493T570 492T572 491T574 487T577 483L544 351Q511 218 508 216Q505 213 492 213Z"></path><path id="MJX-1-TEX-I-1D44B" d="M42 0H40Q26 0 26 11Q26 15 29 27Q33 41 36 43T55 46Q141 49 190 98Q200 108 306 224T411 342Q302 620 297 625Q288 636 234 637H206Q200 643 200 645T202 664Q206 677 212 683H226Q260 681 347 681Q380 681 408 681T453 682T473 682Q490 682 490 671Q490 670 488 658Q484 643 481 640T465 637Q434 634 411 620L488 426L541 485Q646 598 646 610Q646 628 622 635Q617 635 609 637Q594 637 594 648Q594 650 596 664Q600 677 606 683H618Q619 683 643 683T697 681T738 680Q828 680 837 683H845Q852 676 852 672Q850 647 840 637H824Q790 636 763 628T722 611T698 593L687 584Q687 585 592 480L505 384Q505 383 536 304T601 142T638 56Q648 47 699 46Q734 46 734 37Q734 35 732 23Q728 7 725 4T711 1Q708 1 678 1T589 2Q528 2 496 2T461 1Q444 1 444 10Q444 11 446 25Q448 35 450 39T455 44T464 46T480 47T506 54Q523 62 523 64Q522 64 476 181L429 299Q241 95 236 84Q232 76 232 72Q232 53 261 47Q262 47 267 47T273 46Q276 46 277 46T280 45T283 42T284 35Q284 26 282 19Q279 6 276 4T261 1Q258 1 243 1T201 2T142 2Q64 2 42 0Z"></path></defs><g stroke="currentColor" fill="currentColor" stroke-width="0" transform="scale(1,-1)"><g data-mml-node="math"><g data-mml-node="TeXAtom" data-mjx-texclass="ORD"><g data-mml-node="mo"><use data-c="24" xlink:href="#MJX-1-TEX-N-24"></use></g></g><g data-mml-node="mi" transform="translate(500,0)"><use data-c="1D447" xlink:href="#MJX-1-TEX-I-1D447"></use></g><g data-mml-node="mspace" transform="translate(1204,0)"></g><g data-mml-node="mpadded" transform="translate(1064,0)"><g transform="translate(0,-215.5)"><g data-mml-node="TeXAtom" data-mjx-texclass="ORD"><g data-mml-node="mi"><use data-c="1D438" xlink:href="#MJX-1-TEX-I-1D438"></use></g></g></g></g><g data-mml-node="mspace" transform="translate(1828,0)"></g><g data-mml-node="mi" transform="translate(1713,0)"><use data-c="1D44B" xlink:href="#MJX-1-TEX-I-1D44B"></use></g><g data-mml-node="TeXAtom" data-mjx-texclass="ORD" transform="translate(2565,0)"></g><g data-mml-node="TeXAtom" data-mjx-texclass="ORD" transform="translate(2565,0)"><g data-mml-node="mo"><use data-c="24" xlink:href="#MJX-1-TEX-N-24"></use></g></g></g></g></svg>
"""
  
  func testResource() throws {
    // Test that the URL exists
    let url = MathJax.base
    XCTAssertNotNil(url)
    
    // Get a URL
    let texURL = url?.appending(components: "es5", "tex-chtml.js")
    XCTAssertNotNil(texURL)
    
    // Load the resource
    let data = try Data(contentsOf: texURL!)
    XCTAssertNoThrow(data)
  }
  
  func testBundle() throws {
    let mathjax = try MathJax()
    XCTAssertNoThrow(mathjax)
  }
  
  func testPackage() throws {
    // Test that we can get the package metadata
    let package = try MathJax.package()
    XCTAssertNoThrow(package)
    
    // The package name should not change, so let make sure that it equals
    // mathjax.
    XCTAssertEqual(package.name, "mathjax-full")
    
    // In an attempt to keep this version agnostic, lets only check to make sure
    // that we have something non-empty.
    XCTAssertFalse(package.version?.isEmpty ?? true)
  }
  
  func testTex2SVG() async throws {
    let output = try await MathJax().tex2svg("$\\TeX{}$")
    XCTAssertNoThrow(output)
    XCTAssertEqual(output, texSVG)
  }
  
}
