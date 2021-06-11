.class public interface abstract Lorg/ow2/asmdex/Opcodes;
.super Ljava/lang/Object;
.source "Opcodes.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_UNKNOWN:I = 0x40000

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final ASM4:I = 0x40000

.field public static final DBG_ADVANCE_LINE:I = 0x2

.field public static final DBG_ADVANCE_PC:I = 0x1

.field public static final DBG_END_LOCAL:I = 0x5

.field public static final DBG_END_SEQUENCE:I = 0x0

.field public static final DBG_FIRST_SPECIAL:I = 0xa

.field public static final DBG_LINE_BASE:I = -0x4

.field public static final DBG_LINE_RANGE:I = 0xf

.field public static final DBG_RESTART_LOCAL:I = 0x6

.field public static final DBG_SET_EPILOGUE_BEGIN:I = 0x8

.field public static final DBG_SET_FILE:I = 0x9

.field public static final DBG_SET_PROLOGUE_END:I = 0x7

.field public static final DBG_START_LOCAL:I = 0x3

.field public static final DBG_START_LOCAL_EXTENDED:I = 0x4

.field public static final INSN_ADD_DOUBLE:I = 0xab

.field public static final INSN_ADD_DOUBLE_2ADDR:I = 0xcb

.field public static final INSN_ADD_FLOAT:I = 0xa6

.field public static final INSN_ADD_FLOAT_2ADDR:I = 0xc6

.field public static final INSN_ADD_INT:I = 0x90

.field public static final INSN_ADD_INT_2ADDR:I = 0xb0

.field public static final INSN_ADD_INT_LIT16:I = 0xd0

.field public static final INSN_ADD_INT_LIT8:I = 0xd8

.field public static final INSN_ADD_LONG:I = 0x9b

.field public static final INSN_ADD_LONG_2ADDR:I = 0xbb

.field public static final INSN_AGET:I = 0x44

.field public static final INSN_AGET_BOOLEAN:I = 0x47

.field public static final INSN_AGET_BYTE:I = 0x48

.field public static final INSN_AGET_CHAR:I = 0x49

.field public static final INSN_AGET_OBJECT:I = 0x46

.field public static final INSN_AGET_SHORT:I = 0x4a

.field public static final INSN_AGET_WIDE:I = 0x45

.field public static final INSN_AND_INT:I = 0x95

.field public static final INSN_AND_INT_2ADDR:I = 0xb5

.field public static final INSN_AND_INT_LIT16:I = 0xd5

.field public static final INSN_AND_INT_LIT8:I = 0xdd

.field public static final INSN_AND_LONG:I = 0xa0

.field public static final INSN_AND_LONG_2ADDR:I = 0xc0

.field public static final INSN_APUT:I = 0x4b

.field public static final INSN_APUT_BOOLEAN:I = 0x4e

.field public static final INSN_APUT_BYTE:I = 0x4f

.field public static final INSN_APUT_CHAR:I = 0x50

.field public static final INSN_APUT_OBJECT:I = 0x4d

.field public static final INSN_APUT_SHORT:I = 0x51

.field public static final INSN_APUT_WIDE:I = 0x4c

.field public static final INSN_ARRAY_LENGTH:I = 0x21

.field public static final INSN_CHECK_CAST:I = 0x1f

.field public static final INSN_CMPG_DOUBLE:I = 0x30

.field public static final INSN_CMPG_FLOAT:I = 0x2e

.field public static final INSN_CMPL_DOUBLE:I = 0x2f

.field public static final INSN_CMPL_FLOAT:I = 0x2d

.field public static final INSN_CMP_LONG:I = 0x31

.field public static final INSN_CONST:I = 0x14

.field public static final INSN_CONST_16:I = 0x13

.field public static final INSN_CONST_4:I = 0x12

.field public static final INSN_CONST_CLASS:I = 0x1c

.field public static final INSN_CONST_HIGH16:I = 0x15

.field public static final INSN_CONST_STRING:I = 0x1a

.field public static final INSN_CONST_STRING_JUMBO:I = 0x1b

.field public static final INSN_CONST_WIDE:I = 0x18

.field public static final INSN_CONST_WIDE_16:I = 0x16

.field public static final INSN_CONST_WIDE_32:I = 0x17

.field public static final INSN_CONST_WIDE_HIGH16:I = 0x19

.field public static final INSN_DIV_DOUBLE:I = 0xae

.field public static final INSN_DIV_DOUBLE_2ADDR:I = 0xce

.field public static final INSN_DIV_FLOAT:I = 0xa9

.field public static final INSN_DIV_FLOAT_2ADDR:I = 0xc9

