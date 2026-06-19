if version < 600
        syntax clear
elseif exists("b:current_syntax")
        finish
endif

syn case ignore
syn keyword Register6502 x y a

syn keyword Opcode6502 adc and asl bit brk clc cld cli clv cmp cpx cpy
syn keyword Opcode6502 dec dex dey eor inc inx iny lda ldx ldy lsr nop ora
syn keyword Opcode6502 pha php pla plp rol ror
syn keyword Opcode6502 sbc sec sed sei sta stx sty tax tay tsx txa txs tya
syn keyword ControlFlow6502 bcc bcs beq bmi bne bpl bvc bvs jmp jsr rti rts

syn keyword MerlinPseudoOp equ lup
syn match MerlinPseudoOp "\s\zs=\ze\s"
syn match MerlinPseudoOp "^\s\+\zs--\^\ze$"
syn keyword MerlinStorage asc adr adrl da dci db ddb dfb ds dw fls hex
syn keyword MerlinStorage inv rev str strl
syn keyword MerlinMacro mac endm pmc
syn keyword MerlinMacro ]0 ]1 ]2 ]3 ]4 ]5 ]6 ]7 ]8 ]9
syn match MerlinMacro "^\s\+\zs<<<\ze\s"
syn match MerlinMacro "^\s\+\zs<<<\ze$"
syn match MerlinMacro "^\s\+\zs>>>\ze\s"
syn keyword MerlinConditional do if else fin
syn match MerlinInclude "^\s*put\s.*$"
syn match MerlinInclude "^\s*putbin\s.*$"
syn match MerlinInclude "^\s*use\s.*$"
syn keyword MerlinEnd end
syn keyword MerlinMisc chk dat dum dend err
syn match MerlinLocalLabel "^\]\w\+\>"
syn match MerlinLocalLabel "\s\zs\]\w\+\>"
syn match MerlinLocalLabel "^:\w\+\>"
syn match MerlinLocalLabel "\s\zs:\w\+\>"
syn match MerlinDynamicLabel "\<\w*@\w*\>"
syn keyword MerlinMandatory typ dsk
syn region MerlinString6502 start=+"+ skip=+\\"+ end=+"+
syn region MerlinASCIIString6502 start=+'+ skip=+\\'+ end=+'+

syn match Label6502 "^[A-Za-z0-9]\+\>"
syn match Comment6502 ";.*"
syn match Comment6502 "\*.*"
syn keyword Origin org

syn match HexadecimalNumber6502 "\$\x\+\>"
syn match DecimalNumber6502 "\d\+\>"
syn match BinaryNumber6502 "%[01][01_]*\>"
syn match Immediate6502 "#\$\x\+\>"
syn match Immediate6502 "#\d\+\>"

hi link Label6502 Constant
hi link Comment6502 Comment
hi link Origin Underlined
hi link Opcode6502 Statement
hi link Register6502 Identifier
hi link ControlFlow6502 Conditional

hi link MerlinString6502 String
hi link MerlinASCIIString6502 Special
hi link MerlinPseudoOp Special
hi link MerlinStorage Type
hi link MerlinMacro PreProc
hi link MerlinConditional Conditional
hi link MerlinInclude Include
hi link MerlinEnd Underlined
hi link MerlinMisc Special
hi link MerlinLocalLabel Identifier
hi link MerlinDynamicLabel Identifier
hi link MerlinMandatory Underlined

hi link HexadecimalNumber6502 Number
hi link BinaryNumber6502 Number
hi link DecimalNumber6502 Number
hi link Immediate6502 Special

let b:current_syntax = "6502"