.field public static final INSN_DIV_INT:I = 0x93

.field public static final INSN_DIV_INT_2ADDR:I = 0xb3

.field public static final INSN_DIV_INT_LIT16:I = 0xd3

.field public static final INSN_DIV_INT_LIT8:I = 0xdb

.field public static final INSN_DIV_LONG:I = 0x9e

.field public static final INSN_DIV_LONG_2ADDR:I = 0xbe

.field public static final INSN_DOUBLE_TO_FLOAT:I = 0x8c

.field public static final INSN_DOUBLE_TO_INT:I = 0x8a

.field public static final INSN_DOUBLE_TO_LONG:I = 0x8b

.field public static final INSN_FILLED_NEW_ARRAY:I = 0x24

.field public static final INSN_FILLED_NEW_ARRAY_RANGE:I = 0x25

.field public static final INSN_FILL_ARRAY_DATA:I = 0x26

.field public static final INSN_FLOAT_TO_DOUBLE:I = 0x89

.field public static final INSN_FLOAT_TO_INT:I = 0x87

.field public static final INSN_FLOAT_TO_LONG:I = 0x88

.field public static final INSN_GOTO:I = 0x28

.field public static final INSN_GOTO_16:I = 0x29

.field public static final INSN_GOTO_32:I = 0x2a

.field public static final INSN_IF_EQ:I = 0x32

.field public static final INSN_IF_EQZ:I = 0x38

.field public static final INSN_IF_GE:I = 0x35

.field public static final INSN_IF_GEZ:I = 0x3b

.field public static final INSN_IF_GT:I = 0x36

.field public static final INSN_IF_GTZ:I = 0x3c

.field public static final INSN_IF_LE:I = 0x37

.field public static final INSN_IF_LEZ:I = 0x3d

.field public static final INSN_IF_LT:I = 0x34

.field public static final INSN_IF_LTZ:I = 0x3a

.field public static final INSN_IF_NE:I = 0x33

.field public static final INSN_IF_NEZ:I = 0x39

.field public static final INSN_IGET:I = 0x52

.field public static final INSN_IGET_BOOLEAN:I = 0x55

.field public static final INSN_IGET_BYTE:I = 0x56

.field public static final INSN_IGET_CHAR:I = 0x57

.field public static final INSN_IGET_OBJECT:I = 0x54

.field public static final INSN_IGET_SHORT:I = 0x58

.field public static final INSN_IGET_WIDE:I = 0x53

.field public static final INSN_INSTANCE_OF:I = 0x20

.field public static final INSN_INT_TO_BYTE:I = 0x8d

.field public static final INSN_INT_TO_CHAR:I = 0x8e

.field public static final INSN_INT_TO_DOUBLE:I = 0x83

.field public static final INSN_INT_TO_FLOAT:I = 0x82

.field public static final INSN_INT_TO_LONG:I = 0x81

.field public static final INSN_INT_TO_SHORT:I = 0x8f

.field public static final INSN_INVOKE_DIRECT:I = 0x70

.field public static final INSN_INVOKE_DIRECT_RANGE:I = 0x76

.field public static final INSN_INVOKE_INTERFACE:I = 0x72

.field public static final INSN_INVOKE_INTERFACE_RANGE:I = 0x78

.field public static final INSN_INVOKE_STATIC:I = 0x71

.field public static final INSN_INVOKE_STATIC_RANGE:I = 0x77

.field public static final INSN_INVOKE_SUPER:I = 0x6f

.field public static final INSN_INVOKE_SUPER_RANGE:I = 0x75

.field public static final INSN_INVOKE_VIRTUAL:I = 0x6e

.field public static final INSN_INVOKE_VIRTUAL_RANGE:I = 0x74

.field public static final INSN_IPUT:I = 0x59

.field public static final INSN_IPUT_BOOLEAN:I = 0x5c

.field public static final INSN_IPUT_BYTE:I = 0x5d

.field public static final INSN_IPUT_CHAR:I = 0x5e

.field public static final INSN_IPUT_OBJECT:I = 0x5b

.field public static final INSN_IPUT_SHORT:I = 0x5f

.field public static final INSN_IPUT_WIDE:I = 0x5a

.field public static final INSN_LONG_TO_DOUBLE:I = 0x86

.field public static final INSN_LONG_TO_FLOAT:I = 0x85

.field public static final INSN_LONG_TO_INT:I = 0x84

.field public static final INSN_MONITOR_ENTER:I = 0x1d

.field public static final INSN_MONITOR_EXIT:I = 0x1e

.field public static final INSN_MOVE:I = 0x1

.field public static final INSN_MOVE_16:I = 0x3

.field public static final INSN_MOVE_EXCEPTION:I = 0xd

.field public static final INSN_MOVE_FROM16:I = 0x2

.field public static final INSN_MOVE_OBJECT:I = 0x7

.field public static final INSN_MOVE_OBJECT_16:I = 0x9

.field public static final INSN_MOVE_OBJECT_FROM16:I = 0x8

.field public static final INSN_MOVE_RESULT:I = 0xa

.field public static final INSN_MOVE_RESULT_OBJECT:I = 0xc

.field public static final INSN_MOVE_RESULT_WIDE:I = 0xb

.field public static final INSN_MOVE_WIDE:I = 0x4

.field public static final INSN_MOVE_WIDE_16:I = 0x6

.field public static final INSN_MOVE_WIDE_FROM16:I = 0x5

.field public static final INSN_MUL_DOUBLE:I = 0xad

.field public static final INSN_MUL_DOUBLE_2ADDR:I = 0xcd

.field public static final INSN_MUL_FLOAT:I = 0xa8

.field public static final INSN_MUL_FLOAT_2ADDR:I = 0xc8

.field public static final INSN_MUL_INT:I = 0x92

.field public static final INSN_MUL_INT_2ADDR:I = 0xb2

.field public static final INSN_MUL_INT_LIT16:I = 0xd2

.field public static final INSN_MUL_INT_LIT8:I = 0xda

.field public static final INSN_MUL_LONG:I = 0x9d

.field public static final INSN_MUL_LONG_2ADDR:I = 0xbd

.field public static final INSN_NEG_DOUBLE:I = 0x80

.field public static final INSN_NEG_FLOAT:I = 0x7f

.field public static final INSN_NEG_INT:I = 0x7b

.field public static final INSN_NEG_LONG:I = 0x7d

.field public static final INSN_NEW_ARRAY:I = 0x23

.field public static final INSN_NEW_INSTANCE:I = 0x22

.field public static final INSN_NOP:I = 0x0

.field public static final INSN_NOT_INT:I = 0x7c

.field public static final INSN_NOT_LONG:I = 0x7e

.field public static final INSN_OR_INT:I = 0x96

.field public static final INSN_OR_INT_2ADDR:I = 0xb6

.field public static final INSN_OR_INT_LIT16:I = 0xd6

.field public static final INSN_OR_INT_LIT8:I = 0xde

.field public static final INSN_OR_LONG:I = 0xa1

.field public static final INSN_OR_LONG_2ADDR:I = 0xc1

.field public static final INSN_PACKED_SWITCH_INSN:I = 0x2b

.field public static final INSN_REM_DOUBLE:I = 0xaf

.field public static final INSN_REM_DOUBLE_2ADDR:I = 0xcf

.field public static final INSN_REM_FLOAT:I = 0xaa

.field public static final INSN_REM_FLOAT_2ADDR:I = 0xca

.field public static final INSN_REM_INT:I = 0x94

.field public static final INSN_REM_INT_2ADDR:I = 0xb4

.field public static final INSN_REM_INT_LIT16:I = 0xd4

.field public static final INSN_REM_INT_LIT8:I = 0xdc

.field public static final INSN_REM_LONG:I = 0x9f

.field public static final INSN_REM_LONG_2ADDR:I = 0xbf

.field public static final INSN_RETURN:I = 0xf

.field public static final INSN_RETURN_OBJECT:I = 0x11

.field public static final INSN_RETURN_VOID:I = 0xe

.field public static final INSN_RETURN_WIDE:I = 0x10

.field public static final INSN_RSUB_INT_LIT16:I = 0xd1

.field public static final INSN_RSUB_INT_LIT8:I = 0xd9

.field public static final INSN_SGET:I = 0x60

.field public static final INSN_SGET_BOOLEAN:I = 0x63

.field public static final INSN_SGET_BYTE:I = 0x64

.field public static final INSN_SGET_CHAR:I = 0x65

.field public static final INSN_SGET_OBJECT:I = 0x62

.field public static final INSN_SGET_SHORT:I = 0x66

.field public static final INSN_SGET_WIDE:I = 0x61

.field public static final INSN_SHL_INT:I = 0x98

.field public static final INSN_SHL_INT_2ADDR:I = 0xb8

.field public static final INSN_SHL_INT_LIT8:I = 0xe0

.field public static final INSN_SHL_LONG:I = 0xa3

.field public static final INSN_SHL_LONG_2ADDR:I = 0xc3

.field public static final INSN_SHR_INT:I = 0x99

.field public static final INSN_SHR_INT_2ADDR:I = 0xb9

.field public static final INSN_SHR_INT_LIT8:I = 0xe1

.field public static final INSN_SHR_LONG:I = 0xa4

.field public static final INSN_SHR_LONG_2ADDR:I = 0xc4

.field public static final INSN_SPARSE_SWITCH_INSN:I = 0x2c

.field public static final INSN_SPUT:I = 0x67

.field public static final INSN_SPUT_BOOLEAN:I = 0x6a

.field public static final INSN_SPUT_BYTE:I = 0x6b

.field public static final INSN_SPUT_CHAR:I = 0x6c

.field public static final INSN_SPUT_OBJECT:I = 0x69

.field public static final INSN_SPUT_SHORT:I = 0x6d

.field public static final INSN_SPUT_WIDE:I = 0x68

.field public static final INSN_SUB_DOUBLE:I = 0xac

.field public static final INSN_SUB_DOUBLE_2ADDR:I = 0xcc

.field public static final INSN_SUB_FLOAT:I = 0xa7

.field public static final INSN_SUB_FLOAT_2ADDR:I = 0xc7

.field public static final INSN_SUB_INT:I = 0x91

.field public static final INSN_SUB_INT_2ADDR:I = 0xb1

.field public static final INSN_SUB_LONG:I = 0x9c

.field public static final INSN_SUB_LONG_2ADDR:I = 0xbc

.field public static final INSN_THROW:I = 0x27

.field public static final INSN_USHR_INT:I = 0x9a

.field public static final INSN_USHR_INT_2ADDR:I = 0xba

.field public static final INSN_USHR_INT_LIT8:I = 0xe2

.field public static final INSN_USHR_LONG:I = 0xa5

.field public static final INSN_USHR_LONG_2ADDR:I = 0xc5

.field public static final INSN_XOR_INT:I = 0x97

.field public static final INSN_XOR_INT_2ADDR:I = 0xb7

.field public static final INSN_XOR_INT_LIT16:I = 0xd7

.field public static final INSN_XOR_INT_LIT8:I = 0xdf

.field public static final INSN_XOR_LONG:I = 0xa2

.field public static final INSN_XOR_LONG_2ADDR:I = 0xc2

.field public static final NO_INDEX_SIGNED:I = -0x1

.field public static final TYPE_ANNOTATIONS_DIRECTORY_ITEM:I = 0x2006

.field public static final TYPE_ANNOTATION_ITEM:I = 0x2004

.field public static final TYPE_ANNOTATION_SET_ITEM:I = 0x1003

.field public static final TYPE_ANNOTATION_SET_REF_LIST:I = 0x1002

.field public static final TYPE_CLASS_DATA_ITEM:I = 0x2000

.field public static final TYPE_CLASS_DEF_ITEM:I = 0x6

.field public static final TYPE_CODE_ITEM:I = 0x2001

.field public static final TYPE_DEBUG_INFO_ITEM:I = 0x2003

.field public static final TYPE_ENCODED_ARRAY_ITEM:I = 0x2005

.field public static final TYPE_FIELD_ID_ITEM:I = 0x4

.field public static final TYPE_HEADER_ITEM:I = 0x0

.field public static final TYPE_MAP_LIST:I = 0x1000

.field public static final TYPE_METHOD_ID_ITEM:I = 0x5

.field public static final TYPE_PROTO_ID_ITEM:I = 0x3

.field public static final TYPE_STRING_DATA_ITEM:I = 0x2002

.field public static final TYPE_STRING_ID_ITEM:I = 0x1

.field public static final TYPE_TYPE_ID_ITEM:I = 0x2

.field public static final TYPE_TYPE_LIST:I = 0x1001

.field public static final VALUE_ANNOTATION:I = 0x1d

.field public static final VALUE_ARRAY:I = 0x1c

.field public static final VALUE_BOOLEAN:I = 0x1f

.field public static final VALUE_BYTE:I = 0x0

.field public static final VALUE_CHAR:I = 0x3

.field public static final VALUE_DOUBLE:I = 0x11

.field public static final VALUE_ENUM:I = 0x1b

.field public static final VALUE_FIELD:I = 0x19

.field public static final VALUE_FLOAT:I = 0x10

.field public static final VALUE_INT:I = 0x4

.field public static final VALUE_LONG:I = 0x6

.field public static final VALUE_METHOD:I = 0x1a

.field public static final VALUE_NULL:I = 0x1e

.field public static final VALUE_SHORT:I = 0x2

.field public static final VALUE_STRING:I = 0x17

.field public static final VALUE_TYPE:I = 0x18

.field public static final VISIBILITY_BUILD:I = 0x0

.field public static final VISIBILITY_RUNTIME:I = 0x1

.field public static final VISIBILITY_SYSTEM:I = 0x2
